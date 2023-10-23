using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;

/*

c = coded
x = checked / done

[x] Parse
 [x] Detect different groups
 [x] Detect strings
  [x] Make escaping characters possible
[ ] Donutify input
 [x] Generate donut template
 [ ] Map input onto template without splitting groups
[ ] Add arguments
 [ ] Defineable groups
[ ] Add error messages where applicable

Errors marked with `(I)` are internal. Please open an issue and describe what exactly you did to cause the error.

*/

namespace oneline2donut;

public class Program{
    public static Token[]	tokens;
    public static int		totalCharCount;
    public static string[]	donutTemplate;
    public static string	outp;

    public static int Main(string[] args){
	// TODO: add error for too few arguments

	string baseCode = File.ReadAllText(args[0]);
	// TODO: add error for base code not being oneline or being empty

	// get tokens and total character count
	totalCharCount = baseCode.Length;
	tokens = Token.Parse(baseCode);

	// get donut template
_GenerateDonut:
	donutTemplate = GenerateDonut();
	// throw error on non-existant donutTemplate
	if(donutTemplate.Length < 1){
	    Console.WriteLine("Error 3 (I): donutTemplate non-existant");
	    throw new Exception("Error 3 (I): donutTemplate non-existant");
	}

	// map tokens onto donut
	int currentChar = 0, currentRow = 0, currentToken = 0, dotsLeft = donutTemplate[0].Count(c => c == '.');
	outp = "";
	while(currentToken < tokens.Length){
	    // check if next token fits
	    if(tokens[currentToken].length > dotsLeft || currentChar >= donutTemplate[currentRow].Length){
		currentRow++;
		// ~~throw error on donut template too small~~
		// increase totalCharCount and restart on donutTemplate too small
		if(currentRow >= donutTemplate.Length){
		  /*Console.WriteLine("Error 4 (I): donutTemplate too small");
		    throw new Exception("Error 4 (I): donutTemplate too small");*/
		    int n = 0;
		    for(int i = currentToken; i < tokens.Length; i++){
			n += tokens[currentToken].length;
		    }
		    totalCharCount += n;
		    goto _GenerateDonut;
		}
		currentChar = 0;
		outp += '\n';
		dotsLeft = donutTemplate[currentRow].Count(c => c == '.');
		continue;
	    }
	    // check if next character is dot and continue if not
	    if(donutTemplate[currentRow][currentChar] != '.'){
		outp += donutTemplate[currentRow][currentChar];
		currentChar++;
		continue;
	    }
	    // append next token
	    outp += tokens[currentToken].content;
	    currentChar += tokens[currentToken].length;
	    dotsLeft -= tokens[currentToken].length;
	    currentToken++;
	}

	Console.WriteLine(outp);

	return 0;
    }

    private static string[] GenerateDonut(){
	int c;
	string[] outp;

	do{
	    // draw donut
	    c = 0;
	    int outsideR = (int)(Math.Sqrt((2 * totalCharCount) / (0.8775 * Math.PI))) + 1,
		insideR  = (int)(outsideR * 0.35),
		center  = outsideR,
		centery = outsideR / 2;
	    outp = new string[outsideR];
	    for(int y = 0; y < outsideR; y++){
		outp[y] = "";
		for(int x = 0; x < outsideR * 2 + 1; x++){
		    if(x != outsideR * 2 && Math.Sqrt((x - center) * (x - center) + (y - centery) * (y - centery) * 4) < outsideR && Math.Sqrt((x - center) * (x - center) + (y - centery) * (y - centery) * 4) >= insideR) outp[y] += '.';
		    else outp[y] += ' ';
		    c++;
		}
	    }
	    totalCharCount += 50;
	} while(c < totalCharCount); //Make sure enough characters exist

	totalCharCount -= 50;
	return outp;
    }
}

public struct Token{
    public TokenGroup	tokenGroup;
    public string	content;
    public int		length;

    public Token(TokenGroup _tokenGroup, string _content){
	tokenGroup = _tokenGroup;
	content = _content.Replace('\t', ' ');
	length = _content.Length;
    }
    public string ToString(bool displayTokenGroup = false){
	string outp = content;
	if(displayTokenGroup){
	    outp = "{\"tokenGroup\": \"" + tokenGroup.ToString() + "\", \"content\": \"" + outp + "\"}";
	}
	return outp;
    }

    // checks top to bottom, index must be the same as value of associated TokenGroup
    public static (string s, bool splittable)[] tokenGroupDefinitions = new (string s, bool splittable)[] {
	(" \t\n", false),
	("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_", false),
	("()[]{}<>", true),
	(".,;+-*/^&|!~%", true),
    };
    // checks top to bottom
    public static string[] stringStarters = new string[] {
	"'''",
	"\"",
	"'",
	"`",
    };

    // returns first token in str
    public static Token FindFirstToken(ref string str){
	// throw error on empty string
	if(str.Length == 0){
	    Console.WriteLine("Error 2 (I): String in parser is empty");
	    throw new Exception("Error 2 (I): String in parser is empty");
	}

	// run string test
	for(int i = 0; i < stringStarters.Length; i++){
	    if(str.StartsWith(stringStarters[i])){
		int index = str.IndexOf(stringStarters[i]);

		// avoid escaped characters (hopefully)
		while(index < 1 || str[index - 1] == '\\'){
		    if(index > 0){
			int ind = index - 1;
			bool isOdd = false;
			while(ind > -1 && str[ind--] == '\\') isOdd = !isOdd;
			if(!isOdd) goto _LoopExit;
		    }
		    index = str.IndexOf(stringStarters[i], index + 1);
		}
_LoopExit:

		// throw error on unclosed string
		if(index == -1){
		    Console.WriteLine("Error 1: Found unclosed string");
		    throw new Exception("Error 1: Found unclosed string");
		}

		// return string
		string stringString = str.Substring(0, index + stringStarters[i].Length);
		str = str.Remove(0, stringString.Length);
		return new Token(TokenGroup.String, stringString);
	    }
	}

	// run non-misc group tests
	for(int i = 0; i < tokenGroupDefinitions.Length; i++){
	    if(tokenGroupDefinitions[i].s.Contains(str[0])){
		string tokenGroupToken = str[0].ToString();	// initial value is for splittable case

		// find last instance of unsplittable tokenGroup if tokenGroup is unsplittable
		if(!tokenGroupDefinitions[i].splittable){
		    int j = 0;
		    while(j < str.Length && tokenGroupDefinitions[i].s.Contains(str[j++])) ;
		    tokenGroupToken = str.Substring(0, j);
		    if(tokenGroupToken.Length > 1) tokenGroupToken = tokenGroupToken.Remove(tokenGroupToken.Length - 1);
		}

		// return token
		str = str.Remove(0, tokenGroupToken.Length);
		return new Token((TokenGroup)i, tokenGroupToken);
	    }
	}

	// return misc token if tokens didnt match
	string miscToken = str[0].ToString();
	str = str.Remove(0, 1);
	return new Token(TokenGroup.Misc, miscToken);
    }
    public static Token[] Parse(string str){
	List<Token> tokens = new List<Token>();
	while(str.Length > 0){
	    tokens.Add(FindFirstToken(ref str));
	}
	return tokens.ToArray();
    }
}

public enum TokenGroup : byte{
    Space		= 0,
    Alphanumeric	= 1,
    Brackets		= 2,
    DotsNStuff		= 3,
    Group_4		= 4,
    Group_5		= 5,
    Group_6		= 6,
    Group_7		= 7,
    Group_8		= 8,
    Group_9		= 9,
    Group_10		= 10,
    Group_11		= 11,
    Group_12		= 12,
    Group_13		= 13,
    String		= 254,	// assumed to be unsplittable
    Misc		= 255,	// assumed to be splittable
}

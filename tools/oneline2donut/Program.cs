using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;

/*

c = coded
r = reworking
x = checked / done

[r] Parse
 [x] Convert to primitives
 [ ] Merge primitives into tokens
 [ ] Detect strings
  [ ] Make escaping characters possible
[x] Donutify input
 [x] Generate donut template
 [x] Map input onto template without splitting groups
[ ] Add arguments
 [ ] Defineable groups
[ ] Add error messages where applicable

Errors marked with `(I)` are internal. Please open an issue and describe what exactly you did to cause the error.

*/

namespace oneline2donut;

public class Program{
    public static Primitive[]	primitives;
    public static int		totalCharCount;
    public static string[]	donutTemplate;
    public static string	outp;

    public static int Main(string[] args){
	// TODO: add error for too few arguments

	string baseCode = File.ReadAllText(args[0]);

	primitives = Primitive.FindPrimitives(baseCode);
	Console.WriteLine(baseCode);
	foreach(Primitive p in primitives) Console.WriteLine(p.ToString(true));

	/*
	// filter baseCode
	if(baseCode.Contains('\n')) baseCode = baseCode.Replace("\n", " ");
	baseCode = baseCode.Replace('\t', ' ');

	// get tokens and total character count
	totalCharCount = baseCode.Length;
	tokens = Token.Parse(baseCode);

	// get donut template
_generate_donut:
	donutTemplate = GenerateDonut();
	// throw error on non-existant donutTemplate
	if(donutTemplate.Length < 1){
	    Console.WriteLine("Error 3 (I): donutTemplate non-existant");
	    throw new Exception("Error 3 (I): donutTemplate non-existant");
	}

	// map tokens onto donut
	int currentChar = 0, currentRow = 0, currentToken = 0, startToken, dotsLeft;
	outp = "";
	while(currentToken < tokens.Length){
	    // test if linebreak is needed
	    if(currentChar >= donutTemplate[currentRow].Length){
		currentRow++;
		currentChar = 0;
		outp += '\n';
		// retry with bigger donut on donutTemplate being too small
		if(currentRow >= donutTemplate.Length){
		    totalCharCount += 100;
		    goto _generate_donut;
		}
	    }

	    // print if currentChar is not '.'
	    if(donutTemplate[currentRow][currentChar] != '.'){
		outp += donutTemplate[currentRow][currentChar];
		currentChar++;
		continue;
	    }

	    //get fitable tokens
	    dotsLeft = CountContinuousDots(donutTemplate[currentRow], currentChar);
	    int tokensLength = tokens[currentToken].length;
	    startToken = currentToken;
	    do{
		currentToken++;
		if(currentToken >= tokens.Length){
		    break;
		}
		tokensLength += tokens[currentToken].length;
	    } while(tokensLength <= dotsLeft && tokens[currentToken].content != "</text>");
	    if(currentToken < tokens.Length) tokensLength -= tokens[currentToken].length;

	    // get extra spaces and spacesLeft/tokensLength
	    int spacesLeft = dotsLeft - tokensLength + tokens[currentToken - 1].length;
	    double sL_tL = spacesLeft / (double)tokensLength;	// explicit double division, i hate it
	    double currentSpacesAmount = 0;
	    
	    // print tokens with spaces
	    for(int i = startToken; i < currentToken; i++){
		currentChar += tokens[i].length;
		outp += tokens[i].content;
		currentSpacesAmount += sL_tL;
		while(currentSpacesAmount >= 1 && i < currentToken - 1){
		    currentChar++;
		    outp += ' ';
		    currentSpacesAmount--;
		}
	    }
	}
	// print rest of donut
	while(currentRow < donutTemplate.Length){
	    outp += donutTemplate[currentRow][currentChar];
	    currentChar++;
	    if(currentChar >= donutTemplate[currentRow].Length){
		currentRow++;
		currentChar = 0;
		outp += '\n';
	    }
	}

	Console.WriteLine(outp);
	*/

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
	} while(c < totalCharCount); // make sure enough characters exist

	totalCharCount -= 50;
	return outp;
    }
    private static int CountContinuousDots(string str, int startIndex){
	int c = 0;
	for(int i = startIndex; i < str.Length; i++){
	    if(str[i] == '.') c++;
	    else if(c != 0) return c;
	}
	return c;
    }
}

// primitives are single letters (or rarely multiple letters) that serve a specific function
// different kinds of primitives are assumed to be combinable in specific ways to create tokens
public struct Primitive{
    public PrimitiveGroup	primitiveGroup;
    public string		content;
    public string ToString(bool showGroup = false){
	string outp = showGroup ? "{ \"group\": \"" + primitiveGroup.ToString() + "\", \"content\": \"" + content + "\" }" : content;
	return outp;
    }
    public Primitive(PrimitiveGroup _primitiveGroup, string _content){
	primitiveGroup = _primitiveGroup;
	content = _content;
    }

    // all strings which match a specific primitive group
    // has to be in same order as PrimitiveGroup enum and in order of first to be checked to last
    // if nothing matches PrimitiveGroup.Other is given
    public static string[][] primitiveGroupMatches = new string[][]{
	new string[] {" ", "\t", "\n"},
	new string[] {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"},
	new string[] {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"},
	new string[] {"."},
	new string[] {";", ","},
	new string[] {"(", ")", "[", "]", "{", "}"},
	new string[] {"'''", "\"", "'"},
	new string[] {"\\"},
	new string[] {"_"},
    };
    // finds first Primitive in str and removes is from str
    public static Primitive FindFirstPrimitive(ref string str){
	// setup parameters for no matches
	PrimitiveGroup pg = PrimitiveGroup.other;
	string c = str[0].ToString();;

	// find matching PrimitiveGroup
	for(int i = 0; i < primitiveGroupMatches.Length; i++){
	    for(int j = 0; j < primitiveGroupMatches[i].Length; j++){
		// if matches, set parameters and return
		if(str.StartsWith(primitiveGroupMatches[i][j])){
		    pg = (PrimitiveGroup)i;
		    c = primitiveGroupMatches[i][j];
		    goto _find_first_primitive_return;
		}
	    }
	}

_find_first_primitive_return:
	// remove first Primitive from string and return
	str = str.Remove(0, c.Length);
	return new Primitive(pg, c);
    }
    // finds and returns a list of all Primitives in str
    public static Primitive[] FindPrimitives(string str){
	List<Primitive> outp = new List<Primitive>();
	while(str.Length > 0) outp.Add(FindFirstPrimitive(ref str));
	return outp.ToArray();
    }
}
// list of all groups a Primitive can be a part of
public enum PrimitiveGroup : byte{
    space		= 0,   // " ", "\t", "\n"
    letter		= 1,   // alphabetic characters
    digit		= 2,   // numeric characters
    period		= 3,   // "."
    discriminator	= 4,   // ";", ","
    brackets		= 5,   // normal, square and curly brackets
    stringStarters	= 6,   // "'''", "\"", "'", other common string starters
    escape		= 7,   // "\\", other common escape characters
    underscore		= 8,   // "_"
    other		= 255, // characters not assigned to another group
}

// list of all groups a Token can be a part of
// superset of PrimitiveGroup
public enum TokenGroup : byte{
    space		= 0,   // " ", "\t", "\n"
    letter		= 1,   // alphabetic characters
    digit		= 2,   // numeric characters
    period		= 3,   // "."
    discriminator	= 4,   // ";", ","
    brackets		= 5,   // normal, square and curly brackets
    stringStarters	= 6,   // "'''", "\"", "'", other common string starters
    escape		= 7,   // "\\", other common escape characters
    underscore		= 8,   // "_"
    string_		= 128, // strings seperated by stringStarters				(stringStarters + [whatever]? + stringStarters)
			       // (with underscore at end so it isnt the same as the keyword)
    number		= 129, // integer or floating point number				(digits + period? + digits? | underscore)
    word		= 130, // keyword or variable/function name				(letters + digits? + underscore?)
    other		= 255, // characters not assigned to another group
}

/*
public struct Token{
    public TokenGroup	tokenGroup;
    public string	content;
    public int		length;

    public Token(TokenGroup _tokenGroup, string _content){
	tokenGroup = _tokenGroup;
	content = _content;
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
	("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._", false),
	("()[]{}<>", true),
	(",;+-*^/&|!~%", true),
    };
    // checks top to bottom
    public static (string start, string end)[] stringStarters = new (string start, string end)[] {
	("'''", "'''"),
	("\"", "\""),
	("'", "'"),
	("`", "`"),
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
	    if(str.StartsWith(stringStarters[i].start)){
		int index = str.IndexOf(stringStarters[i].end);

		// avoid escaped characters (hopefully)
		while(index < 1 || str[index - 1] == '\\'){
		    if(index > 0){
			int ind = index - 1;
			bool isOdd = false;
			while(ind > -1 && str[ind--] == '\\') isOdd = !isOdd;
			if(!isOdd) goto _LoopExit;
		    }
		    index = str.IndexOf(stringStarters[i].end, index + 1);
		}
_LoopExit:

		// throw error on unclosed string
		if(index == -1){
		    Console.WriteLine("Error 1: Found unclosed string");
		    throw new Exception("Error 1: Found unclosed string");
		}

		// return string
		string stringString = str.Substring(0, index + stringStarters[i].end.Length);
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
}*/

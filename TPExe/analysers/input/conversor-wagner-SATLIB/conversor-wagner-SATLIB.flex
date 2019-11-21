/*
Adolfo Gustavo Serra Seca Neto, November 2003


Converts Wagner Dias's format formulas into SATLIB
format with signs and implication.

java JFlex.Main conversor-wagner-SATLIB.flex 
or
java -jar JFlex.jar conversor-wagner-SATLIB.flex 
  	
generates ConversorWagnerSATLIBLexer.java
and needs generation of ConversorWagnerSATLIBsym.java
by a parser.

*/
package ConversorWagnerSATLIB;
import java_cup.runtime.*;

%%

%class ConversorWagnerSATLIBLexer
%public 

%line
%column

%cup
   
%{   
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}

%eofval{
  return symbol(ConversorWagnerSATLIBsym.EOF);
%eofval}


LineTerminator = \r|\n|\r\n

WhiteSpace     = [ \t\f]

Sign = "T"|"F"

dec_int_id = [A-Za-z_][A-Za-z_0-9_,]*


%state FORMULA

%%

<YYINITIAL>{

	{Sign}  			{
	  						yybegin(FORMULA);
						   	return symbol(ConversorWagnerSATLIBsym.SIGN, yytext());
						}
	
}

<FORMULA> {
   
    {LineTerminator}      { 
    						yybegin(YYINITIAL);
    						return symbol(ConversorWagnerSATLIBsym.EOL); 
	    				   }

    "T()"                {
                         return symbol(ConversorWagnerSATLIBsym.TRUE); }
    "F()"                {
                         return symbol(ConversorWagnerSATLIBsym.FALSE); }
    "!"                { //System.out.print("!");
                         return symbol(ConversorWagnerSATLIBsym.NEG); }
    "&"                { //System.out.print("&");
                         return symbol(ConversorWagnerSATLIBsym.AND); }
    "|"                { //System.out.print("|");
                         return symbol(ConversorWagnerSATLIBsym.OR); }
    "<=>"                { //System.out.print("<->");
                          return symbol(ConversorWagnerSATLIBsym.BIIMPLIES); }
    "->"                { //System.out.print("->");
                          return symbol(ConversorWagnerSATLIBsym.IMPLIES); }
    "("                { //System.out.print("(");
                         return symbol(ConversorWagnerSATLIBsym.LPAREN); }
    ")"                { //System.out.print(")");
                         return symbol(ConversorWagnerSATLIBsym.RPAREN); }

    {dec_int_id}       { //System.out.print(yytext());
                         return symbol (ConversorWagnerSATLIBsym.ID, yytext());}

    {WhiteSpace}       { /* just skip what was found, do nothing */ }
}

[^]                    { throw new Error("Illegal character <"+yytext()+ "> at line " + yyline + ", column " + yychar ); }

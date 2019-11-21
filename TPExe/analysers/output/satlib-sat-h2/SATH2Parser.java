
//----------------------------------------------------
// The following code was generated by CUP v0.10k
// Wed Dec 15 13:22:16 BRST 2004
//----------------------------------------------------

package SATH2;

import formulasNew.*;
import signedFormulasNew.*;
import classicalLogic.*;
import problem.*;
import java.util.*;
import java_cup.runtime.*;

/** CUP v0.10k generated parser.
  * @version Wed Dec 15 13:22:16 BRST 2004
  */
public class SATH2Parser extends java_cup.runtime.lr_parser {

  /** Default constructor. */
  public SATH2Parser() {super();}

  /** Constructor which sets the default scanner. */
  public SATH2Parser(java_cup.runtime.Scanner s) {super(s);}

  /** Production table. */
  protected static final short _production_table[][] = 
    unpackFromStrings(new String[] {
    "\000\022\000\002\004\004\000\002\002\004\000\002\003" +
    "\003\000\002\005\003\000\002\006\006\000\002\006\005" +
    "\000\002\006\006\000\002\006\003\000\002\010\004\000" +
    "\002\010\003\000\002\007\005\000\002\007\003\000\002" +
    "\007\004\000\002\007\003\000\002\007\003\000\002\011" +
    "\003\000\002\011\003\000\002\011\003" });

  /** Access to production table. */
  public short[][] production_table() {return _production_table;}

  /** Parse-action table. */
  protected static final short[][] _action_table = 
    unpackFromStrings(new String[] {
    "\000\035\000\004\004\005\001\002\000\022\005\020\006" +
    "\010\007\023\010\017\011\022\013\013\014\016\015\012" +
    "\001\002\000\022\005\uffff\006\uffff\007\uffff\010\uffff\011" +
    "\uffff\013\uffff\014\uffff\015\uffff\001\002\000\004\002\007" +
    "\001\002\000\004\002\000\001\002\000\004\011\ufff2\001" +
    "\002\000\004\011\032\001\002\000\026\002\ufff6\005\ufff6" +
    "\006\ufff6\007\ufff6\010\ufff6\011\ufff6\012\ufff6\013\ufff6\014" +
    "\ufff6\015\ufff6\001\002\000\026\002\ufff4\005\ufff4\006\ufff4" +
    "\007\ufff4\010\ufff4\011\ufff4\012\ufff4\013\ufff4\014\ufff4\015" +
    "\ufff4\001\002\000\026\002\ufffa\005\ufffa\006\ufffa\007\ufffa" +
    "\010\ufffa\011\ufffa\012\ufffa\013\ufffa\014\ufffa\015\ufffa\001" +
    "\002\000\004\002\ufffe\001\002\000\026\002\ufff3\005\ufff3" +
    "\006\ufff3\007\ufff3\010\ufff3\011\ufff3\012\ufff3\013\ufff3\014" +
    "\ufff3\015\ufff3\001\002\000\004\011\ufff0\001\002\000\006" +
    "\011\027\015\026\001\002\000\004\002\001\001\002\000" +
    "\022\005\020\006\010\007\023\010\017\011\022\013\013" +
    "\014\016\015\012\001\002\000\004\011\ufff1\001\002\000" +
    "\004\012\025\001\002\000\026\002\ufff7\005\ufff7\006\ufff7" +
    "\007\ufff7\010\ufff7\011\ufff7\012\ufff7\013\ufff7\014\ufff7\015" +
    "\ufff7\001\002\000\026\002\ufff5\005\ufff5\006\ufff5\007\ufff5" +
    "\010\ufff5\011\ufff5\012\ufff5\013\ufff5\014\ufff5\015\ufff5\001" +
    "\002\000\022\005\020\006\010\007\023\010\017\011\022" +
    "\013\013\014\016\015\012\001\002\000\004\012\031\001" +
    "\002\000\026\002\ufffb\005\ufffb\006\ufffb\007\ufffb\010\ufffb" +
    "\011\ufffb\012\ufffb\013\ufffb\014\ufffb\015\ufffb\001\002\000" +
    "\024\005\020\006\010\007\023\010\017\011\022\012\034" +
    "\013\013\014\016\015\012\001\002\000\024\005\020\006" +
    "\010\007\023\010\017\011\022\012\ufff8\013\013\014\016" +
    "\015\012\001\002\000\026\002\ufffc\005\ufffc\006\ufffc\007" +
    "\ufffc\010\ufffc\011\ufffc\012\ufffc\013\ufffc\014\ufffc\015\ufffc" +
    "\001\002\000\004\012\036\001\002\000\026\002\ufffd\005" +
    "\ufffd\006\ufffd\007\ufffd\010\ufffd\011\ufffd\012\ufffd\013\ufffd" +
    "\014\ufffd\015\ufffd\001\002\000\004\012\ufff9\001\002" });

  /** Access to parse-action table. */
  public short[][] action_table() {return _action_table;}

  /** <code>reduce_goto</code> table. */
  protected static final short[][] _reduce_table = 
    unpackFromStrings(new String[] {
    "\000\035\000\006\003\003\004\005\001\001\000\012\005" +
    "\020\006\014\007\013\011\010\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\002\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\010\006\023" +
    "\007\013\011\010\001\001\000\002\001\001\000\002\001" +
    "\001\000\002\001\001\000\002\001\001\000\010\006\027" +
    "\007\013\011\010\001\001\000\002\001\001\000\002\001" +
    "\001\000\012\006\032\007\013\010\034\011\010\001\001" +
    "\000\012\006\032\007\013\010\036\011\010\001\001\000" +
    "\002\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001" });

  /** Access to <code>reduce_goto</code> table. */
  public short[][] reduce_table() {return _reduce_table;}

  /** Instance of action encapsulation class. */
  protected CUP$SATH2Parser$actions action_obj;

  /** Action encapsulation object initializer. */
  protected void init_actions()
    {
      action_obj = new CUP$SATH2Parser$actions(this);
    }

  /** Invoke a user supplied parse action. */
  public java_cup.runtime.Symbol do_action(
    int                        act_num,
    java_cup.runtime.lr_parser parser,
    java.util.Stack            stack,
    int                        top)
    throws java.lang.Exception
  {
    /* call code in generated class */
    return action_obj.CUP$SATH2Parser$do_action(act_num, parser, stack, top);
  }

  /** Indicates start state. */
  public int start_state() {return 0;}
  /** Indicates start production. */
  public int start_production() {return 1;}

  /** <code>EOF</code> Symbol index. */
  public int EOF_sym() {return 0;}

  /** <code>error</code> Symbol index. */
  public int error_sym() {return 1;}




    public void report_error(String message, Object info){

        StringBuffer m = new StringBuffer("Error");

        if (info instanceof java_cup.runtime.Symbol) {
            java_cup.runtime.Symbol s = ((java_cup.runtime.Symbol) info);

            if (s.left >= 0) {
                m.append(" in line "+(s.left+1));
                if (s.right >= 0)
                    m.append(", column "+(s.right+1));
            }
        }

        m.append(" : "+message);

//      System.err.println(m);
	throw new Error (m.toString());
    }

    public void report_fatal_error(String message, Object info) {
        report_error(message, info);
        //System.exit(1);
    }

}

/** Cup generated class to encapsulate user supplied action code.*/
class CUP$SATH2Parser$actions {



	String operator;

	FormulaFactory ff = new FormulaFactory();
	SignedFormulaFactory sff = new SignedFormulaFactory();
	SignedFormulaList sfl = new SignedFormulaList();


	public Formula createNary (FormulaFactory ff, String operator, List l){

   		Connective connective;

   		if (operator.equals("And")){
   			connective = ClassicalConnectives.AND;
   		}
   		else if (operator.equals("Or")){
   			connective = ClassicalConnectives.OR;
   		}
   		else {
				return null;
   		}

//   		return ff.createCompositeFormula (connective, l);
		FormulaList fl = new FormulaList();
		for (int i=0; i<l.size(); i++){
			fl.add((Formula) l.get(i));
		}

		Formula result = fl.get(fl.size()-1);
		for (int i=fl.size()-2; i>=0;i--){
			result = ff.createCompositeFormula(connective, fl.get(i), result);
		}

		return result;

    }

	public Formula createBinary (FormulaFactory ff, String operator, List l){

   		Connective connective;

   		if (operator.equals("And")){
   			connective = ClassicalConnectives.AND;
   		}
   		else if (operator.equals("Or")){
   			connective = ClassicalConnectives.OR;
   		}
   		else if (operator.equals("Implies")){
   			connective = ClassicalConnectives.IMPLIES;
   		}
   		else if (operator.equals("Biimplies")){
   			connective = ClassicalConnectives.BIIMPLIES;
   		}
   		else{
     			// Error
   			connective = ClassicalConnectives.IMPLIES;
 			System.exit(1);
   		}

		return ff.createCompositeFormula (connective,
   								(Formula) (l.get(0)), (Formula) (l.get(1)) );
    }


	public SignedFormula createSignedFormula (SignedFormulaFactory sff,
			String sign, Formula f){

    	FormulaSign fs;

    	if (sign.equals("T")){
    		fs = ClassicalSigns.TRUE;
    	}
    	else if (sign.equals("F")){
    		fs = ClassicalSigns.FALSE;
    	}
    	else { 	// Error
	    		fs = ClassicalSigns.FALSE;
   		        System.exit(1);
    	}

		return sff.createSignedFormula (fs, f);
    }


  private final SATH2Parser parser;

  /** Constructor */
  CUP$SATH2Parser$actions(SATH2Parser parser) {
    this.parser = parser;
  }

  /** Method with the actual generated action code. */
  public final java_cup.runtime.Symbol CUP$SATH2Parser$do_action(
    int                        CUP$SATH2Parser$act_num,
    java_cup.runtime.lr_parser CUP$SATH2Parser$parser,
    java.util.Stack            CUP$SATH2Parser$stack,
    int                        CUP$SATH2Parser$top)
    throws java.lang.Exception
    {
      /* Symbol object for return from actions */
      java_cup.runtime.Symbol CUP$SATH2Parser$result;

      /* select the action based on the action number */
      switch (CUP$SATH2Parser$act_num)
        {
          /*. . . . . . . . . . . . . . . . . . . .*/
          case 17: // oper ::= IMPLIES 
            {
              String RESULT = null;
		
                 	RESULT = "Implies";
                 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(7/*oper*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 16: // oper ::= OR 
            {
              String RESULT = null;
		
                 	RESULT = "Or";
                 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(7/*oper*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 15: // oper ::= AND 
            {
              String RESULT = null;
		
                 	RESULT = "And";
                  
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(7/*oper*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 14: // term ::= BOTTOM 
            {
              Formula RESULT = null;
		
		       RESULT = ff.createCompositeFormula(ClassicalConnectives.BOTTOM);
		 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(5/*term*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 13: // term ::= TOP 
            {
              Formula RESULT = null;
		
		       RESULT = ff.createCompositeFormula(ClassicalConnectives.TOP);
		 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(5/*term*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 12: // term ::= NEG NUMBER 
            {
              Formula RESULT = null;
		int nleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left;
		int nright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right;
		String n = (String)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).value;
		
                 	RESULT = ff.createCompositeFormula(ClassicalConnectives.NOT,
                 						  ff.createAtomicFormula(n) );
                  
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(5/*term*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 11: // term ::= NUMBER 
            {
              Formula RESULT = null;
		int nleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left;
		int nright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right;
		String n = (String)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).value;
		
                 	RESULT = ff.createAtomicFormula(n);
                 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(5/*term*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 10: // term ::= LPAREN formula RPAREN 
            {
              Formula RESULT = null;
		int fleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).left;
		int fright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).right;
		Formula f = (Formula)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).value;
		
                 	RESULT = f;
                 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(5/*term*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-2)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 9: // listOfFormulas ::= formula 
            {
              List RESULT = null;
		int fleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left;
		int fright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right;
		Formula f = (Formula)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).value;
		
                 		List auxFormulas = new ArrayList();
                 		auxFormulas.add(f);
                 		RESULT = auxFormulas;
                 	
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(6/*listOfFormulas*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 8: // listOfFormulas ::= formula listOfFormulas 
            {
              List RESULT = null;
		int fleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).left;
		int fright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).right;
		Formula f = (Formula)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).value;
		int lleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left;
		int lright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right;
		List l = (List)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).value;
		
                 		List auxFormulas = new ArrayList();
                 		auxFormulas.add(f);
                 		auxFormulas.addAll(l);
                 		RESULT = auxFormulas;
                 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(6/*listOfFormulas*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 7: // formula ::= term 
            {
              Formula RESULT = null;
		int tleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left;
		int tright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right;
		Formula t = (Formula)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).value;
		
                 	RESULT = t;
                 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(4/*formula*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 6: // formula ::= NEG LPAREN formula RPAREN 
            {
              Formula RESULT = null;
		int fleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).left;
		int fright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).right;
		Formula f = (Formula)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).value;
		
                 	RESULT = ff.createCompositeFormula(ClassicalConnectives.NOT, f );
                 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(4/*formula*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-3)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 5: // formula ::= oper LPAREN RPAREN 
            {
              Formula RESULT = null;
		int oleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-2)).left;
		int oright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-2)).right;
		String o = (String)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-2)).value;
		
                 	if (o == "And"){
                 		RESULT = ff.createCompositeFormula (
                 					ClassicalConnectives.TOP);
                 	}
                 	else {
                 		RESULT = ff.createCompositeFormula (
                 					ClassicalConnectives.BOTTOM);
                 	}
                 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(4/*formula*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-2)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 4: // formula ::= oper LPAREN listOfFormulas RPAREN 
            {
              Formula RESULT = null;
		int oleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-3)).left;
		int oright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-3)).right;
		String o = (String)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-3)).value;
		int lleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).left;
		int lright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).right;
		List l = (List)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).value;
		
            		operator = o;

	   				if (l.size() >2)
	   					{
	    						RESULT = createNary (ff, operator, l);
	   					}
	   				else if (l.size()==2)
	   					{
	   						RESULT = createBinary (ff, operator, l);
	   					}
	   				else {
	   						RESULT = (Formula) (l.get(0));
	   					 }
	             
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(4/*formula*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-3)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 3: // theFormula ::= formula 
            {
              Formula RESULT = null;
		int fleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left;
		int fright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right;
		Formula f = (Formula)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).value;
		
                 	RESULT = f;
                 
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(3/*theFormula*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 2: // problemLine ::= PROBLEM 
            {
              Object RESULT = null;
		int numberleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left;
		int numberright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right;
		Object number = (Object)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).value;
		

				RESULT = number;
			
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(1/*problemLine*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 1: // $START ::= file EOF 
            {
              Object RESULT = null;
		int start_valleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).left;
		int start_valright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).right;
		Problem start_val = (Problem)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).value;
		RESULT = start_val;
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(0/*$START*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          /* ACCEPT */
          CUP$SATH2Parser$parser.done_parsing();
          return CUP$SATH2Parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 0: // file ::= problemLine theFormula 
            {
              Problem RESULT = null;
		int nleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).left;
		int nright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).right;
		Object n = (Object)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).value;
		int fleft = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).left;
		int fright = ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right;
		Formula f = (Formula)((java_cup.runtime.Symbol) CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).value;
		
   			Problem ps = new Problem("SATLIB SAT Format with Header");

   			ps.setFormulaFactory(ff);
			SignedFormula sf = sff.createSignedFormula(ClassicalSigns.FALSE, f);
   			ps.setSignedFormulaFactory(sff);
			sfl.add(sf);
   			ps.setSignedFormulaList (sfl);

   			RESULT = ps;

   		
              CUP$SATH2Parser$result = new java_cup.runtime.Symbol(2/*file*/, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-1)).left, ((java_cup.runtime.Symbol)CUP$SATH2Parser$stack.elementAt(CUP$SATH2Parser$top-0)).right, RESULT);
            }
          return CUP$SATH2Parser$result;

          /* . . . . . .*/
          default:
            throw new Exception(
               "Invalid action number found in internal parse table");

        }
    }
}


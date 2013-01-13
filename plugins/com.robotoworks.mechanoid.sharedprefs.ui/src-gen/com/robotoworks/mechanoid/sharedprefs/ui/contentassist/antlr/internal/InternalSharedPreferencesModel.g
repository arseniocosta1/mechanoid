/*
* generated by Xtext
*/
grammar InternalSharedPreferencesModel;

options {
	superClass=AbstractInternalContentAssistParser;
	backtrack=true;
	
}

@lexer::header {
package com.robotoworks.mechanoid.sharedprefs.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package com.robotoworks.mechanoid.sharedprefs.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import com.robotoworks.mechanoid.sharedprefs.services.SharedPreferencesModelGrammarAccess;

}

@parser::members {
 
 	private SharedPreferencesModelGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(SharedPreferencesModelGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleModel
entryRuleModel 
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getModelAccess().getGroup()); }
(rule__Model__Group__0)
{ after(grammarAccess.getModelAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePreferencesBlock
entryRulePreferencesBlock 
:
{ before(grammarAccess.getPreferencesBlockRule()); }
	 rulePreferencesBlock
{ after(grammarAccess.getPreferencesBlockRule()); } 
	 EOF 
;

// Rule PreferencesBlock
rulePreferencesBlock
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPreferencesBlockAccess().getGroup()); }
(rule__PreferencesBlock__Group__0)
{ after(grammarAccess.getPreferencesBlockAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePreference
entryRulePreference 
:
{ before(grammarAccess.getPreferenceRule()); }
	 rulePreference
{ after(grammarAccess.getPreferenceRule()); } 
	 EOF 
;

// Rule Preference
rulePreference
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPreferenceAccess().getGroup()); }
(rule__Preference__Group__0)
{ after(grammarAccess.getPreferenceAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleFQN
entryRuleFQN 
:
{ before(grammarAccess.getFQNRule()); }
	 ruleFQN
{ after(grammarAccess.getFQNRule()); } 
	 EOF 
;

// Rule FQN
ruleFQN
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getFQNAccess().getGroup()); }
(rule__FQN__Group__0)
{ after(grammarAccess.getFQNAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}




// Rule PreferenceType
rulePreferenceType
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferenceTypeAccess().getAlternatives()); }
(rule__PreferenceType__Alternatives)
{ after(grammarAccess.getPreferenceTypeAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__PreferenceType__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferenceTypeAccess().getStringEnumLiteralDeclaration_0()); }
(	'String' 
)
{ after(grammarAccess.getPreferenceTypeAccess().getStringEnumLiteralDeclaration_0()); }
)

    |(
{ before(grammarAccess.getPreferenceTypeAccess().getIntegerEnumLiteralDeclaration_1()); }
(	'int' 
)
{ after(grammarAccess.getPreferenceTypeAccess().getIntegerEnumLiteralDeclaration_1()); }
)

    |(
{ before(grammarAccess.getPreferenceTypeAccess().getBooleanEnumLiteralDeclaration_2()); }
(	'boolean' 
)
{ after(grammarAccess.getPreferenceTypeAccess().getBooleanEnumLiteralDeclaration_2()); }
)

    |(
{ before(grammarAccess.getPreferenceTypeAccess().getFloatEnumLiteralDeclaration_3()); }
(	'float' 
)
{ after(grammarAccess.getPreferenceTypeAccess().getFloatEnumLiteralDeclaration_3()); }
)

    |(
{ before(grammarAccess.getPreferenceTypeAccess().getLongEnumLiteralDeclaration_4()); }
(	'long' 
)
{ after(grammarAccess.getPreferenceTypeAccess().getLongEnumLiteralDeclaration_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__Model__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__0__Impl
	rule__Model__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getPackageKeyword_0()); }

	'package' 

{ after(grammarAccess.getModelAccess().getPackageKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__1__Impl
	rule__Model__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getPackageNameAssignment_1()); }
(rule__Model__PackageNameAssignment_1)
{ after(grammarAccess.getModelAccess().getPackageNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getPreferencesBlockAssignment_2()); }
(rule__Model__PreferencesBlockAssignment_2)
{ after(grammarAccess.getModelAccess().getPreferencesBlockAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__PreferencesBlock__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PreferencesBlock__Group__0__Impl
	rule__PreferencesBlock__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PreferencesBlock__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferencesBlockAccess().getPreferencesKeyword_0()); }

	'preferences' 

{ after(grammarAccess.getPreferencesBlockAccess().getPreferencesKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PreferencesBlock__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PreferencesBlock__Group__1__Impl
	rule__PreferencesBlock__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PreferencesBlock__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferencesBlockAccess().getNameAssignment_1()); }
(rule__PreferencesBlock__NameAssignment_1)
{ after(grammarAccess.getPreferencesBlockAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PreferencesBlock__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PreferencesBlock__Group__2__Impl
	rule__PreferencesBlock__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PreferencesBlock__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferencesBlockAccess().getLeftCurlyBracketKeyword_2()); }

	'{' 

{ after(grammarAccess.getPreferencesBlockAccess().getLeftCurlyBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PreferencesBlock__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PreferencesBlock__Group__3__Impl
	rule__PreferencesBlock__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PreferencesBlock__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferencesBlockAccess().getPrefsAssignment_3()); }
(rule__PreferencesBlock__PrefsAssignment_3)*
{ after(grammarAccess.getPreferencesBlockAccess().getPrefsAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PreferencesBlock__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PreferencesBlock__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PreferencesBlock__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferencesBlockAccess().getRightCurlyBracketKeyword_4()); }

	'}' 

{ after(grammarAccess.getPreferencesBlockAccess().getRightCurlyBracketKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__Preference__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Preference__Group__0__Impl
	rule__Preference__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Preference__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferenceAccess().getNameAssignment_0()); }
(rule__Preference__NameAssignment_0)
{ after(grammarAccess.getPreferenceAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Preference__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Preference__Group__1__Impl
	rule__Preference__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Preference__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferenceAccess().getColonKeyword_1()); }

	':' 

{ after(grammarAccess.getPreferenceAccess().getColonKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Preference__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Preference__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Preference__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferenceAccess().getTypeAssignment_2()); }
(rule__Preference__TypeAssignment_2)
{ after(grammarAccess.getPreferenceAccess().getTypeAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__FQN__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FQN__Group__0__Impl
	rule__FQN__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FQN__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFQNAccess().getGroup_1()); }
(rule__FQN__Group_1__0)*
{ after(grammarAccess.getFQNAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__FQN__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FQN__Group_1__0__Impl
	rule__FQN__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
(
	'.' 
)
{ after(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__FQN__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}







rule__Model__PackageNameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getPackageNameFQNParserRuleCall_1_0()); }
	ruleFQN{ after(grammarAccess.getModelAccess().getPackageNameFQNParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Model__PreferencesBlockAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getPreferencesBlockPreferencesBlockParserRuleCall_2_0()); }
	rulePreferencesBlock{ after(grammarAccess.getModelAccess().getPreferencesBlockPreferencesBlockParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PreferencesBlock__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferencesBlockAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getPreferencesBlockAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PreferencesBlock__PrefsAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferencesBlockAccess().getPrefsPreferenceParserRuleCall_3_0()); }
	rulePreference{ after(grammarAccess.getPreferencesBlockAccess().getPrefsPreferenceParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Preference__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferenceAccess().getNameIDTerminalRuleCall_0_0()); }
	RULE_ID{ after(grammarAccess.getPreferenceAccess().getNameIDTerminalRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Preference__TypeAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPreferenceAccess().getTypePreferenceTypeEnumRuleCall_2_0()); }
	rulePreferenceType{ after(grammarAccess.getPreferenceAccess().getTypePreferenceTypeEnumRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


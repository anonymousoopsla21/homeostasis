/*
 * Copyright (c) 2019 Aman Nougrahiya, V Krishna Nandivada, IIT Madras.
 * This file is a part of the project IMOP, licensed under the MIT license.
 * See LICENSE.md for the full text of the license.
 * 
 * The above notice shall be included in all copies or substantial
 * portions of this file.
 */
//
// Generated by JTB 1.3.2
//

package imop.baseVisitor;

import imop.ast.node.external.*;
import imop.ast.node.internal.*;

/**
 * All void visitors must implement this interface.
 */

public interface Visitor {

	//
	// void Auto class visitors
	//

	public void visit(NodeList n);

	public void visit(NodeListOptional n);

	public void visit(NodeOptional n);

	public void visit(NodeSequence n);

	public void visit(NodeChoice nodeChoice);

	public void visit(NodeToken n);

	//
	// User-generated visitor methods below
	//

	/**
	 * Special Nodes: BeginNode and EndNode
	 */
	public void visit(BeginNode n);

	public void visit(EndNode n);

	/**
	 * f0 ::= ( ElementsOfTranslation() )+
	 */
	public void visit(TranslationUnit n);

	/**
	 * f0 ::= ExternalDeclaration()
	 * | UnknownCpp()
	 * | UnknownPragma()
	 */
	public void visit(ElementsOfTranslation n);

	/**
	 * f0 ::= Declaration()
	 * | FunctionDefinition()
	 * | DeclareReductionDirective()
	 * | ThreadPrivateDirective()
	 */
	public void visit(ExternalDeclaration n);

	/**
	 * f0 ::= ( DeclarationSpecifiers() )?
	 * f1 ::= Declarator()
	 * f2 ::= ( DeclarationList() )?
	 * f3 ::= CompoundStatement()
	 */
	public void visit(FunctionDefinition n);

	/**
	 * f0 ::= DeclarationSpecifiers()
	 * f1 ::= ( InitDeclaratorList() )?
	 * f2 ::= ";"
	 */
	public void visit(Declaration n);

	/**
	 * f0 ::= ( Declaration() )+
	 */
	public void visit(DeclarationList n);

	/**
	 * f0 ::= ( ADeclarationSpecifier() )+
	 */
	public void visit(DeclarationSpecifiers n);

	/**
	 * f0 ::= StorageClassSpecifier()
	 * | TypeSpecifier()
	 * | TypeQualifier()
	 */
	public void visit(ADeclarationSpecifier n);

	/**
	 * f0 ::= <AUTO>
	 * | <REGISTER>
	 * | <STATIC>
	 * | <EXTERN>
	 * | <TYPEDEF>
	 */
	public void visit(StorageClassSpecifier n);

	/**
	 * f0 ::= ( <VOID> | <CHAR> | <SHORT> | <INT> | <LONG> | <FLOAT> | <DOUBLE>
	 * |
	 * <SIGNED> | <UNSIGNED> | StructOrUnionSpecifier() | EnumSpecifier() |
	 * TypedefName() )
	 */
	public void visit(TypeSpecifier n);

	/**
	 * f0 ::= <RESTRICT>
	 * | <CONST>
	 * | <VOLATILE>
	 * | <INLINE>
	 * | <CCONST>
	 * | <CINLINED>
	 * | <CINLINED2>
	 * | <CSIGNED>
	 * | <CSIGNED2>
	 */
	public void visit(TypeQualifier n);

	/**
	 * 
	 * f0 ::= ( StructOrUnionSpecifierWithList() |
	 * StructOrUnionSpecifierWithId()
	 * )
	 */
	public void visit(StructOrUnionSpecifier n);

	/**
	 * f0 ::= StructOrUnion()
	 * f1 ::= ( <IDENTIFIER> )?
	 * f2 ::= "{"
	 * f3 ::= StructDeclarationList()
	 * f4 ::= "}"
	 */
	public void visit(StructOrUnionSpecifierWithList n);

	/**
	 * f0 ::= StructOrUnion()
	 * f1 ::= <IDENTIFIER>
	 */
	public void visit(StructOrUnionSpecifierWithId n);

	/**
	 * f0 ::= <STRUCT>
	 * | <UNION>
	 */
	public void visit(StructOrUnion n);

	/**
	 * f0 ::= ( StructDeclaration() )+
	 */
	public void visit(StructDeclarationList n);

	/**
	 * f0 ::= InitDeclarator()
	 * f1 ::= ( "," InitDeclarator() )*
	 */
	public void visit(InitDeclaratorList n);

	/**
	 * f0 ::= Declarator()
	 * f1 ::= ( "=" Initializer() )?
	 */
	public void visit(InitDeclarator n);

	/**
	 * f0 ::= SpecifierQualifierList()
	 * f1 ::= StructDeclaratorList()
	 * f2 ::= ";"
	 */
	public void visit(StructDeclaration n);

	/**
	 * f0 ::= ( ASpecifierQualifier() )+
	 */
	public void visit(SpecifierQualifierList n);

	/**
	 * f0 ::= TypeSpecifier()
	 * | TypeQualifier()
	 */
	public void visit(ASpecifierQualifier n);

	/**
	 * f0 ::= StructDeclarator()
	 * f1 ::= ( "," StructDeclarator() )*
	 */
	public void visit(StructDeclaratorList n);

	/**
	 * f0 ::= StructDeclaratorWithDeclarator()
	 * | StructDeclaratorWithBitField()
	 */
	public void visit(StructDeclarator n);

	/**
	 * f0 ::= Declarator()
	 * f1 ::= ( ":" ConstantExpression() )?
	 */
	public void visit(StructDeclaratorWithDeclarator n);

	/**
	 * f0 ::= ":"
	 * f1 ::= ConstantExpression()
	 */
	public void visit(StructDeclaratorWithBitField n);

	/**
	 * f0 ::= EnumSpecifierWithList()
	 * | EnumSpecifierWithId()
	 */
	public void visit(EnumSpecifier n);

	/**
	 * f0 ::= <ENUM>
	 * f1 ::= ( <IDENTIFIER> )?
	 * f2 ::= "{"
	 * f3 ::= EnumeratorList()
	 * f4 ::= "}"
	 */
	public void visit(EnumSpecifierWithList n);

	/**
	 * f0 ::= <ENUM>
	 * f1 ::= <IDENTIFIER>
	 */
	public void visit(EnumSpecifierWithId n);

	/**
	 * f0 ::= Enumerator()
	 * f1 ::= ( "," Enumerator() )*
	 */
	public void visit(EnumeratorList n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ( "=" ConstantExpression() )?
	 */
	public void visit(Enumerator n);

	/**
	 * f0 ::= ( Pointer() )?
	 * f1 ::= DirectDeclarator()
	 */
	public void visit(Declarator n);

	/**
	 * f0 ::= IdentifierOrDeclarator()
	 * f1 ::= DeclaratorOpList()
	 */
	public void visit(DirectDeclarator n);

	/**
	 * f0 ::= ( ADeclaratorOp() )*
	 */
	public void visit(DeclaratorOpList n);

	/**
	 * f0 ::= DimensionSize()
	 * | ParameterTypeListClosed()
	 * | OldParameterListClosed()
	 */
	public void visit(ADeclaratorOp n);

	/**
	 * f0 ::= "["
	 * f1 ::= ( ConstantExpression() )?
	 * f2 ::= "]"
	 */
	public void visit(DimensionSize n);

	/**
	 * f0 ::= "("
	 * f1 ::= ( ParameterTypeList() )?
	 * f2 ::= ")"
	 */
	public void visit(ParameterTypeListClosed n);

	/**
	 * f0 ::= "("
	 * f1 ::= ( OldParameterList() )?
	 * f2 ::= ")"
	 */
	public void visit(OldParameterListClosed n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * | "(" Declarator() ")"
	 */
	public void visit(IdentifierOrDeclarator n);

	/**
	 * f0 ::= ( "*" | "^" )
	 * f1 ::= ( TypeQualifierList() )?
	 * f2 ::= ( Pointer() )?
	 */
	public void visit(Pointer n);

	/**
	 * f0 ::= ( TypeQualifier() )+
	 */
	public void visit(TypeQualifierList n);

	/**
	 * f0 ::= ParameterList()
	 * f1 ::= ( "," "..." )?
	 */
	public void visit(ParameterTypeList n);

	/**
	 * f0 ::= ParameterDeclaration()
	 * f1 ::= ( "," ParameterDeclaration() )*
	 */
	public void visit(ParameterList n);

	/**
	 * f0 ::= DeclarationSpecifiers()
	 * f1 ::= ParameterAbstraction()
	 */
	public void visit(ParameterDeclaration n);

	/**
	 * f0 ::= Declarator()
	 * | AbstractOptionalDeclarator()
	 */
	public void visit(ParameterAbstraction n);

	/**
	 * f0 ::= ( AbstractDeclarator() )?
	 */
	public void visit(AbstractOptionalDeclarator n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ( "," <IDENTIFIER> )*
	 */
	public void visit(OldParameterList n);

	/**
	 * f0 ::= AssignmentExpression()
	 * | ArrayInitializer()
	 */
	public void visit(Initializer n);

	/**
	 * f0 ::= "{"
	 * f1 ::= InitializerList()
	 * f2 ::= ( "," )?
	 * f3 ::= "}"
	 */
	public void visit(ArrayInitializer n);

	/**
	 * f0 ::= Initializer()
	 * f1 ::= ( "," Initializer() )*
	 */
	public void visit(InitializerList n);

	/**
	 * f0 ::= SpecifierQualifierList()
	 * f1 ::= ( AbstractDeclarator() )?
	 */
	public void visit(TypeName n);

	/**
	 * f0 ::= AbstractDeclaratorWithPointer()
	 * | DirectAbstractDeclarator()
	 */
	public void visit(AbstractDeclarator n);

	/**
	 * f0 ::= Pointer()
	 * f1 ::= ( DirectAbstractDeclarator() )?
	 */
	public void visit(AbstractDeclaratorWithPointer n);

	/**
	 * f0 ::= AbstractDimensionOrParameter()
	 * f1 ::= DimensionOrParameterList()
	 */
	public void visit(DirectAbstractDeclarator n);

	/**
	 * f0 ::= AbstractDeclaratorClosed()
	 * | DimensionSize()
	 * | ParameterTypeListClosed()
	 */
	public void visit(AbstractDimensionOrParameter n);

	/**
	 * f0 ::= "("
	 * f1 ::= AbstractDeclarator()
	 * f2 ::= ")"
	 */
	public void visit(AbstractDeclaratorClosed n);

	/**
	 * f0 ::= ( ADimensionOrParameter() )*
	 */
	public void visit(DimensionOrParameterList n);

	/**
	 * f0 ::= DimensionSize()
	 * | ParameterTypeListClosed()
	 */
	public void visit(ADimensionOrParameter n);

	/**
	 * f0 ::= <IDENTIFIER>
	 */
	public void visit(TypedefName n);

	/**
	 * f0 ::= ( LabeledStatement() | ExpressionStatement() | CompoundStatement()
	 * | SelectionStatement() | IterationStatement() | JumpStatement() |
	 * UnknownPragma() | OmpConstruct() | OmpDirective() | UnknownCpp() )
	 */
	public void visit(Statement n);

	/**
	 * f0 ::= "#"
	 * f1 ::= <UNKNOWN_CPP>
	 */
	public void visit(UnknownCpp n);

	/**
	 * f0 ::= <OMP_CR>
	 * | <OMP_NL>
	 */
	public void visit(OmpEol n);

	/**
	 * f0 ::= ParallelConstruct()
	 * | ForConstruct()
	 * | SectionsConstruct()
	 * | SingleConstruct()
	 * | ParallelForConstruct()
	 * | ParallelSectionsConstruct()
	 * | TaskConstruct()
	 * | MasterConstruct()
	 * | CriticalConstruct()
	 * | AtomicConstruct()
	 * | OrderedConstruct()
	 */
	public void visit(OmpConstruct n);

	/**
	 * f0 ::= BarrierDirective()
	 * | TaskwaitDirective()
	 * | TaskyieldDirective()
	 * | FlushDirective()
	 */
	public void visit(OmpDirective n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= ParallelDirective()
	 * f2 ::= Statement()
	 */
	public void visit(ParallelConstruct n);

	/**
	 * f0 ::= "#"
	 * f1 ::= <PRAGMA>
	 * f2 ::= <OMP>
	 */
	public void visit(OmpPragma n);

	/**
	 * f0 ::= "#"
	 * f1 ::= <PRAGMA>
	 * f2 ::= <UNKNOWN_CPP>
	 */
	public void visit(UnknownPragma n);

	/**
	 * f0 ::= <PARALLEL>
	 * f1 ::= UniqueParallelOrDataClauseList()
	 * f2 ::= OmpEol()
	 */
	public void visit(ParallelDirective n);

	/**
	 * f0 ::= ( AUniqueParallelOrDataClause() )*
	 */
	public void visit(UniqueParallelOrDataClauseList n);

	/**
	 * f0 ::= UniqueParallelClause()
	 * | DataClause()
	 */
	public void visit(AUniqueParallelOrDataClause n);

	/**
	 * f0 ::= IfClause()
	 * | NumThreadsClause()
	 */
	public void visit(UniqueParallelClause n);

	/**
	 * f0 ::= <IF>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 */
	public void visit(IfClause n);

	/**
	 * f0 ::= <NUM_THREADS>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 */
	public void visit(NumThreadsClause n);

	/**
	 * f0 ::= OmpPrivateClause()
	 * | OmpFirstPrivateClause()
	 * | OmpLastPrivateClause()
	 * | OmpSharedClause()
	 * | OmpCopyinClause()
	 * | OmpDfltSharedClause()
	 * | OmpDfltNoneClause()
	 * | OmpReductionClause()
	 */
	public void visit(DataClause n);

	/**
	 * f0 ::= <PRIVATE>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public void visit(OmpPrivateClause n);

	/**
	 * f0 ::= <FIRSTPRIVATE>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public void visit(OmpFirstPrivateClause n);

	/**
	 * f0 ::= <LASTPRIVATE>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public void visit(OmpLastPrivateClause n);

	/**
	 * f0 ::= <SHARED>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public void visit(OmpSharedClause n);

	/**
	 * f0 ::= <COPYIN>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public void visit(OmpCopyinClause n);

	/**
	 * f0 ::= <DFLT>
	 * f1 ::= "("
	 * f2 ::= <SHARED>
	 * f3 ::= ")"
	 */
	public void visit(OmpDfltSharedClause n);

	/**
	 * f0 ::= <DFLT>
	 * f1 ::= "("
	 * f2 ::= <NONE>
	 * f3 ::= ")"
	 */
	public void visit(OmpDfltNoneClause n);

	/**
	 * f0 ::= <REDUCTION>
	 * f1 ::= "("
	 * f2 ::= ReductionOp()
	 * f3 ::= ":"
	 * f4 ::= VariableList()
	 * f5 ::= ")"
	 */
	public void visit(OmpReductionClause n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= ForDirective()
	 * f2 ::= OmpForHeader()
	 * f3 ::= Statement()
	 */
	public void visit(ForConstruct n);

	/**
	 * f0 ::= <FOR>
	 * f1 ::= UniqueForOrDataOrNowaitClauseList()
	 * f2 ::= OmpEol()
	 */
	public void visit(ForDirective n);

	/**
	 * f0 ::= ( AUniqueForOrDataOrNowaitClause() )*
	 */
	public void visit(UniqueForOrDataOrNowaitClauseList n);

	/**
	 * f0 ::= UniqueForClause()
	 * | DataClause()
	 * | NowaitClause()
	 */
	public void visit(AUniqueForOrDataOrNowaitClause n);

	/**
	 * f0 ::= <NOWAIT>
	 */
	public void visit(NowaitClause n);

	/**
	 * f0 ::= <ORDERED>
	 * | UniqueForClauseSchedule()
	 * | UniqueForCollapse()
	 */
	public void visit(UniqueForClause n);

	/**
	 * f0 ::= <COLLAPSE>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 */
	public void visit(UniqueForCollapse n);

	/**
	 * f0 ::= <SCHEDULE>
	 * f1 ::= "("
	 * f2 ::= ScheduleKind()
	 * f3 ::= ( "," Expression() )?
	 * f4 ::= ")"
	 */
	public void visit(UniqueForClauseSchedule n);

	/**
	 * f0 ::= <STATIC>
	 * | <DYNAMIC>
	 * | <GUIDED>
	 * | <RUNTIME>
	 */
	public void visit(ScheduleKind n);

	/**
	 * f0 ::= <FOR>
	 * f1 ::= "("
	 * f2 ::= OmpForInitExpression()
	 * f3 ::= ";"
	 * f4 ::= OmpForCondition()
	 * f5 ::= ";"
	 * f6 ::= OmpForReinitExpression()
	 * f7 ::= ")"
	 */
	public void visit(OmpForHeader n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "="
	 * f2 ::= Expression()
	 */
	public void visit(OmpForInitExpression n);

	/**
	 * f0 ::= OmpForLTCondition()
	 * | OmpForLECondition()
	 * | OmpForGTCondition()
	 * | OmpForGECondition()
	 */
	public void visit(OmpForCondition n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "<"
	 * f2 ::= Expression()
	 */
	public void visit(OmpForLTCondition n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "<="
	 * f2 ::= Expression()
	 */
	public void visit(OmpForLECondition n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ">"
	 * f2 ::= Expression()
	 */
	public void visit(OmpForGTCondition n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ">="
	 * f2 ::= Expression()
	 */
	public void visit(OmpForGECondition n);

	/**
	 * f0 ::= PostIncrementId()
	 * | PostDecrementId()
	 * | PreIncrementId()
	 * | PreDecrementId()
	 * | ShortAssignPlus()
	 * | ShortAssignMinus()
	 * | OmpForAdditive()
	 * | OmpForSubtractive()
	 * | OmpForMultiplicative()
	 */
	public void visit(OmpForReinitExpression n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "++"
	 */
	public void visit(PostIncrementId n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "--"
	 */
	public void visit(PostDecrementId n);

	/**
	 * f0 ::= "++"
	 * f1 ::= <IDENTIFIER>
	 */
	public void visit(PreIncrementId n);

	/**
	 * f0 ::= "--"
	 * f1 ::= <IDENTIFIER>
	 */
	public void visit(PreDecrementId n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "+="
	 * f2 ::= Expression()
	 */
	public void visit(ShortAssignPlus n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "-="
	 * f2 ::= Expression()
	 */
	public void visit(ShortAssignMinus n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "="
	 * f2 ::= <IDENTIFIER>
	 * f3 ::= "+"
	 * f4 ::= AdditiveExpression()
	 */
	public void visit(OmpForAdditive n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "="
	 * f2 ::= <IDENTIFIER>
	 * f3 ::= "-"
	 * f4 ::= AdditiveExpression()
	 */
	public void visit(OmpForSubtractive n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "="
	 * f2 ::= MultiplicativeExpression()
	 * f3 ::= "+"
	 * f4 ::= <IDENTIFIER>
	 */
	public void visit(OmpForMultiplicative n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <SECTIONS>
	 * f2 ::= NowaitDataClauseList()
	 * f3 ::= OmpEol()
	 * f4 ::= SectionsScope()
	 */
	public void visit(SectionsConstruct n);

	/**
	 * f0 ::= ( ANowaitDataClause() )*
	 */
	public void visit(NowaitDataClauseList n);

	/**
	 * f0 ::= NowaitClause()
	 * | DataClause()
	 */
	public void visit(ANowaitDataClause n);

	/**
	 * f0 ::= "{"
	 * f1 ::= ( Statement() )?
	 * f2 ::= ( ASection() )*
	 * f3 ::= "}"
	 */
	public void visit(SectionsScope n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <SECTION>
	 * f2 ::= OmpEol()
	 * f3 ::= Statement()
	 */
	public void visit(ASection n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <SINGLE>
	 * f2 ::= SingleClauseList()
	 * f3 ::= OmpEol()
	 * f4 ::= Statement()
	 */
	public void visit(SingleConstruct n);

	/**
	 * f0 ::= ( ASingleClause() )*
	 */
	public void visit(SingleClauseList n);

	/**
	 * f0 ::= NowaitClause()
	 * | DataClause()
	 * | OmpCopyPrivateClause()
	 */
	public void visit(ASingleClause n);

	/**
	 * f0 ::= <COPYPRIVATE>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public void visit(OmpCopyPrivateClause n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <TASK>
	 * f2 ::= ( TaskClause() )*
	 * f3 ::= OmpEol()
	 * f4 ::= Statement()
	 */
	public void visit(TaskConstruct n);

	/**
	 * f0 ::= DataClause()
	 * | UniqueTaskClause()
	 */
	public void visit(TaskClause n);

	/**
	 * f0 ::= IfClause()
	 * | FinalClause()
	 * | UntiedClause()
	 * | MergeableClause()
	 */
	public void visit(UniqueTaskClause n);

	/**
	 * f0 ::= <FINAL>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 */
	public void visit(FinalClause n);

	/**
	 * f0 ::= <UNTIED>
	 */
	public void visit(UntiedClause n);

	/**
	 * f0 ::= <MERGEABLE>
	 */
	public void visit(MergeableClause n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <PARALLEL>
	 * f2 ::= <FOR>
	 * f3 ::= UniqueParallelOrUniqueForOrDataClauseList()
	 * f4 ::= OmpEol()
	 * f5 ::= OmpForHeader()
	 * f6 ::= Statement()
	 */
	public void visit(ParallelForConstruct n);

	/**
	 * f0 ::= ( AUniqueParallelOrUniqueForOrDataClause() )*
	 */
	public void visit(UniqueParallelOrUniqueForOrDataClauseList n);

	/**
	 * f0 ::= UniqueParallelClause()
	 * | UniqueForClause()
	 * | DataClause()
	 */
	public void visit(AUniqueParallelOrUniqueForOrDataClause n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <PARALLEL>
	 * f2 ::= <SECTIONS>
	 * f3 ::= UniqueParallelOrDataClauseList()
	 * f4 ::= OmpEol()
	 * f5 ::= SectionsScope()
	 */
	public void visit(ParallelSectionsConstruct n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <MASTER>
	 * f2 ::= OmpEol()
	 * f3 ::= Statement()
	 */
	public void visit(MasterConstruct n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <CRITICAL>
	 * f2 ::= ( RegionPhrase() )?
	 * f3 ::= OmpEol()
	 * f4 ::= Statement()
	 */
	public void visit(CriticalConstruct n);

	/**
	 * f0 ::= "("
	 * f1 ::= <IDENTIFIER>
	 * f2 ::= ")"
	 */
	public void visit(RegionPhrase n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <ATOMIC>
	 * f2 ::= ( AtomicClause() )?
	 * f3 ::= OmpEol()
	 * f4 ::= ExpressionStatement()
	 */
	public void visit(AtomicConstruct n);

	/**
	 * f0 ::= <READ>
	 * | <WRITE>
	 * | <UPDATE>
	 * | <CAPTURE>
	 */
	public void visit(AtomicClause n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <FLUSH>
	 * f2 ::= ( FlushVars() )?
	 * f3 ::= OmpEol()
	 */
	public void visit(FlushDirective n);

	/**
	 * f0 ::= "("
	 * f1 ::= VariableList()
	 * f2 ::= ")"
	 */
	public void visit(FlushVars n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <ORDERED>
	 * f2 ::= OmpEol()
	 * f3 ::= Statement()
	 */
	public void visit(OrderedConstruct n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <BARRIER>
	 * f2 ::= OmpEol()
	 */
	public void visit(BarrierDirective n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <TASKWAIT>
	 * f2 ::= OmpEol()
	 */
	public void visit(TaskwaitDirective n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <TASKYIELD>
	 * f2 ::= OmpEol()
	 */
	public void visit(TaskyieldDirective n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <THREADPRIVATE>
	 * f2 ::= "("
	 * f3 ::= VariableList()
	 * f4 ::= ")"
	 * f5 ::= OmpEol()
	 */
	public void visit(ThreadPrivateDirective n);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <DECLARE>
	 * f2 ::= <REDUCTION>
	 * f3 ::= "("
	 * f4 ::= ReductionOp()
	 * f5 ::= ":"
	 * f6 ::= ReductionTypeList()
	 * f7 ::= ":"
	 * f8 ::= Expression()
	 * f9 ::= ")"
	 * f10 ::= ( InitializerClause() )?
	 * f11 ::= OmpEol()
	 */
	public void visit(DeclareReductionDirective n);

	/**
	 * f0 ::= ( TypeSpecifier() )*
	 */
	public void visit(ReductionTypeList n);

	/**
	 * f0 ::= AssignInitializerClause()
	 * | ArgumentInitializerClause()
	 */
	public void visit(InitializerClause n);

	/**
	 * f0 ::= <INITIALIZER>
	 * f1 ::= "("
	 * f2 ::= <IDENTIFIER>
	 * f3 ::= "="
	 * f4 ::= Initializer()
	 * f5 ::= ")"
	 */
	public void visit(AssignInitializerClause n);

	/**
	 * f0 ::= <INITIALIZER>
	 * f1 ::= "("
	 * f2 ::= <IDENTIFIER>
	 * f3 ::= "("
	 * f4 ::= ExpressionList()
	 * f5 ::= ")"
	 * f6 ::= ")"
	 */
	public void visit(ArgumentInitializerClause n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * | "+"
	 * | "*"
	 * | "-"
	 * | "&"
	 * | "^"
	 * | "|"
	 * | "||"
	 * | "&&"
	 */
	public void visit(ReductionOp n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ( "," <IDENTIFIER> )*
	 */
	public void visit(VariableList n);

	/**
	 * f0 ::= SimpleLabeledStatement()
	 * | CaseLabeledStatement()
	 * | DefaultLabeledStatement()
	 */
	public void visit(LabeledStatement n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ":"
	 * f2 ::= Statement()
	 */
	public void visit(SimpleLabeledStatement n);

	/**
	 * f0 ::= <CASE>
	 * f1 ::= ConstantExpression()
	 * f2 ::= ":"
	 * f3 ::= Statement()
	 */
	public void visit(CaseLabeledStatement n);

	/**
	 * f0 ::= <DFLT>
	 * f1 ::= ":"
	 * f2 ::= Statement()
	 */
	public void visit(DefaultLabeledStatement n);

	/**
	 * f0 ::= ( Expression() )?
	 * f1 ::= ";"
	 */
	public void visit(ExpressionStatement n);

	/**
	 * f0 ::= "{"
	 * f1 ::= ( CompoundStatementElement() )*
	 * f2 ::= "}"
	 */
	public void visit(CompoundStatement n);

	/**
	 * f0 ::= Declaration()
	 * | Statement()
	 */
	public void visit(CompoundStatementElement n);

	/**
	 * f0 ::= IfStatement()
	 * | SwitchStatement()
	 */
	public void visit(SelectionStatement n);

	/**
	 * f0 ::= <IF>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 * f4 ::= Statement()
	 * f5 ::= ( <ELSE> Statement() )?
	 */
	public void visit(IfStatement n);

	/**
	 * f0 ::= <SWITCH>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 * f4 ::= Statement()
	 */
	public void visit(SwitchStatement n);

	/**
	 * f0 ::= WhileStatement()
	 * | DoStatement()
	 * | ForStatement()
	 */
	public void visit(IterationStatement n);

	/**
	 * f0 ::= <WHILE>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 * f4 ::= Statement()
	 */
	public void visit(WhileStatement n);

	/**
	 * f0 ::= <DO>
	 * f1 ::= Statement()
	 * f2 ::= <WHILE>
	 * f3 ::= "("
	 * f4 ::= Expression()
	 * f5 ::= ")"
	 * f6 ::= ";"
	 */
	public void visit(DoStatement n);

	/**
	 * f0 ::= <FOR>
	 * f1 ::= "("
	 * f2 ::= ( Expression() )?
	 * f3 ::= ";"
	 * f4 ::= ( Expression() )?
	 * f5 ::= ";"
	 * f6 ::= ( Expression() )?
	 * f7 ::= ")"
	 * f8 ::= Statement()
	 */
	public void visit(ForStatement n);

	/**
	 * f0 ::= GotoStatement()
	 * | ContinueStatement()
	 * | BreakStatement()
	 * | ReturnStatement()
	 */
	public void visit(JumpStatement n);

	/**
	 * f0 ::= <GOTO>
	 * f1 ::= <IDENTIFIER>
	 * f2 ::= ";"
	 */
	public void visit(GotoStatement n);

	/**
	 * f0 ::= <CONTINUE>
	 * f1 ::= ";"
	 */
	public void visit(ContinueStatement n);

	/**
	 * f0 ::= <BREAK>
	 * f1 ::= ";"
	 */
	public void visit(BreakStatement n);

	/**
	 * f0 ::= <RETURN>
	 * f1 ::= ( Expression() )?
	 * f2 ::= ";"
	 */
	public void visit(ReturnStatement n);

	/**
	 * f0 ::= AssignmentExpression()
	 * f1 ::= ( "," AssignmentExpression() )*
	 */
	public void visit(Expression n);

	/**
	 * f0 ::= NonConditionalExpression()
	 * | ConditionalExpression()
	 */
	public void visit(AssignmentExpression n);

	/**
	 * f0 ::= UnaryExpression()
	 * f1 ::= AssignmentOperator()
	 * f2 ::= AssignmentExpression()
	 */
	public void visit(NonConditionalExpression n);

	/**
	 * f0 ::= "="
	 * | "*="
	 * | "/="
	 * | "%="
	 * | "+="
	 * | "-="
	 * | "<<="
	 * | ">>="
	 * | "&="
	 * | "^="
	 * | "|="
	 */
	public void visit(AssignmentOperator n);

	/**
	 * f0 ::= LogicalORExpression()
	 * f1 ::= ( "?" Expression() ":" ConditionalExpression() )?
	 */
	public void visit(ConditionalExpression n);

	/**
	 * f0 ::= ConditionalExpression()
	 */
	public void visit(ConstantExpression n);

	/**
	 * f0 ::= LogicalANDExpression()
	 * f1 ::= ( "||" LogicalORExpression() )?
	 */
	public void visit(LogicalORExpression n);

	/**
	 * f0 ::= InclusiveORExpression()
	 * f1 ::= ( "&&" LogicalANDExpression() )?
	 */
	public void visit(LogicalANDExpression n);

	/**
	 * f0 ::= ExclusiveORExpression()
	 * f1 ::= ( "|" InclusiveORExpression() )?
	 */
	public void visit(InclusiveORExpression n);

	/**
	 * f0 ::= ANDExpression()
	 * f1 ::= ( "^" ExclusiveORExpression() )?
	 */
	public void visit(ExclusiveORExpression n);

	/**
	 * f0 ::= EqualityExpression()
	 * f1 ::= ( "&" ANDExpression() )?
	 */
	public void visit(ANDExpression n);

	/**
	 * f0 ::= RelationalExpression()
	 * f1 ::= ( EqualOptionalExpression() )?
	 */
	public void visit(EqualityExpression n);

	/**
	 * f0 ::= EqualExpression()
	 * | NonEqualExpression()
	 */
	public void visit(EqualOptionalExpression n);

	/**
	 * f0 ::= "=="
	 * f1 ::= EqualityExpression()
	 */
	public void visit(EqualExpression n);

	/**
	 * f0 ::= "!="
	 * f1 ::= EqualityExpression()
	 */
	public void visit(NonEqualExpression n);

	/**
	 * f0 ::= ShiftExpression()
	 * f1 ::= ( RelationalOptionalExpression() )?
	 */
	public void visit(RelationalExpression n);

	/**
	 * f0 ::= RelationalLTExpression()
	 * | RelationalGTExpression()
	 * | RelationalLEExpression()
	 * | RelationalGEExpression()
	 */
	public void visit(RelationalOptionalExpression n);

	/**
	 * f0 ::= "<"
	 * f1 ::= RelationalExpression()
	 */
	public void visit(RelationalLTExpression n);

	/**
	 * f0 ::= ">"
	 * f1 ::= RelationalExpression()
	 */
	public void visit(RelationalGTExpression n);

	/**
	 * f0 ::= "<="
	 * f1 ::= RelationalExpression()
	 */
	public void visit(RelationalLEExpression n);

	/**
	 * f0 ::= ">="
	 * f1 ::= RelationalExpression()
	 */
	public void visit(RelationalGEExpression n);

	/**
	 * f0 ::= AdditiveExpression()
	 * f1 ::= ( ShiftOptionalExpression() )?
	 */
	public void visit(ShiftExpression n);

	/**
	 * f0 ::= ShiftLeftExpression()
	 * | ShiftRightExpression()
	 */
	public void visit(ShiftOptionalExpression n);

	/**
	 * f0 ::= ">>"
	 * f1 ::= ShiftExpression()
	 */
	public void visit(ShiftLeftExpression n);

	/**
	 * f0 ::= "<<"
	 * f1 ::= ShiftExpression()
	 */
	public void visit(ShiftRightExpression n);

	/**
	 * f0 ::= MultiplicativeExpression()
	 * f1 ::= ( AdditiveOptionalExpression() )?
	 */
	public void visit(AdditiveExpression n);

	/**
	 * f0 ::= AdditivePlusExpression()
	 * | AdditiveMinusExpression()
	 */
	public void visit(AdditiveOptionalExpression n);

	/**
	 * f0 ::= "+"
	 * f1 ::= AdditiveExpression()
	 */
	public void visit(AdditivePlusExpression n);

	/**
	 * f0 ::= "-"
	 * f1 ::= AdditiveExpression()
	 */
	public void visit(AdditiveMinusExpression n);

	/**
	 * f0 ::= CastExpression()
	 * f1 ::= ( MultiplicativeOptionalExpression() )?
	 */
	public void visit(MultiplicativeExpression n);

	/**
	 * f0 ::= MultiplicativeMultiExpression()
	 * | MultiplicativeDivExpression()
	 * | MultiplicativeModExpression()
	 */
	public void visit(MultiplicativeOptionalExpression n);

	/**
	 * f0 ::= "*"
	 * f1 ::= MultiplicativeExpression()
	 */
	public void visit(MultiplicativeMultiExpression n);

	/**
	 * f0 ::= "/"
	 * f1 ::= MultiplicativeExpression()
	 */
	public void visit(MultiplicativeDivExpression n);

	/**
	 * f0 ::= "%"
	 * f1 ::= MultiplicativeExpression()
	 */
	public void visit(MultiplicativeModExpression n);

	/**
	 * f0 ::= CastExpressionTyped()
	 * | UnaryExpression()
	 */
	public void visit(CastExpression n);

	/**
	 * f0 ::= "("
	 * f1 ::= TypeName()
	 * f2 ::= ")"
	 * f3 ::= CastExpression()
	 */
	public void visit(CastExpressionTyped n);

	/**
	 * f0 ::= UnaryExpressionPreIncrement()
	 * | UnaryExpressionPreDecrement()
	 * | UnarySizeofExpression()
	 * | UnaryCastExpression()
	 * | PostfixExpression()
	 */
	public void visit(UnaryExpression n);

	/**
	 * f0 ::= "++"
	 * f1 ::= UnaryExpression()
	 */
	public void visit(UnaryExpressionPreIncrement n);

	/**
	 * f0 ::= "--"
	 * f1 ::= UnaryExpression()
	 */
	public void visit(UnaryExpressionPreDecrement n);

	/**
	 * f0 ::= UnaryOperator()
	 * f1 ::= CastExpression()
	 */
	public void visit(UnaryCastExpression n);

	/**
	 * f0 ::= SizeofTypeName()
	 * | SizeofUnaryExpression()
	 */
	public void visit(UnarySizeofExpression n);

	/**
	 * f0 ::= <SIZEOF>
	 * f1 ::= UnaryExpression()
	 */
	public void visit(SizeofUnaryExpression n);

	/**
	 * f0 ::= <SIZEOF>
	 * f1 ::= "("
	 * f2 ::= TypeName()
	 * f3 ::= ")"
	 */
	public void visit(SizeofTypeName n);

	/**
	 * f0 ::= "&"
	 * | "*"
	 * | "+"
	 * | "-"
	 * | "~"
	 * | "!"
	 */
	public void visit(UnaryOperator n);

	/**
	 * f0 ::= PrimaryExpression()
	 * f1 ::= PostfixOperationsList()
	 */
	public void visit(PostfixExpression n);

	/**
	 * f0 ::= ( APostfixOperation() )*
	 */
	public void visit(PostfixOperationsList n);

	/**
	 * f0 ::= BracketExpression()
	 * | ArgumentList()
	 * | DotId()
	 * | ArrowId()
	 * | PlusPlus()
	 * | MinusMinus()
	 */
	public void visit(APostfixOperation n);

	/**
	 * f0 ::= "++"
	 */
	public void visit(PlusPlus n);

	/**
	 * f0 ::= "--"
	 */
	public void visit(MinusMinus n);

	/**
	 * f0 ::= "["
	 * f1 ::= Expression()
	 * f2 ::= "]"
	 */
	public void visit(BracketExpression n);

	/**
	 * f0 ::= "("
	 * f1 ::= ( ExpressionList() )?
	 * f2 ::= ")"
	 */
	public void visit(ArgumentList n);

	/**
	 * f0 ::= "."
	 * f1 ::= <IDENTIFIER>
	 */
	public void visit(DotId n);

	/**
	 * f0 ::= "->"
	 * f1 ::= <IDENTIFIER>
	 */
	public void visit(ArrowId n);

	/**
	 * f0 ::= <IDENTIFIER>
	 * | Constant()
	 * | ExpressionClosed()
	 */
	public void visit(PrimaryExpression n);

	/**
	 * f0 ::= "("
	 * f1 ::= Expression()
	 * f2 ::= ")"
	 */
	public void visit(ExpressionClosed n);

	/**
	 * f0 ::= AssignmentExpression()
	 * f1 ::= ( "," AssignmentExpression() )*
	 */
	public void visit(ExpressionList n);

	/**
	 * f0 ::= <INTEGER_LITERAL>
	 * | <FLOATING_POINT_LITERAL>
	 * | <CHARACTER_LITERAL>
	 * | ( <STRING_LITERAL> )+
	 */
	public void visit(Constant n);

	public void visit(CallStatement n);

	public void visit(DummyFlushDirective n);

	public void visit(SimplePrimaryExpression n);

	public void visit(PreCallNode n);

	public void visit(PostCallNode n);
}
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
 * All GJ visitors must implement this interface.
 */

public interface GJVisitor<R, A> {

	//
	// GJ Auto class visitors
	//

	public R visit(NodeList n, A argu);

	public R visit(NodeListOptional n, A argu);

	public R visit(NodeOptional n, A argu);

	public R visit(NodeSequence n, A argu);

	public R visit(NodeChoice n, A argu);

	public R visit(NodeToken n, A argu);

	//
	// User-generated visitor methods below
	//

	/**
	 * Special Nodes: BeginNode and EndNode
	 */
	public R visit(BeginNode n, A argu);

	public R visit(EndNode n, A argu);

	/**
	 * f0 ::= ( ElementsOfTranslation() )+
	 */
	public R visit(TranslationUnit n, A argu);

	/**
	 * f0 ::= ExternalDeclaration()
	 * | UnknownCpp()
	 * | UnknownPragma()
	 */
	public R visit(ElementsOfTranslation n, A argu);

	/**
	 * f0 ::= Declaration()
	 * | FunctionDefinition()
	 * | DeclareReductionDirective()
	 * | ThreadPrivateDirective()
	 */
	public R visit(ExternalDeclaration n, A argu);

	/**
	 * f0 ::= ( DeclarationSpecifiers() )?
	 * f1 ::= Declarator()
	 * f2 ::= ( DeclarationList() )?
	 * f3 ::= CompoundStatement()
	 */
	public R visit(FunctionDefinition n, A argu);

	/**
	 * f0 ::= DeclarationSpecifiers()
	 * f1 ::= ( InitDeclaratorList() )?
	 * f2 ::= ";"
	 */
	public R visit(Declaration n, A argu);

	/**
	 * f0 ::= ( Declaration() )+
	 */
	public R visit(DeclarationList n, A argu);

	/**
	 * f0 ::= ( ADeclarationSpecifier() )+
	 */
	public R visit(DeclarationSpecifiers n, A argu);

	/**
	 * f0 ::= StorageClassSpecifier()
	 * | TypeSpecifier()
	 * | TypeQualifier()
	 */
	public R visit(ADeclarationSpecifier n, A argu);

	/**
	 * f0 ::= <AUTO>
	 * | <REGISTER>
	 * | <STATIC>
	 * | <EXTERN>
	 * | <TYPEDEF>
	 */
	public R visit(StorageClassSpecifier n, A argu);

	/**
	 * f0 ::= ( <VOID> | <CHAR> | <SHORT> | <INT> | <LONG> | <FLOAT> | <DOUBLE>
	 * |
	 * <SIGNED> | <UNSIGNED> | StructOrUnionSpecifier() | EnumSpecifier() |
	 * TypedefName() )
	 */
	public R visit(TypeSpecifier n, A argu);

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
	public R visit(TypeQualifier n, A argu);

	/**
	 * 
	 * f0 ::= ( StructOrUnionSpecifierWithList() |
	 * StructOrUnionSpecifierWithId()
	 * )
	 */
	public R visit(StructOrUnionSpecifier n, A argu);

	/**
	 * f0 ::= StructOrUnion()
	 * f1 ::= ( <IDENTIFIER> )?
	 * f2 ::= "{"
	 * f3 ::= StructDeclarationList()
	 * f4 ::= "}"
	 */
	public R visit(StructOrUnionSpecifierWithList n, A argu);

	/**
	 * f0 ::= StructOrUnion()
	 * f1 ::= <IDENTIFIER>
	 */
	public R visit(StructOrUnionSpecifierWithId n, A argu);

	/**
	 * f0 ::= <STRUCT>
	 * | <UNION>
	 */
	public R visit(StructOrUnion n, A argu);

	/**
	 * f0 ::= ( StructDeclaration() )+
	 */
	public R visit(StructDeclarationList n, A argu);

	/**
	 * f0 ::= InitDeclarator()
	 * f1 ::= ( "," InitDeclarator() )*
	 */
	public R visit(InitDeclaratorList n, A argu);

	/**
	 * f0 ::= Declarator()
	 * f1 ::= ( "=" Initializer() )?
	 */
	public R visit(InitDeclarator n, A argu);

	/**
	 * f0 ::= SpecifierQualifierList()
	 * f1 ::= StructDeclaratorList()
	 * f2 ::= ";"
	 */
	public R visit(StructDeclaration n, A argu);

	/**
	 * f0 ::= ( ASpecifierQualifier() )+
	 */
	public R visit(SpecifierQualifierList n, A argu);

	/**
	 * f0 ::= TypeSpecifier()
	 * | TypeQualifier()
	 */
	public R visit(ASpecifierQualifier n, A argu);

	/**
	 * f0 ::= StructDeclarator()
	 * f1 ::= ( "," StructDeclarator() )*
	 */
	public R visit(StructDeclaratorList n, A argu);

	/**
	 * f0 ::= StructDeclaratorWithDeclarator()
	 * | StructDeclaratorWithBitField()
	 */
	public R visit(StructDeclarator n, A argu);

	/**
	 * f0 ::= Declarator()
	 * f1 ::= ( ":" ConstantExpression() )?
	 */
	public R visit(StructDeclaratorWithDeclarator n, A argu);

	/**
	 * f0 ::= ":"
	 * f1 ::= ConstantExpression()
	 */
	public R visit(StructDeclaratorWithBitField n, A argu);

	/**
	 * f0 ::= EnumSpecifierWithList()
	 * | EnumSpecifierWithId()
	 */
	public R visit(EnumSpecifier n, A argu);

	/**
	 * f0 ::= <ENUM>
	 * f1 ::= ( <IDENTIFIER> )?
	 * f2 ::= "{"
	 * f3 ::= EnumeratorList()
	 * f4 ::= "}"
	 */
	public R visit(EnumSpecifierWithList n, A argu);

	/**
	 * f0 ::= <ENUM>
	 * f1 ::= <IDENTIFIER>
	 */
	public R visit(EnumSpecifierWithId n, A argu);

	/**
	 * f0 ::= Enumerator()
	 * f1 ::= ( "," Enumerator() )*
	 */
	public R visit(EnumeratorList n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ( "=" ConstantExpression() )?
	 */
	public R visit(Enumerator n, A argu);

	/**
	 * f0 ::= ( Pointer() )?
	 * f1 ::= DirectDeclarator()
	 */
	public R visit(Declarator n, A argu);

	/**
	 * f0 ::= IdentifierOrDeclarator()
	 * f1 ::= DeclaratorOpList()
	 */
	public R visit(DirectDeclarator n, A argu);

	/**
	 * f0 ::= ( ADeclaratorOp() )*
	 */
	public R visit(DeclaratorOpList n, A argu);

	/**
	 * f0 ::= DimensionSize()
	 * | ParameterTypeListClosed()
	 * | OldParameterListClosed()
	 */
	public R visit(ADeclaratorOp n, A argu);

	/**
	 * f0 ::= "["
	 * f1 ::= ( ConstantExpression() )?
	 * f2 ::= "]"
	 */
	public R visit(DimensionSize n, A argu);

	/**
	 * f0 ::= "("
	 * f1 ::= ( ParameterTypeList() )?
	 * f2 ::= ")"
	 */
	public R visit(ParameterTypeListClosed n, A argu);

	/**
	 * f0 ::= "("
	 * f1 ::= ( OldParameterList() )?
	 * f2 ::= ")"
	 */
	public R visit(OldParameterListClosed n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * | "(" Declarator() ")"
	 */
	public R visit(IdentifierOrDeclarator n, A argu);

	/**
	 * f0 ::= ( "*" | "^" )
	 * f1 ::= ( TypeQualifierList() )?
	 * f2 ::= ( Pointer() )?
	 */
	public R visit(Pointer n, A argu);

	/**
	 * f0 ::= ( TypeQualifier() )+
	 */
	public R visit(TypeQualifierList n, A argu);

	/**
	 * f0 ::= ParameterList()
	 * f1 ::= ( "," "..." )?
	 */
	public R visit(ParameterTypeList n, A argu);

	/**
	 * f0 ::= ParameterDeclaration()
	 * f1 ::= ( "," ParameterDeclaration() )*
	 */
	public R visit(ParameterList n, A argu);

	/**
	 * f0 ::= DeclarationSpecifiers()
	 * f1 ::= ParameterAbstraction()
	 */
	public R visit(ParameterDeclaration n, A argu);

	/**
	 * f0 ::= Declarator()
	 * | AbstractOptionalDeclarator()
	 */
	public R visit(ParameterAbstraction n, A argu);

	/**
	 * f0 ::= ( AbstractDeclarator() )?
	 */
	public R visit(AbstractOptionalDeclarator n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ( "," <IDENTIFIER> )*
	 */
	public R visit(OldParameterList n, A argu);

	/**
	 * f0 ::= AssignmentExpression()
	 * | ArrayInitializer()
	 */
	public R visit(Initializer n, A argu);

	/**
	 * f0 ::= "{"
	 * f1 ::= InitializerList()
	 * f2 ::= ( "," )?
	 * f3 ::= "}"
	 */
	public R visit(ArrayInitializer n, A argu);

	/**
	 * f0 ::= Initializer()
	 * f1 ::= ( "," Initializer() )*
	 */
	public R visit(InitializerList n, A argu);

	/**
	 * f0 ::= SpecifierQualifierList()
	 * f1 ::= ( AbstractDeclarator() )?
	 */
	public R visit(TypeName n, A argu);

	/**
	 * f0 ::= AbstractDeclaratorWithPointer()
	 * | DirectAbstractDeclarator()
	 */
	public R visit(AbstractDeclarator n, A argu);

	/**
	 * f0 ::= Pointer()
	 * f1 ::= ( DirectAbstractDeclarator() )?
	 */
	public R visit(AbstractDeclaratorWithPointer n, A argu);

	/**
	 * f0 ::= AbstractDimensionOrParameter()
	 * f1 ::= DimensionOrParameterList()
	 */
	public R visit(DirectAbstractDeclarator n, A argu);

	/**
	 * f0 ::= AbstractDeclaratorClosed()
	 * | DimensionSize()
	 * | ParameterTypeListClosed()
	 */
	public R visit(AbstractDimensionOrParameter n, A argu);

	/**
	 * f0 ::= "("
	 * f1 ::= AbstractDeclarator()
	 * f2 ::= ")"
	 */
	public R visit(AbstractDeclaratorClosed n, A argu);

	/**
	 * f0 ::= ( ADimensionOrParameter() )*
	 */
	public R visit(DimensionOrParameterList n, A argu);

	/**
	 * f0 ::= DimensionSize()
	 * | ParameterTypeListClosed()
	 */
	public R visit(ADimensionOrParameter n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 */
	public R visit(TypedefName n, A argu);

	/**
	 * f0 ::= ( LabeledStatement() | ExpressionStatement() | CompoundStatement()
	 * | SelectionStatement() | IterationStatement() | JumpStatement() |
	 * UnknownPragma() | OmpConstruct() | OmpDirective() | UnknownCpp() )
	 */
	public R visit(Statement n, A argu);

	/**
	 * f0 ::= "#"
	 * f1 ::= <UNKNOWN_CPP>
	 */
	public R visit(UnknownCpp n, A argu);

	/**
	 * f0 ::= <OMP_CR>
	 * | <OMP_NL>
	 */
	public R visit(OmpEol n, A argu);

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
	public R visit(OmpConstruct n, A argu);

	/**
	 * f0 ::= BarrierDirective()
	 * | TaskwaitDirective()
	 * | TaskyieldDirective()
	 * | FlushDirective()
	 */
	public R visit(OmpDirective n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= ParallelDirective()
	 * f2 ::= Statement()
	 */
	public R visit(ParallelConstruct n, A argu);

	/**
	 * f0 ::= "#"
	 * f1 ::= <PRAGMA>
	 * f2 ::= <OMP>
	 */
	public R visit(OmpPragma n, A argu);

	/**
	 * f0 ::= "#"
	 * f1 ::= <PRAGMA>
	 * f2 ::= <UNKNOWN_CPP>
	 */
	public R visit(UnknownPragma n, A argu);

	/**
	 * f0 ::= <PARALLEL>
	 * f1 ::= UniqueParallelOrDataClauseList()
	 * f2 ::= OmpEol()
	 */
	public R visit(ParallelDirective n, A argu);

	/**
	 * f0 ::= ( AUniqueParallelOrDataClause() )*
	 */
	public R visit(UniqueParallelOrDataClauseList n, A argu);

	/**
	 * f0 ::= UniqueParallelClause()
	 * | DataClause()
	 */
	public R visit(AUniqueParallelOrDataClause n, A argu);

	/**
	 * f0 ::= IfClause()
	 * | NumThreadsClause()
	 */
	public R visit(UniqueParallelClause n, A argu);

	/**
	 * f0 ::= <IF>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 */
	public R visit(IfClause n, A argu);

	/**
	 * f0 ::= <NUM_THREADS>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 */
	public R visit(NumThreadsClause n, A argu);

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
	public R visit(DataClause n, A argu);

	/**
	 * f0 ::= <PRIVATE>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public R visit(OmpPrivateClause n, A argu);

	/**
	 * f0 ::= <FIRSTPRIVATE>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public R visit(OmpFirstPrivateClause n, A argu);

	/**
	 * f0 ::= <LASTPRIVATE>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public R visit(OmpLastPrivateClause n, A argu);

	/**
	 * f0 ::= <SHARED>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public R visit(OmpSharedClause n, A argu);

	/**
	 * f0 ::= <COPYIN>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public R visit(OmpCopyinClause n, A argu);

	/**
	 * f0 ::= <DFLT>
	 * f1 ::= "("
	 * f2 ::= <SHARED>
	 * f3 ::= ")"
	 */
	public R visit(OmpDfltSharedClause n, A argu);

	/**
	 * f0 ::= <DFLT>
	 * f1 ::= "("
	 * f2 ::= <NONE>
	 * f3 ::= ")"
	 */
	public R visit(OmpDfltNoneClause n, A argu);

	/**
	 * f0 ::= <REDUCTION>
	 * f1 ::= "("
	 * f2 ::= ReductionOp()
	 * f3 ::= ":"
	 * f4 ::= VariableList()
	 * f5 ::= ")"
	 */
	public R visit(OmpReductionClause n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= ForDirective()
	 * f2 ::= OmpForHeader()
	 * f3 ::= Statement()
	 */
	public R visit(ForConstruct n, A argu);

	/**
	 * f0 ::= <FOR>
	 * f1 ::= UniqueForOrDataOrNowaitClauseList()
	 * f2 ::= OmpEol()
	 */
	public R visit(ForDirective n, A argu);

	/**
	 * f0 ::= ( AUniqueForOrDataOrNowaitClause() )*
	 */
	public R visit(UniqueForOrDataOrNowaitClauseList n, A argu);

	/**
	 * f0 ::= UniqueForClause()
	 * | DataClause()
	 * | NowaitClause()
	 */
	public R visit(AUniqueForOrDataOrNowaitClause n, A argu);

	/**
	 * f0 ::= <NOWAIT>
	 */
	public R visit(NowaitClause n, A argu);

	/**
	 * f0 ::= <ORDERED>
	 * | UniqueForClauseSchedule()
	 * | UniqueForCollapse()
	 */
	public R visit(UniqueForClause n, A argu);

	/**
	 * f0 ::= <COLLAPSE>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 */
	public R visit(UniqueForCollapse n, A argu);

	/**
	 * f0 ::= <SCHEDULE>
	 * f1 ::= "("
	 * f2 ::= ScheduleKind()
	 * f3 ::= ( "," Expression() )?
	 * f4 ::= ")"
	 */
	public R visit(UniqueForClauseSchedule n, A argu);

	/**
	 * f0 ::= <STATIC>
	 * | <DYNAMIC>
	 * | <GUIDED>
	 * | <RUNTIME>
	 */
	public R visit(ScheduleKind n, A argu);

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
	public R visit(OmpForHeader n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "="
	 * f2 ::= Expression()
	 */
	public R visit(OmpForInitExpression n, A argu);

	/**
	 * f0 ::= OmpForLTCondition()
	 * | OmpForLECondition()
	 * | OmpForGTCondition()
	 * | OmpForGECondition()
	 */
	public R visit(OmpForCondition n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "<"
	 * f2 ::= Expression()
	 */
	public R visit(OmpForLTCondition n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "<="
	 * f2 ::= Expression()
	 */
	public R visit(OmpForLECondition n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ">"
	 * f2 ::= Expression()
	 */
	public R visit(OmpForGTCondition n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ">="
	 * f2 ::= Expression()
	 */
	public R visit(OmpForGECondition n, A argu);

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
	public R visit(OmpForReinitExpression n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "++"
	 */
	public R visit(PostIncrementId n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "--"
	 */
	public R visit(PostDecrementId n, A argu);

	/**
	 * f0 ::= "++"
	 * f1 ::= <IDENTIFIER>
	 */
	public R visit(PreIncrementId n, A argu);

	/**
	 * f0 ::= "--"
	 * f1 ::= <IDENTIFIER>
	 */
	public R visit(PreDecrementId n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "+="
	 * f2 ::= Expression()
	 */
	public R visit(ShortAssignPlus n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "-="
	 * f2 ::= Expression()
	 */
	public R visit(ShortAssignMinus n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "="
	 * f2 ::= <IDENTIFIER>
	 * f3 ::= "+"
	 * f4 ::= AdditiveExpression()
	 */
	public R visit(OmpForAdditive n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "="
	 * f2 ::= <IDENTIFIER>
	 * f3 ::= "-"
	 * f4 ::= AdditiveExpression()
	 */
	public R visit(OmpForSubtractive n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= "="
	 * f2 ::= MultiplicativeExpression()
	 * f3 ::= "+"
	 * f4 ::= <IDENTIFIER>
	 */
	public R visit(OmpForMultiplicative n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <SECTIONS>
	 * f2 ::= NowaitDataClauseList()
	 * f3 ::= OmpEol()
	 * f4 ::= SectionsScope()
	 */
	public R visit(SectionsConstruct n, A argu);

	/**
	 * f0 ::= ( ANowaitDataClause() )*
	 */
	public R visit(NowaitDataClauseList n, A argu);

	/**
	 * f0 ::= NowaitClause()
	 * | DataClause()
	 */
	public R visit(ANowaitDataClause n, A argu);

	/**
	 * f0 ::= "{"
	 * f1 ::= ( Statement() )?
	 * f2 ::= ( ASection() )*
	 * f3 ::= "}"
	 */
	public R visit(SectionsScope n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <SECTION>
	 * f2 ::= OmpEol()
	 * f3 ::= Statement()
	 */
	public R visit(ASection n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <SINGLE>
	 * f2 ::= SingleClauseList()
	 * f3 ::= OmpEol()
	 * f4 ::= Statement()
	 */
	public R visit(SingleConstruct n, A argu);

	/**
	 * f0 ::= ( ASingleClause() )*
	 */
	public R visit(SingleClauseList n, A argu);

	/**
	 * f0 ::= NowaitClause()
	 * | DataClause()
	 * | OmpCopyPrivateClause()
	 */
	public R visit(ASingleClause n, A argu);

	/**
	 * f0 ::= <COPYPRIVATE>
	 * f1 ::= "("
	 * f2 ::= VariableList()
	 * f3 ::= ")"
	 */
	public R visit(OmpCopyPrivateClause n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <TASK>
	 * f2 ::= ( TaskClause() )*
	 * f3 ::= OmpEol()
	 * f4 ::= Statement()
	 */
	public R visit(TaskConstruct n, A argu);

	/**
	 * f0 ::= DataClause()
	 * | UniqueTaskClause()
	 */
	public R visit(TaskClause n, A argu);

	/**
	 * f0 ::= IfClause()
	 * | FinalClause()
	 * | UntiedClause()
	 * | MergeableClause()
	 */
	public R visit(UniqueTaskClause n, A argu);

	/**
	 * f0 ::= <FINAL>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 */
	public R visit(FinalClause n, A argu);

	/**
	 * f0 ::= <UNTIED>
	 */
	public R visit(UntiedClause n, A argu);

	/**
	 * f0 ::= <MERGEABLE>
	 */
	public R visit(MergeableClause n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <PARALLEL>
	 * f2 ::= <FOR>
	 * f3 ::= UniqueParallelOrUniqueForOrDataClauseList()
	 * f4 ::= OmpEol()
	 * f5 ::= OmpForHeader()
	 * f6 ::= Statement()
	 */
	public R visit(ParallelForConstruct n, A argu);

	/**
	 * f0 ::= ( AUniqueParallelOrUniqueForOrDataClause() )*
	 */
	public R visit(UniqueParallelOrUniqueForOrDataClauseList n, A argu);

	/**
	 * f0 ::= UniqueParallelClause()
	 * | UniqueForClause()
	 * | DataClause()
	 */
	public R visit(AUniqueParallelOrUniqueForOrDataClause n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <PARALLEL>
	 * f2 ::= <SECTIONS>
	 * f3 ::= UniqueParallelOrDataClauseList()
	 * f4 ::= OmpEol()
	 * f5 ::= SectionsScope()
	 */
	public R visit(ParallelSectionsConstruct n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <MASTER>
	 * f2 ::= OmpEol()
	 * f3 ::= Statement()
	 */
	public R visit(MasterConstruct n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <CRITICAL>
	 * f2 ::= ( RegionPhrase() )?
	 * f3 ::= OmpEol()
	 * f4 ::= Statement()
	 */
	public R visit(CriticalConstruct n, A argu);

	/**
	 * f0 ::= "("
	 * f1 ::= <IDENTIFIER>
	 * f2 ::= ")"
	 */
	public R visit(RegionPhrase n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <ATOMIC>
	 * f2 ::= ( AtomicClause() )?
	 * f3 ::= OmpEol()
	 * f4 ::= ExpressionStatement()
	 */
	public R visit(AtomicConstruct n, A argu);

	/**
	 * f0 ::= <READ>
	 * | <WRITE>
	 * | <UPDATE>
	 * | <CAPTURE>
	 */
	public R visit(AtomicClause n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <FLUSH>
	 * f2 ::= ( FlushVars() )?
	 * f3 ::= OmpEol()
	 */
	public R visit(FlushDirective n, A argu);

	/**
	 * f0 ::= "("
	 * f1 ::= VariableList()
	 * f2 ::= ")"
	 */
	public R visit(FlushVars n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <ORDERED>
	 * f2 ::= OmpEol()
	 * f3 ::= Statement()
	 */
	public R visit(OrderedConstruct n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <BARRIER>
	 * f2 ::= OmpEol()
	 */
	public R visit(BarrierDirective n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <TASKWAIT>
	 * f2 ::= OmpEol()
	 */
	public R visit(TaskwaitDirective n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <TASKYIELD>
	 * f2 ::= OmpEol()
	 */
	public R visit(TaskyieldDirective n, A argu);

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <THREADPRIVATE>
	 * f2 ::= "("
	 * f3 ::= VariableList()
	 * f4 ::= ")"
	 * f5 ::= OmpEol()
	 */
	public R visit(ThreadPrivateDirective n, A argu);

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
	public R visit(DeclareReductionDirective n, A argu);

	/**
	 * f0 ::= ( TypeSpecifier() )*
	 */
	public R visit(ReductionTypeList n, A argu);

	/**
	 * f0 ::= AssignInitializerClause()
	 * | ArgumentInitializerClause()
	 */
	public R visit(InitializerClause n, A argu);

	/**
	 * f0 ::= <INITIALIZER>
	 * f1 ::= "("
	 * f2 ::= <IDENTIFIER>
	 * f3 ::= "="
	 * f4 ::= Initializer()
	 * f5 ::= ")"
	 */
	public R visit(AssignInitializerClause n, A argu);

	/**
	 * f0 ::= <INITIALIZER>
	 * f1 ::= "("
	 * f2 ::= <IDENTIFIER>
	 * f3 ::= "("
	 * f4 ::= ExpressionList()
	 * f5 ::= ")"
	 * f6 ::= ")"
	 */
	public R visit(ArgumentInitializerClause n, A argu);

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
	public R visit(ReductionOp n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ( "," <IDENTIFIER> )*
	 */
	public R visit(VariableList n, A argu);

	/**
	 * f0 ::= SimpleLabeledStatement()
	 * | CaseLabeledStatement()
	 * | DefaultLabeledStatement()
	 */
	public R visit(LabeledStatement n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * f1 ::= ":"
	 * f2 ::= Statement()
	 */
	public R visit(SimpleLabeledStatement n, A argu);

	/**
	 * f0 ::= <CASE>
	 * f1 ::= ConstantExpression()
	 * f2 ::= ":"
	 * f3 ::= Statement()
	 */
	public R visit(CaseLabeledStatement n, A argu);

	/**
	 * f0 ::= <DFLT>
	 * f1 ::= ":"
	 * f2 ::= Statement()
	 */
	public R visit(DefaultLabeledStatement n, A argu);

	/**
	 * f0 ::= ( Expression() )?
	 * f1 ::= ";"
	 */
	public R visit(ExpressionStatement n, A argu);

	/**
	 * f0 ::= "{"
	 * f1 ::= ( CompoundStatementElement() )*
	 * f2 ::= "}"
	 */
	public R visit(CompoundStatement n, A argu);

	/**
	 * f0 ::= Declaration()
	 * | Statement()
	 */
	public R visit(CompoundStatementElement n, A argu);

	/**
	 * f0 ::= IfStatement()
	 * | SwitchStatement()
	 */
	public R visit(SelectionStatement n, A argu);

	/**
	 * f0 ::= <IF>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 * f4 ::= Statement()
	 * f5 ::= ( <ELSE> Statement() )?
	 */
	public R visit(IfStatement n, A argu);

	/**
	 * f0 ::= <SWITCH>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 * f4 ::= Statement()
	 */
	public R visit(SwitchStatement n, A argu);

	/**
	 * f0 ::= WhileStatement()
	 * | DoStatement()
	 * | ForStatement()
	 */
	public R visit(IterationStatement n, A argu);

	/**
	 * f0 ::= <WHILE>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 * f4 ::= Statement()
	 */
	public R visit(WhileStatement n, A argu);

	/**
	 * f0 ::= <DO>
	 * f1 ::= Statement()
	 * f2 ::= <WHILE>
	 * f3 ::= "("
	 * f4 ::= Expression()
	 * f5 ::= ")"
	 * f6 ::= ";"
	 */
	public R visit(DoStatement n, A argu);

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
	public R visit(ForStatement n, A argu);

	/**
	 * f0 ::= GotoStatement()
	 * | ContinueStatement()
	 * | BreakStatement()
	 * | ReturnStatement()
	 */
	public R visit(JumpStatement n, A argu);

	/**
	 * f0 ::= <GOTO>
	 * f1 ::= <IDENTIFIER>
	 * f2 ::= ";"
	 */
	public R visit(GotoStatement n, A argu);

	/**
	 * f0 ::= <CONTINUE>
	 * f1 ::= ";"
	 */
	public R visit(ContinueStatement n, A argu);

	/**
	 * f0 ::= <BREAK>
	 * f1 ::= ";"
	 */
	public R visit(BreakStatement n, A argu);

	/**
	 * f0 ::= <RETURN>
	 * f1 ::= ( Expression() )?
	 * f2 ::= ";"
	 */
	public R visit(ReturnStatement n, A argu);

	/**
	 * f0 ::= AssignmentExpression()
	 * f1 ::= ( "," AssignmentExpression() )*
	 */
	public R visit(Expression n, A argu);

	/**
	 * f0 ::= NonConditionalExpression()
	 * | ConditionalExpression()
	 */
	public R visit(AssignmentExpression n, A argu);

	/**
	 * f0 ::= UnaryExpression()
	 * f1 ::= AssignmentOperator()
	 * f2 ::= AssignmentExpression()
	 */
	public R visit(NonConditionalExpression n, A argu);

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
	public R visit(AssignmentOperator n, A argu);

	/**
	 * f0 ::= LogicalORExpression()
	 * f1 ::= ( "?" Expression() ":" ConditionalExpression() )?
	 */
	public R visit(ConditionalExpression n, A argu);

	/**
	 * f0 ::= ConditionalExpression()
	 */
	public R visit(ConstantExpression n, A argu);

	/**
	 * f0 ::= LogicalANDExpression()
	 * f1 ::= ( "||" LogicalORExpression() )?
	 */
	public R visit(LogicalORExpression n, A argu);

	/**
	 * f0 ::= InclusiveORExpression()
	 * f1 ::= ( "&&" LogicalANDExpression() )?
	 */
	public R visit(LogicalANDExpression n, A argu);

	/**
	 * f0 ::= ExclusiveORExpression()
	 * f1 ::= ( "|" InclusiveORExpression() )?
	 */
	public R visit(InclusiveORExpression n, A argu);

	/**
	 * f0 ::= ANDExpression()
	 * f1 ::= ( "^" ExclusiveORExpression() )?
	 */
	public R visit(ExclusiveORExpression n, A argu);

	/**
	 * f0 ::= EqualityExpression()
	 * f1 ::= ( "&" ANDExpression() )?
	 */
	public R visit(ANDExpression n, A argu);

	/**
	 * f0 ::= RelationalExpression()
	 * f1 ::= ( EqualOptionalExpression() )?
	 */
	public R visit(EqualityExpression n, A argu);

	/**
	 * f0 ::= EqualExpression()
	 * | NonEqualExpression()
	 */
	public R visit(EqualOptionalExpression n, A argu);

	/**
	 * f0 ::= "=="
	 * f1 ::= EqualityExpression()
	 */
	public R visit(EqualExpression n, A argu);

	/**
	 * f0 ::= "!="
	 * f1 ::= EqualityExpression()
	 */
	public R visit(NonEqualExpression n, A argu);

	/**
	 * f0 ::= ShiftExpression()
	 * f1 ::= ( RelationalOptionalExpression() )?
	 */
	public R visit(RelationalExpression n, A argu);

	/**
	 * f0 ::= RelationalLTExpression()
	 * | RelationalGTExpression()
	 * | RelationalLEExpression()
	 * | RelationalGEExpression()
	 */
	public R visit(RelationalOptionalExpression n, A argu);

	/**
	 * f0 ::= "<"
	 * f1 ::= RelationalExpression()
	 */
	public R visit(RelationalLTExpression n, A argu);

	/**
	 * f0 ::= ">"
	 * f1 ::= RelationalExpression()
	 */
	public R visit(RelationalGTExpression n, A argu);

	/**
	 * f0 ::= "<="
	 * f1 ::= RelationalExpression()
	 */
	public R visit(RelationalLEExpression n, A argu);

	/**
	 * f0 ::= ">="
	 * f1 ::= RelationalExpression()
	 */
	public R visit(RelationalGEExpression n, A argu);

	/**
	 * f0 ::= AdditiveExpression()
	 * f1 ::= ( ShiftOptionalExpression() )?
	 */
	public R visit(ShiftExpression n, A argu);

	/**
	 * f0 ::= ShiftLeftExpression()
	 * | ShiftRightExpression()
	 */
	public R visit(ShiftOptionalExpression n, A argu);

	/**
	 * f0 ::= ">>"
	 * f1 ::= ShiftExpression()
	 */
	public R visit(ShiftLeftExpression n, A argu);

	/**
	 * f0 ::= "<<"
	 * f1 ::= ShiftExpression()
	 */
	public R visit(ShiftRightExpression n, A argu);

	/**
	 * f0 ::= MultiplicativeExpression()
	 * f1 ::= ( AdditiveOptionalExpression() )?
	 */
	public R visit(AdditiveExpression n, A argu);

	/**
	 * f0 ::= AdditivePlusExpression()
	 * | AdditiveMinusExpression()
	 */
	public R visit(AdditiveOptionalExpression n, A argu);

	/**
	 * f0 ::= "+"
	 * f1 ::= AdditiveExpression()
	 */
	public R visit(AdditivePlusExpression n, A argu);

	/**
	 * f0 ::= "-"
	 * f1 ::= AdditiveExpression()
	 */
	public R visit(AdditiveMinusExpression n, A argu);

	/**
	 * f0 ::= CastExpression()
	 * f1 ::= ( MultiplicativeOptionalExpression() )?
	 */
	public R visit(MultiplicativeExpression n, A argu);

	/**
	 * f0 ::= MultiplicativeMultiExpression()
	 * | MultiplicativeDivExpression()
	 * | MultiplicativeModExpression()
	 */
	public R visit(MultiplicativeOptionalExpression n, A argu);

	/**
	 * f0 ::= "*"
	 * f1 ::= MultiplicativeExpression()
	 */
	public R visit(MultiplicativeMultiExpression n, A argu);

	/**
	 * f0 ::= "/"
	 * f1 ::= MultiplicativeExpression()
	 */
	public R visit(MultiplicativeDivExpression n, A argu);

	/**
	 * f0 ::= "%"
	 * f1 ::= MultiplicativeExpression()
	 */
	public R visit(MultiplicativeModExpression n, A argu);

	/**
	 * f0 ::= CastExpressionTyped()
	 * | UnaryExpression()
	 */
	public R visit(CastExpression n, A argu);

	/**
	 * f0 ::= "("
	 * f1 ::= TypeName()
	 * f2 ::= ")"
	 * f3 ::= CastExpression()
	 */
	public R visit(CastExpressionTyped n, A argu);

	/**
	 * f0 ::= UnaryExpressionPreIncrement()
	 * | UnaryExpressionPreDecrement()
	 * | UnarySizeofExpression()
	 * | UnaryCastExpression()
	 * | PostfixExpression()
	 */
	public R visit(UnaryExpression n, A argu);

	/**
	 * f0 ::= "++"
	 * f1 ::= UnaryExpression()
	 */
	public R visit(UnaryExpressionPreIncrement n, A argu);

	/**
	 * f0 ::= "--"
	 * f1 ::= UnaryExpression()
	 */
	public R visit(UnaryExpressionPreDecrement n, A argu);

	/**
	 * f0 ::= UnaryOperator()
	 * f1 ::= CastExpression()
	 */
	public R visit(UnaryCastExpression n, A argu);

	/**
	 * f0 ::= SizeofTypeName()
	 * | SizeofUnaryExpression()
	 */
	public R visit(UnarySizeofExpression n, A argu);

	/**
	 * f0 ::= <SIZEOF>
	 * f1 ::= UnaryExpression()
	 */
	public R visit(SizeofUnaryExpression n, A argu);

	/**
	 * f0 ::= <SIZEOF>
	 * f1 ::= "("
	 * f2 ::= TypeName()
	 * f3 ::= ")"
	 */
	public R visit(SizeofTypeName n, A argu);

	/**
	 * f0 ::= "&"
	 * | "*"
	 * | "+"
	 * | "-"
	 * | "~"
	 * | "!"
	 */
	public R visit(UnaryOperator n, A argu);

	/**
	 * f0 ::= PrimaryExpression()
	 * f1 ::= PostfixOperationsList()
	 */
	public R visit(PostfixExpression n, A argu);

	/**
	 * f0 ::= ( APostfixOperation() )*
	 */
	public R visit(PostfixOperationsList n, A argu);

	/**
	 * f0 ::= BracketExpression()
	 * | ArgumentList()
	 * | DotId()
	 * | ArrowId()
	 * | PlusPlus()
	 * | MinusMinus()
	 */
	public R visit(APostfixOperation n, A argu);

	/**
	 * f0 ::= "++"
	 */
	public R visit(PlusPlus n, A argu);

	/**
	 * f0 ::= "--"
	 */
	public R visit(MinusMinus n, A argu);

	/**
	 * f0 ::= "["
	 * f1 ::= Expression()
	 * f2 ::= "]"
	 */
	public R visit(BracketExpression n, A argu);

	/**
	 * f0 ::= "("
	 * f1 ::= ( ExpressionList() )?
	 * f2 ::= ")"
	 */
	public R visit(ArgumentList n, A argu);

	/**
	 * f0 ::= "."
	 * f1 ::= <IDENTIFIER>
	 */
	public R visit(DotId n, A argu);

	/**
	 * f0 ::= "->"
	 * f1 ::= <IDENTIFIER>
	 */
	public R visit(ArrowId n, A argu);

	/**
	 * f0 ::= <IDENTIFIER>
	 * | Constant()
	 * | ExpressionClosed()
	 */
	public R visit(PrimaryExpression n, A argu);

	/**
	 * f0 ::= "("
	 * f1 ::= Expression()
	 * f2 ::= ")"
	 */
	public R visit(ExpressionClosed n, A argu);

	/**
	 * f0 ::= AssignmentExpression()
	 * f1 ::= ( "," AssignmentExpression() )*
	 */
	public R visit(ExpressionList n, A argu);

	/**
	 * f0 ::= <INTEGER_LITERAL>
	 * | <FLOATING_POINT_LITERAL>
	 * | <CHARACTER_LITERAL>
	 * | ( <STRING_LITERAL> )+
	 */
	public R visit(Constant n, A argu);

	public R visit(DummyFlushDirective n, A argu);

	public R visit(CallStatement n, A argu);

	public R visit(SimplePrimaryExpression n, A argu);

	public R visit(PreCallNode n, A argu);

	public R visit(PostCallNode n, A argu);
}
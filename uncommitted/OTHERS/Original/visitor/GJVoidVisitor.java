//
// Generated by JTB 1.3.2
//

package visitor;
import syntaxtree.*;
import java.util.*;

/**
 * All GJ void visitors must implement this interface.
 */

public interface GJVoidVisitor<A> {

   //
   // GJ void Auto class visitors
   //

   public void visit(NodeList n, A argu);
   public void visit(NodeListOptional n, A argu);
   public void visit(NodeOptional n, A argu);
   public void visit(NodeSequence n, A argu);
   public void visit(NodeToken n, A argu);

   //
   // User-generated visitor methods below
   //

   /**
    * f0 -> ( ExternalDeclaration() | UnknownCpp() | UnknownPragma() )+
    */
   public void visit(TranslationUnit n, A argu);

   /**
    * f0 -> ( FunctionDefinition() | Declaration() | ThreadprivateDirective() )
    */
   public void visit(ExternalDeclaration n, A argu);

   /**
    * f0 -> [ DeclarationSpecifiers() ]
    * f1 -> Declarator()
    * f2 -> [ DeclarationList() ]
    * f3 -> CompoundStatement()
    */
   public void visit(FunctionDefinition n, A argu);

   /**
    * f0 -> DeclarationSpecifiers()
    * f1 -> [ InitDeclaratorList() ]
    * f2 -> <SEMICOLON>
    */
   public void visit(Declaration n, A argu);

   /**
    * f0 -> ( Declaration() )+
    */
   public void visit(DeclarationList n, A argu);

   /**
    * f0 -> ( StorageClassSpecifier() | TypeSpecifier() | TypeQualifier() )+
    */
   public void visit(DeclarationSpecifiers n, A argu);

   /**
    * f0 -> <AUTO>
    *       | <REGISTER>
    *       | <STATIC>
    *       | <EXTERN>
    *       | <TYPEDEF>
    */
   public void visit(StorageClassSpecifier n, A argu);

   /**
    * f0 -> <VOID>
    *       | <CHAR>
    *       | <SHORT>
    *       | <INT>
    *       | <LONG>
    *       | <FLOAT>
    *       | <DOUBLE>
    *       | <SIGNED>
    *       | <UNSIGNED>
    *       | StructOrUnionSpecifier()
    *       | EnumSpecifier()
    *       | TypedefName()
    */
   public void visit(TypeSpecifier n, A argu);

   /**
    * f0 -> <RESTRICT>
    *       | <CONST>
    *       | <VOLATILE>
    *       | <CCONST>
    */
   public void visit(TypeQualifier n, A argu);

   /**

    * f0 -> StructOrUnion()
    * f1 -> ( [ <IDENTIFIER> ] <LEFTBRACE> StructDeclarationList() <RIGHTBRACE> | <IDENTIFIER> )
    */
   public void visit(StructOrUnionSpecifier n, A argu);

   /**
    * f0 -> <STRUCT>
    *       | <UNION>
    */
   public void visit(StructOrUnion n, A argu);

   /**
    * f0 -> ( StructDeclaration() )+
    */
   public void visit(StructDeclarationList n, A argu);

   /**
    * f0 -> InitDeclarator()
    * f1 -> ( <COMMA> InitDeclarator() )*
    */
   public void visit(InitDeclaratorList n, A argu);

   /**
    * f0 -> Declarator()
    * f1 -> [ <OP_ASS> Initializer() ]
    */
   public void visit(InitDeclarator n, A argu);

   /**
    * f0 -> SpecifierQualifierList()
    * f1 -> StructDeclaratorList()
    * f2 -> <SEMICOLON>
    */
   public void visit(StructDeclaration n, A argu);

   /**
    * f0 -> ( TypeSpecifier() | TypeQualifier() )+
    */
   public void visit(SpecifierQualifierList n, A argu);

   /**
    * f0 -> StructDeclarator()
    * f1 -> ( <COMMA> StructDeclarator() )*
    */
   public void visit(StructDeclaratorList n, A argu);

   /**
    * f0 -> Declarator() [ <COLON> ConstantExpression() ]
    *       | <COLON> ConstantExpression()
    */
   public void visit(StructDeclarator n, A argu);

   /**
    * f0 -> <ENUM>
    * f1 -> ( [ <IDENTIFIER> ] <LEFTBRACE> EnumeratorList() <RIGHTBRACE> | <IDENTIFIER> )
    */
   public void visit(EnumSpecifier n, A argu);

   /**
    * f0 -> Enumerator()
    * f1 -> ( <COMMA> Enumerator() )*
    */
   public void visit(EnumeratorList n, A argu);

   /**
    * f0 -> <IDENTIFIER>
    * f1 -> [ <OP_ASS> ConstantExpression() ]
    */
   public void visit(Enumerator n, A argu);

   /**
    * f0 -> [ Pointer() ]
    * f1 -> DirectDeclarator()
    */
   public void visit(Declarator n, A argu);

   /**
    * f0 -> ( <IDENTIFIER> | <LEFTPAREN> Declarator() <RIGHTPAREN> )
    * f1 -> ( <LEFTBRACKET> [ ConstantExpression() ] <RIGHTBRACKET> | <LEFTPAREN> ParameterTypeList() <RIGHTPAREN> | <LEFTPAREN> [ IdentifierList() ] <RIGHTPAREN> )*
    */
   public void visit(DirectDeclarator n, A argu);

   /**
    * f0 -> <OP_MUL>
    * f1 -> [ TypeQualifierList() ]
    * f2 -> [ Pointer() ]
    */
   public void visit(Pointer n, A argu);

   /**
    * f0 -> ( TypeQualifier() )+
    */
   public void visit(TypeQualifierList n, A argu);

   /**
    * f0 -> ParameterList()
    * f1 -> [ <COMMA> <ELLIPSIS> ]
    */
   public void visit(ParameterTypeList n, A argu);

   /**
    * f0 -> ParameterDeclaration()
    * f1 -> ( <COMMA> ParameterDeclaration() )*
    */
   public void visit(ParameterList n, A argu);

   /**
    * f0 -> DeclarationSpecifiers()
    * f1 -> ( Declarator() | [ AbstractDeclarator() ] )
    */
   public void visit(ParameterDeclaration n, A argu);

   /**
    * f0 -> <IDENTIFIER>
    * f1 -> ( <COMMA> <IDENTIFIER> )*
    */
   public void visit(IdentifierList n, A argu);

   /**
    * f0 -> AssignmentExpression()
    *       | <LEFTBRACE> InitializerList() [ <COMMA> ] <RIGHTBRACE>
    */
   public void visit(Initializer n, A argu);

   /**
    * f0 -> Initializer()
    * f1 -> ( <COMMA> Initializer() )*
    */
   public void visit(InitializerList n, A argu);

   /**
    * f0 -> SpecifierQualifierList()
    * f1 -> [ AbstractDeclarator() ]
    */
   public void visit(TypeName n, A argu);

   /**
    * f0 -> ( Pointer() [ DirectAbstractDeclarator() ] | DirectAbstractDeclarator() )
    */
   public void visit(AbstractDeclarator n, A argu);

   /**
    * f0 -> ( <LEFTPAREN> AbstractDeclarator() <RIGHTPAREN> | <LEFTBRACKET> [ ConstantExpression() ] <RIGHTBRACKET> | <LEFTPAREN> [ ParameterTypeList() ] <RIGHTPAREN> )
    * f1 -> ( <LEFTBRACKET> [ ConstantExpression() ] <RIGHTBRACKET> | <LEFTPAREN> [ ParameterTypeList() ] <RIGHTPAREN> )*
    */
   public void visit(DirectAbstractDeclarator n, A argu);

   /**
    * f0 -> <IDENTIFIER>
    */
   public void visit(TypedefName n, A argu);

   /**
    * f0 -> ( LabeledStatement() | ExpressionStatement() | CompoundStatement() | SelectionStatement() | IterationStatement() | JumpStatement() | UnknownPragma() | OmpConstruct() | OmpDirective() | UnknownCpp() )
    */
   public void visit(Statement n, A argu);

   /**
    * f0 -> <CROSSBAR>
    * f1 -> <UNKNOWN_CPP>
    */
   public void visit(UnknownCpp n, A argu);

   /**
    * f0 -> <OMP_CR>
    *       | <OMP_NL>
    */
   public void visit(OmpEol n, A argu);

   /**
    * f0 -> OmpPragma()
    * f1 -> ( ParallelConstruct() | ParallelForConstruct() | ParallelSectionsConstruct() | ForConstruct() | SectionsConstruct() | SingleConstruct() | MasterConstruct() | CriticalConstruct() | AtomicConstruct() | OrderedConstruct() )
    */
   public void visit(OmpConstruct n, A argu);

   /**
    * f0 -> OmpPragma()
    * f1 -> ( BarrierDirective() | FlushDirective() )
    */
   public void visit(OmpDirective n, A argu);

   /**
    * f0 -> ParallelDirective()
    * f1 -> Statement()
    */
   public void visit(ParallelConstruct n, A argu);

   /**
    * f0 -> <CROSSBAR>
    * f1 -> <PRAGMA>
    * f2 -> <OMP>
    */
   public void visit(OmpPragma n, A argu);

   /**
    * f0 -> <CROSSBAR>
    * f1 -> <PRAGMA>
    * f2 -> <UNKNOWN_CPP>
    */
   public void visit(UnknownPragma n, A argu);

   /**
    * f0 -> <PARALLEL>
    * f1 -> ( UniqueParallelClause() | DataClause() )*
    * f2 -> OmpEol()
    */
   public void visit(ParallelDirective n, A argu);

   /**
    * f0 -> <IF>
    * f1 -> <LEFTPAREN>
    * f2 -> Expression()
    * f3 -> <RIGHTPAREN>
    */
   public void visit(UniqueParallelClause n, A argu);

   /**
    * f0 -> ForDirective()
    * f1 -> OmpForHeader()
    * f2 -> Statement()
    */
   public void visit(ForConstruct n, A argu);

   /**
    * f0 -> <FOR>
    * f1 -> ( UniqueForClause() | DataClause() | <NOWAIT> )*
    * f2 -> OmpEol()
    */
   public void visit(ForDirective n, A argu);

   /**
    * f0 -> <ORDERED>
    *       | <SCHEDULE> <LEFTPAREN> ScheduleKind() [ <COMMA> Expression() ] <RIGHTPAREN>
    */
   public void visit(UniqueForClause n, A argu);

   /**
    * f0 -> <STATIC>
    *       | <DYNAMIC>
    *       | <GUIDED>
    *       | <RUNTIME>
    */
   public void visit(ScheduleKind n, A argu);

   /**
    * f0 -> <FOR>
    * f1 -> <LEFTPAREN>
    * f2 -> OmpForInitExpression()
    * f3 -> <SEMICOLON>
    * f4 -> OmpForCondition()
    * f5 -> <SEMICOLON>
    * f6 -> OmpForReinitExpression()
    * f7 -> <RIGHTPAREN>
    */
   public void visit(OmpForHeader n, A argu);

   /**
    * f0 -> <IDENTIFIER>
    * f1 -> <OP_ASS>
    * f2 -> Expression()
    */
   public void visit(OmpForInitExpression n, A argu);

   /**
    * f0 -> <IDENTIFIER>
    * f1 -> ( <OP_LT> | <OP_LE> | <OP_GT> | <OP_GE> )
    * f2 -> Expression()
    */
   public void visit(OmpForCondition n, A argu);

   /**
    * f0 -> ( <OP_INCR> | <OP_DECR> ) <IDENTIFIER>
    *       | <IDENTIFIER> ( <OP_INCR> | <OP_DECR> )
    *       | <IDENTIFIER> ( <OP_ADDASS> | <OP_SUBASS> ) Expression()
    *       | <IDENTIFIER> <OP_ASS> ( <IDENTIFIER> ( <OP_ADD> | <OP_SUB> ) AdditiveExpression() | MultiplicativeExpression() <OP_ADD> <IDENTIFIER> )
    */
   public void visit(OmpForReinitExpression n, A argu);

   /**
    * f0 -> <SECTIONS>
    * f1 -> ( <NOWAIT> | DataClause() )*
    * f2 -> OmpEol()
    * f3 -> SectionsScope()
    */
   public void visit(SectionsConstruct n, A argu);

   /**
    * f0 -> <LEFTBRACE>
    * f1 -> [ Statement() ]
    * f2 -> ( OmpPragma() <SECTION> OmpEol() Statement() )*
    * f3 -> <RIGHTBRACE>
    */
   public void visit(SectionsScope n, A argu);

   /**
    * f0 -> <SINGLE>
    * f1 -> ( <NOWAIT> | DataClause() )*
    * f2 -> OmpEol()
    * f3 -> Statement()
    */
   public void visit(SingleConstruct n, A argu);

   /**
    * f0 -> <PARALLEL>
    * f1 -> <FOR>
    * f2 -> ( UniqueParallelClause() | UniqueForClause() | DataClause() )*
    * f3 -> OmpEol()
    * f4 -> OmpForHeader()
    * f5 -> Statement()
    */
   public void visit(ParallelForConstruct n, A argu);

   /**
    * f0 -> <PARALLEL>
    * f1 -> <SECTIONS>
    * f2 -> ( UniqueParallelClause() | DataClause() )*
    * f3 -> OmpEol()
    * f4 -> SectionsScope()
    */
   public void visit(ParallelSectionsConstruct n, A argu);

   /**
    * f0 -> <MASTER>
    * f1 -> OmpEol()
    * f2 -> Statement()
    */
   public void visit(MasterConstruct n, A argu);

   /**
    * f0 -> <CRITICAL>
    * f1 -> [ <LEFTPAREN> <IDENTIFIER> <RIGHTPAREN> ]
    * f2 -> OmpEol()
    * f3 -> Statement()
    */
   public void visit(CriticalConstruct n, A argu);

   /**
    * f0 -> <ATOMIC>
    * f1 -> OmpEol()
    * f2 -> ExpressionStatement()
    */
   public void visit(AtomicConstruct n, A argu);

   /**
    * f0 -> <FLUSH>
    * f1 -> [ <LEFTPAREN> VariableList() <RIGHTPAREN> ]
    * f2 -> OmpEol()
    */
   public void visit(FlushDirective n, A argu);

   /**
    * f0 -> <ORDERED>
    * f1 -> OmpEol()
    * f2 -> Statement()
    */
   public void visit(OrderedConstruct n, A argu);

   /**
    * f0 -> <BARRIER>
    * f1 -> OmpEol()
    */
   public void visit(BarrierDirective n, A argu);

   /**
    * f0 -> OmpPragma()
    * f1 -> <THREADPRIVATE>
    * f2 -> <LEFTPAREN>
    * f3 -> VariableList()
    * f4 -> <RIGHTPAREN>
    * f5 -> OmpEol()
    */
   public void visit(ThreadprivateDirective n, A argu);

   /**
    * f0 -> <PRIVATE> <LEFTPAREN> VariableList() <RIGHTPAREN>
    *       | <FIRSTPRIVATE> <LEFTPAREN> VariableList() <RIGHTPAREN>
    *       | <LASTPRIVATE> <LEFTPAREN> VariableList() <RIGHTPAREN>
    *       | <SHARED> <LEFTPAREN> VariableList() <RIGHTPAREN>
    *       | <COPYIN> <LEFTPAREN> VariableList() <RIGHTPAREN>
    *       | <DFLT> <LEFTPAREN> ( <SHARED> | <NONE> ) <RIGHTPAREN>
    *       | <REDUCTION> <LEFTPAREN> ReductionOp() <COLON> VariableList() <RIGHTPAREN>
    */
   public void visit(DataClause n, A argu);

   /**
    * f0 -> <OP_ADD>
    *       | <OP_MUL>
    *       | <OP_SUB>
    *       | <OP_BITAND>
    *       | <OP_BITXOR>
    *       | <OP_BITOR>
    *       | <OP_OR>
    *       | <OP_AND>
    */
   public void visit(ReductionOp n, A argu);

   /**
    * f0 -> <IDENTIFIER>
    * f1 -> ( <COMMA> <IDENTIFIER> )*
    */
   public void visit(VariableList n, A argu);

   /**
    * f0 -> ( <IDENTIFIER> <COLON> Statement() | <CASE> ConstantExpression() <COLON> Statement() | <DFLT> <COLON> Statement() )
    */
   public void visit(LabeledStatement n, A argu);

   /**
    * f0 -> [ Expression() ]
    * f1 -> <SEMICOLON>
    */
   public void visit(ExpressionStatement n, A argu);

   /**
    * f0 -> <LEFTBRACE>
    * f1 -> [ DeclarationList() ]
    * f2 -> [ StatementList() ]
    * f3 -> <RIGHTBRACE>
    */
   public void visit(CompoundStatement n, A argu);

   /**
    * f0 -> ( Statement() )+
    */
   public void visit(StatementList n, A argu);

   /**
    * f0 -> ( <IF> <LEFTPAREN> Expression() <RIGHTPAREN> Statement() [ <ELSE> Statement() ] | <SWITCH> <LEFTPAREN> Expression() <RIGHTPAREN> Statement() )
    */
   public void visit(SelectionStatement n, A argu);

   /**
    * f0 -> ( <WHILE> <LEFTPAREN> Expression() <RIGHTPAREN> Statement() | <DO> Statement() <WHILE> <LEFTPAREN> Expression() <RIGHTPAREN> <SEMICOLON> | <FOR> <LEFTPAREN> [ Expression() ] <SEMICOLON> [ Expression() ] <SEMICOLON> [ Expression() ] <RIGHTPAREN> Statement() )
    */
   public void visit(IterationStatement n, A argu);

   /**
    * f0 -> ( <GOTO> <IDENTIFIER> <SEMICOLON> | <CONTINUE> <SEMICOLON> | <BREAK> <SEMICOLON> | <RETURN> [ Expression() ] <SEMICOLON> )
    */
   public void visit(JumpStatement n, A argu);

   /**
    * f0 -> AssignmentExpression()
    * f1 -> ( <COMMA> AssignmentExpression() )*
    */
   public void visit(Expression n, A argu);

   /**
    * f0 -> UnaryExpression() AssignmentOperator() AssignmentExpression()
    *       | ConditionalExpression()
    */
   public void visit(AssignmentExpression n, A argu);

   /**
    * f0 -> ( <OP_ASS> | <OP_MULASS> | <OP_DIVASS> | <OP_MODASS> | <OP_ADDASS> | <OP_SUBASS> | <OP_SLASS> | <OP_SRASS> | <OP_ANDASS> | <OP_XORASS> | <OP_ORASS> )
    */
   public void visit(AssignmentOperator n, A argu);

   /**
    * f0 -> LogicalORExpression()
    * f1 -> [ <QUESTION> Expression() <COLON> ConditionalExpression() ]
    */
   public void visit(ConditionalExpression n, A argu);

   /**
    * f0 -> ConditionalExpression()
    */
   public void visit(ConstantExpression n, A argu);

   /**
    * f0 -> LogicalANDExpression()
    * f1 -> [ <OP_OR> LogicalORExpression() ]
    */
   public void visit(LogicalORExpression n, A argu);

   /**
    * f0 -> InclusiveORExpression()
    * f1 -> [ <OP_AND> LogicalANDExpression() ]
    */
   public void visit(LogicalANDExpression n, A argu);

   /**
    * f0 -> ExclusiveORExpression()
    * f1 -> [ <OP_BITOR> InclusiveORExpression() ]
    */
   public void visit(InclusiveORExpression n, A argu);

   /**
    * f0 -> ANDExpression()
    * f1 -> [ <OP_BITXOR> ExclusiveORExpression() ]
    */
   public void visit(ExclusiveORExpression n, A argu);

   /**
    * f0 -> EqualityExpression()
    * f1 -> [ <OP_BITAND> ANDExpression() ]
    */
   public void visit(ANDExpression n, A argu);

   /**
    * f0 -> RelationalExpression()
    * f1 -> [ ( <OP_EQ> | <OP_NEQ> ) EqualityExpression() ]
    */
   public void visit(EqualityExpression n, A argu);

   /**
    * f0 -> ShiftExpression()
    * f1 -> [ ( <OP_LT> | <OP_GT> | <OP_LE> | <OP_GE> ) RelationalExpression() ]
    */
   public void visit(RelationalExpression n, A argu);

   /**
    * f0 -> AdditiveExpression()
    * f1 -> [ ( <OP_SL> | <OP_SR> ) ShiftExpression() ]
    */
   public void visit(ShiftExpression n, A argu);

   /**
    * f0 -> MultiplicativeExpression()
    * f1 -> [ ( <OP_ADD> | <OP_SUB> ) AdditiveExpression() ]
    */
   public void visit(AdditiveExpression n, A argu);

   /**
    * f0 -> CastExpression()
    * f1 -> [ ( <OP_MUL> | <OP_DIV> | <OP_MOD> ) MultiplicativeExpression() ]
    */
   public void visit(MultiplicativeExpression n, A argu);

   /**
    * f0 -> ( <LEFTPAREN> TypeName() <RIGHTPAREN> CastExpression() | UnaryExpression() )
    */
   public void visit(CastExpression n, A argu);

   /**
    * f0 -> ( PostfixExpression() | <OP_INCR> UnaryExpression() | <OP_DECR> UnaryExpression() | UnaryOperator() CastExpression() | <SIZEOF> ( UnaryExpression() | <LEFTPAREN> TypeName() <RIGHTPAREN> ) )
    */
   public void visit(UnaryExpression n, A argu);

   /**
    * f0 -> ( <OP_BITAND> | <OP_MUL> | <OP_ADD> | <OP_SUB> | <OP_BITNOT> | <OP_NOT> )
    */
   public void visit(UnaryOperator n, A argu);

   /**
    * f0 -> PrimaryExpression()
    * f1 -> ( <LEFTBRACKET> Expression() <RIGHTBRACKET> | <LEFTPAREN> [ ArgumentExpressionList() ] <RIGHTPAREN> | <DOT> <IDENTIFIER> | <OP_DEREF> <IDENTIFIER> | <OP_INCR> | <OP_DECR> )*
    */
   public void visit(PostfixExpression n, A argu);

   /**
    * f0 -> ( <IDENTIFIER> | Constant() | <LEFTPAREN> Expression() <RIGHTPAREN> )
    */
   public void visit(PrimaryExpression n, A argu);

   /**
    * f0 -> AssignmentExpression()
    * f1 -> ( <COMMA> AssignmentExpression() )*
    */
   public void visit(ArgumentExpressionList n, A argu);

   /**
    * f0 -> <INTEGER_LITERAL>
    *       | <FLOATING_POINT_LITERAL>
    *       | <CHARACTER_LITERAL>
    *       | ( <STRING_LITERAL> )+
    */
   public void visit(Constant n, A argu);

}


//
// Generated by JTB 1.3.2
//

package visitor;
import syntaxtree.*;
import java.util.*;

/**
 * Provides default methods which visit each node in the tree in depth-first
 * order.  Your visitors may extend this class.
 */
public class GJDepthFirst<R,A> implements GJVisitor<R,A> {
   //
   // Auto class visitors--probably don't need to be overridden.
   //
   public R visit(NodeList n, A argu) {
      R _ret=null;
      int _count=0;
      for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
         e.nextElement().accept(this,argu);
         _count++;
      }
      return _ret;
   }

   public R visit(NodeListOptional n, A argu) {
      if ( n.present() ) {
         R _ret=null;
         int _count=0;
         for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
            e.nextElement().accept(this,argu);
            _count++;
         }
         return _ret;
      }
      else
         return null;
   }

   public R visit(NodeOptional n, A argu) {
      if ( n.present() )
         return n.node.accept(this,argu);
      else
         return null;
   }

   public R visit(NodeSequence n, A argu) {
      R _ret=null;
      int _count=0;
      for ( Enumeration<Node> e = n.elements(); e.hasMoreElements(); ) {
         e.nextElement().accept(this,argu);
         _count++;
      }
      return _ret;
   }

   public R visit(NodeToken n, A argu) { return null; }

   //
   // User-generated visitor methods below
   //

   /**
    * f0 -> ( ExternalDeclaration() | UnknownCpp() | UnknownPragma() )+
    */
   public R visit(TranslationUnit n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( FunctionDefinition() | Declaration() | ThreadprivateDirective() )
    */
   public R visit(ExternalDeclaration n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> [ DeclarationSpecifiers() ]
    * f1 -> Declarator()
    * f2 -> [ DeclarationList() ]
    * f3 -> CompoundStatement()
    */
   public R visit(FunctionDefinition n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> DeclarationSpecifiers()
    * f1 -> [ InitDeclaratorList() ]
    * f2 -> <SEMICOLON>
    */
   public R visit(Declaration n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( Declaration() )+
    */
   public R visit(DeclarationList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( StorageClassSpecifier() | TypeSpecifier() | TypeQualifier() )+
    */
   public R visit(DeclarationSpecifiers n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <AUTO>
    *       | <REGISTER>
    *       | <STATIC>
    *       | <EXTERN>
    *       | <TYPEDEF>
    */
   public R visit(StorageClassSpecifier n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

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
   public R visit(TypeSpecifier n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <RESTRICT>
    *       | <CONST>
    *       | <VOLATILE>
    *       | <CCONST>
    */
   public R visit(TypeQualifier n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**

    * f0 -> StructOrUnion()
    * f1 -> ( [ <IDENTIFIER> ] <LEFTBRACE> StructDeclarationList() <RIGHTBRACE> | <IDENTIFIER> )
    */
   public R visit(StructOrUnionSpecifier n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <STRUCT>
    *       | <UNION>
    */
   public R visit(StructOrUnion n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( StructDeclaration() )+
    */
   public R visit(StructDeclarationList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> InitDeclarator()
    * f1 -> ( <COMMA> InitDeclarator() )*
    */
   public R visit(InitDeclaratorList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Declarator()
    * f1 -> [ <OP_ASS> Initializer() ]
    */
   public R visit(InitDeclarator n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> SpecifierQualifierList()
    * f1 -> StructDeclaratorList()
    * f2 -> <SEMICOLON>
    */
   public R visit(StructDeclaration n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( TypeSpecifier() | TypeQualifier() )+
    */
   public R visit(SpecifierQualifierList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> StructDeclarator()
    * f1 -> ( <COMMA> StructDeclarator() )*
    */
   public R visit(StructDeclaratorList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Declarator() [ <COLON> ConstantExpression() ]
    *       | <COLON> ConstantExpression()
    */
   public R visit(StructDeclarator n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <ENUM>
    * f1 -> ( [ <IDENTIFIER> ] <LEFTBRACE> EnumeratorList() <RIGHTBRACE> | <IDENTIFIER> )
    */
   public R visit(EnumSpecifier n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Enumerator()
    * f1 -> ( <COMMA> Enumerator() )*
    */
   public R visit(EnumeratorList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <IDENTIFIER>
    * f1 -> [ <OP_ASS> ConstantExpression() ]
    */
   public R visit(Enumerator n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> [ Pointer() ]
    * f1 -> DirectDeclarator()
    */
   public R visit(Declarator n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <IDENTIFIER> | <LEFTPAREN> Declarator() <RIGHTPAREN> )
    * f1 -> ( <LEFTBRACKET> [ ConstantExpression() ] <RIGHTBRACKET> | <LEFTPAREN> ParameterTypeList() <RIGHTPAREN> | <LEFTPAREN> [ IdentifierList() ] <RIGHTPAREN> )*
    */
   public R visit(DirectDeclarator n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <OP_MUL>
    * f1 -> [ TypeQualifierList() ]
    * f2 -> [ Pointer() ]
    */
   public R visit(Pointer n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( TypeQualifier() )+
    */
   public R visit(TypeQualifierList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ParameterList()
    * f1 -> [ <COMMA> <ELLIPSIS> ]
    */
   public R visit(ParameterTypeList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ParameterDeclaration()
    * f1 -> ( <COMMA> ParameterDeclaration() )*
    */
   public R visit(ParameterList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> DeclarationSpecifiers()
    * f1 -> ( Declarator() | [ AbstractDeclarator() ] )
    */
   public R visit(ParameterDeclaration n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <IDENTIFIER>
    * f1 -> ( <COMMA> <IDENTIFIER> )*
    */
   public R visit(IdentifierList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> AssignmentExpression()
    *       | <LEFTBRACE> InitializerList() [ <COMMA> ] <RIGHTBRACE>
    */
   public R visit(Initializer n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> Initializer()
    * f1 -> ( <COMMA> Initializer() )*
    */
   public R visit(InitializerList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> SpecifierQualifierList()
    * f1 -> [ AbstractDeclarator() ]
    */
   public R visit(TypeName n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( Pointer() [ DirectAbstractDeclarator() ] | DirectAbstractDeclarator() )
    */
   public R visit(AbstractDeclarator n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <LEFTPAREN> AbstractDeclarator() <RIGHTPAREN> | <LEFTBRACKET> [ ConstantExpression() ] <RIGHTBRACKET> | <LEFTPAREN> [ ParameterTypeList() ] <RIGHTPAREN> )
    * f1 -> ( <LEFTBRACKET> [ ConstantExpression() ] <RIGHTBRACKET> | <LEFTPAREN> [ ParameterTypeList() ] <RIGHTPAREN> )*
    */
   public R visit(DirectAbstractDeclarator n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <IDENTIFIER>
    */
   public R visit(TypedefName n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( LabeledStatement() | ExpressionStatement() | CompoundStatement() | SelectionStatement() | IterationStatement() | JumpStatement() | UnknownPragma() | OmpConstruct() | OmpDirective() | UnknownCpp() )
    */
   public R visit(Statement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <CROSSBAR>
    * f1 -> <UNKNOWN_CPP>
    */
   public R visit(UnknownCpp n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <OMP_CR>
    *       | <OMP_NL>
    */
   public R visit(OmpEol n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> OmpPragma()
    * f1 -> ( ParallelConstruct() | ParallelForConstruct() | ParallelSectionsConstruct() | ForConstruct() | SectionsConstruct() | SingleConstruct() | MasterConstruct() | CriticalConstruct() | AtomicConstruct() | OrderedConstruct() )
    */
   public R visit(OmpConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> OmpPragma()
    * f1 -> ( BarrierDirective() | FlushDirective() )
    */
   public R visit(OmpDirective n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ParallelDirective()
    * f1 -> Statement()
    */
   public R visit(ParallelConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <CROSSBAR>
    * f1 -> <PRAGMA>
    * f2 -> <OMP>
    */
   public R visit(OmpPragma n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <CROSSBAR>
    * f1 -> <PRAGMA>
    * f2 -> <UNKNOWN_CPP>
    */
   public R visit(UnknownPragma n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <PARALLEL>
    * f1 -> ( UniqueParallelClause() | DataClause() )*
    * f2 -> OmpEol()
    */
   public R visit(ParallelDirective n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <IF>
    * f1 -> <LEFTPAREN>
    * f2 -> Expression()
    * f3 -> <RIGHTPAREN>
    */
   public R visit(UniqueParallelClause n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ForDirective()
    * f1 -> OmpForHeader()
    * f2 -> Statement()
    */
   public R visit(ForConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <FOR>
    * f1 -> ( UniqueForClause() | DataClause() | <NOWAIT> )*
    * f2 -> OmpEol()
    */
   public R visit(ForDirective n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <ORDERED>
    *       | <SCHEDULE> <LEFTPAREN> ScheduleKind() [ <COMMA> Expression() ] <RIGHTPAREN>
    */
   public R visit(UniqueForClause n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <STATIC>
    *       | <DYNAMIC>
    *       | <GUIDED>
    *       | <RUNTIME>
    */
   public R visit(ScheduleKind n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

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
   public R visit(OmpForHeader n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      n.f5.accept(this, argu);
      n.f6.accept(this, argu);
      n.f7.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <IDENTIFIER>
    * f1 -> <OP_ASS>
    * f2 -> Expression()
    */
   public R visit(OmpForInitExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <IDENTIFIER>
    * f1 -> ( <OP_LT> | <OP_LE> | <OP_GT> | <OP_GE> )
    * f2 -> Expression()
    */
   public R visit(OmpForCondition n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <OP_INCR> | <OP_DECR> ) <IDENTIFIER>
    *       | <IDENTIFIER> ( <OP_INCR> | <OP_DECR> )
    *       | <IDENTIFIER> ( <OP_ADDASS> | <OP_SUBASS> ) Expression()
    *       | <IDENTIFIER> <OP_ASS> ( <IDENTIFIER> ( <OP_ADD> | <OP_SUB> ) AdditiveExpression() | MultiplicativeExpression() <OP_ADD> <IDENTIFIER> )
    */
   public R visit(OmpForReinitExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <SECTIONS>
    * f1 -> ( <NOWAIT> | DataClause() )*
    * f2 -> OmpEol()
    * f3 -> SectionsScope()
    */
   public R visit(SectionsConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <LEFTBRACE>
    * f1 -> [ Statement() ]
    * f2 -> ( OmpPragma() <SECTION> OmpEol() Statement() )*
    * f3 -> <RIGHTBRACE>
    */
   public R visit(SectionsScope n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <SINGLE>
    * f1 -> ( <NOWAIT> | DataClause() )*
    * f2 -> OmpEol()
    * f3 -> Statement()
    */
   public R visit(SingleConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <PARALLEL>
    * f1 -> <FOR>
    * f2 -> ( UniqueParallelClause() | UniqueForClause() | DataClause() )*
    * f3 -> OmpEol()
    * f4 -> OmpForHeader()
    * f5 -> Statement()
    */
   public R visit(ParallelForConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      n.f5.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <PARALLEL>
    * f1 -> <SECTIONS>
    * f2 -> ( UniqueParallelClause() | DataClause() )*
    * f3 -> OmpEol()
    * f4 -> SectionsScope()
    */
   public R visit(ParallelSectionsConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <MASTER>
    * f1 -> OmpEol()
    * f2 -> Statement()
    */
   public R visit(MasterConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <CRITICAL>
    * f1 -> [ <LEFTPAREN> <IDENTIFIER> <RIGHTPAREN> ]
    * f2 -> OmpEol()
    * f3 -> Statement()
    */
   public R visit(CriticalConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <ATOMIC>
    * f1 -> OmpEol()
    * f2 -> ExpressionStatement()
    */
   public R visit(AtomicConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <FLUSH>
    * f1 -> [ <LEFTPAREN> VariableList() <RIGHTPAREN> ]
    * f2 -> OmpEol()
    */
   public R visit(FlushDirective n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <ORDERED>
    * f1 -> OmpEol()
    * f2 -> Statement()
    */
   public R visit(OrderedConstruct n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <BARRIER>
    * f1 -> OmpEol()
    */
   public R visit(BarrierDirective n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> OmpPragma()
    * f1 -> <THREADPRIVATE>
    * f2 -> <LEFTPAREN>
    * f3 -> VariableList()
    * f4 -> <RIGHTPAREN>
    * f5 -> OmpEol()
    */
   public R visit(ThreadprivateDirective n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      n.f4.accept(this, argu);
      n.f5.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <PRIVATE> <LEFTPAREN> VariableList() <RIGHTPAREN>
    *       | <FIRSTPRIVATE> <LEFTPAREN> VariableList() <RIGHTPAREN>
    *       | <LASTPRIVATE> <LEFTPAREN> VariableList() <RIGHTPAREN>
    *       | <SHARED> <LEFTPAREN> VariableList() <RIGHTPAREN>
    *       | <COPYIN> <LEFTPAREN> VariableList() <RIGHTPAREN>
    *       | <DFLT> <LEFTPAREN> ( <SHARED> | <NONE> ) <RIGHTPAREN>
    *       | <REDUCTION> <LEFTPAREN> ReductionOp() <COLON> VariableList() <RIGHTPAREN>
    */
   public R visit(DataClause n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

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
   public R visit(ReductionOp n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <IDENTIFIER>
    * f1 -> ( <COMMA> <IDENTIFIER> )*
    */
   public R visit(VariableList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <IDENTIFIER> <COLON> Statement() | <CASE> ConstantExpression() <COLON> Statement() | <DFLT> <COLON> Statement() )
    */
   public R visit(LabeledStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> [ Expression() ]
    * f1 -> <SEMICOLON>
    */
   public R visit(ExpressionStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <LEFTBRACE>
    * f1 -> [ DeclarationList() ]
    * f2 -> [ StatementList() ]
    * f3 -> <RIGHTBRACE>
    */
   public R visit(CompoundStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      n.f2.accept(this, argu);
      n.f3.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( Statement() )+
    */
   public R visit(StatementList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <IF> <LEFTPAREN> Expression() <RIGHTPAREN> Statement() [ <ELSE> Statement() ] | <SWITCH> <LEFTPAREN> Expression() <RIGHTPAREN> Statement() )
    */
   public R visit(SelectionStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <WHILE> <LEFTPAREN> Expression() <RIGHTPAREN> Statement() | <DO> Statement() <WHILE> <LEFTPAREN> Expression() <RIGHTPAREN> <SEMICOLON> | <FOR> <LEFTPAREN> [ Expression() ] <SEMICOLON> [ Expression() ] <SEMICOLON> [ Expression() ] <RIGHTPAREN> Statement() )
    */
   public R visit(IterationStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <GOTO> <IDENTIFIER> <SEMICOLON> | <CONTINUE> <SEMICOLON> | <BREAK> <SEMICOLON> | <RETURN> [ Expression() ] <SEMICOLON> )
    */
   public R visit(JumpStatement n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> AssignmentExpression()
    * f1 -> ( <COMMA> AssignmentExpression() )*
    */
   public R visit(Expression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> UnaryExpression() AssignmentOperator() AssignmentExpression()
    *       | ConditionalExpression()
    */
   public R visit(AssignmentExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <OP_ASS> | <OP_MULASS> | <OP_DIVASS> | <OP_MODASS> | <OP_ADDASS> | <OP_SUBASS> | <OP_SLASS> | <OP_SRASS> | <OP_ANDASS> | <OP_XORASS> | <OP_ORASS> )
    */
   public R visit(AssignmentOperator n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> LogicalORExpression()
    * f1 -> [ <QUESTION> Expression() <COLON> ConditionalExpression() ]
    */
   public R visit(ConditionalExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ConditionalExpression()
    */
   public R visit(ConstantExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> LogicalANDExpression()
    * f1 -> [ <OP_OR> LogicalORExpression() ]
    */
   public R visit(LogicalORExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> InclusiveORExpression()
    * f1 -> [ <OP_AND> LogicalANDExpression() ]
    */
   public R visit(LogicalANDExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ExclusiveORExpression()
    * f1 -> [ <OP_BITOR> InclusiveORExpression() ]
    */
   public R visit(InclusiveORExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ANDExpression()
    * f1 -> [ <OP_BITXOR> ExclusiveORExpression() ]
    */
   public R visit(ExclusiveORExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> EqualityExpression()
    * f1 -> [ <OP_BITAND> ANDExpression() ]
    */
   public R visit(ANDExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> RelationalExpression()
    * f1 -> [ ( <OP_EQ> | <OP_NEQ> ) EqualityExpression() ]
    */
   public R visit(EqualityExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ShiftExpression()
    * f1 -> [ ( <OP_LT> | <OP_GT> | <OP_LE> | <OP_GE> ) RelationalExpression() ]
    */
   public R visit(RelationalExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> AdditiveExpression()
    * f1 -> [ ( <OP_SL> | <OP_SR> ) ShiftExpression() ]
    */
   public R visit(ShiftExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> MultiplicativeExpression()
    * f1 -> [ ( <OP_ADD> | <OP_SUB> ) AdditiveExpression() ]
    */
   public R visit(AdditiveExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> CastExpression()
    * f1 -> [ ( <OP_MUL> | <OP_DIV> | <OP_MOD> ) MultiplicativeExpression() ]
    */
   public R visit(MultiplicativeExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <LEFTPAREN> TypeName() <RIGHTPAREN> CastExpression() | UnaryExpression() )
    */
   public R visit(CastExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( PostfixExpression() | <OP_INCR> UnaryExpression() | <OP_DECR> UnaryExpression() | UnaryOperator() CastExpression() | <SIZEOF> ( UnaryExpression() | <LEFTPAREN> TypeName() <RIGHTPAREN> ) )
    */
   public R visit(UnaryExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <OP_BITAND> | <OP_MUL> | <OP_ADD> | <OP_SUB> | <OP_BITNOT> | <OP_NOT> )
    */
   public R visit(UnaryOperator n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> PrimaryExpression()
    * f1 -> ( <LEFTBRACKET> Expression() <RIGHTBRACKET> | <LEFTPAREN> [ ArgumentExpressionList() ] <RIGHTPAREN> | <DOT> <IDENTIFIER> | <OP_DEREF> <IDENTIFIER> | <OP_INCR> | <OP_DECR> )*
    */
   public R visit(PostfixExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> ( <IDENTIFIER> | Constant() | <LEFTPAREN> Expression() <RIGHTPAREN> )
    */
   public R visit(PrimaryExpression n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> AssignmentExpression()
    * f1 -> ( <COMMA> AssignmentExpression() )*
    */
   public R visit(ArgumentExpressionList n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      n.f1.accept(this, argu);
      return _ret;
   }

   /**
    * f0 -> <INTEGER_LITERAL>
    *       | <FLOATING_POINT_LITERAL>
    *       | <CHARACTER_LITERAL>
    *       | ( <STRING_LITERAL> )+
    */
   public R visit(Constant n, A argu) {
      R _ret=null;
      n.f0.accept(this, argu);
      return _ret;
   }

}

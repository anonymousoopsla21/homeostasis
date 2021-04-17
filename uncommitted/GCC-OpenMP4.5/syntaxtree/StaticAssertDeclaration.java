//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> <STATIC_ASSERT>
 * f1 -> "("
 * f2 -> ConstantExpression()
 * f3 -> ","
 * f4 -> <STRING_LITERAL>
 * f5 -> ")"
 */
public class StaticAssertDeclaration implements Node {
   public NodeToken f0;
   public NodeToken f1;
   public ConstantExpression f2;
   public NodeToken f3;
   public NodeToken f4;
   public NodeToken f5;

   public StaticAssertDeclaration(NodeToken n0, NodeToken n1, ConstantExpression n2, NodeToken n3, NodeToken n4, NodeToken n5) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
      f4 = n4;
      f5 = n5;
   }

   public StaticAssertDeclaration(ConstantExpression n0) {
      f0 = new NodeToken("_Static_assert");
      f1 = new NodeToken("(");
      f2 = n0;
      f3 = new NodeToken(",");
      f4 = new NodeToken("\"");
      f5 = new NodeToken(")");
   }

   public void accept(visitor.Visitor v) {
      v.visit(this);
   }
   public <R,A> R accept(visitor.GJVisitor<R,A> v, A argu) {
      return v.visit(this,argu);
   }
   public <R> R accept(visitor.GJNoArguVisitor<R> v) {
      return v.visit(this);
   }
   public <A> void accept(visitor.GJVoidVisitor<A> v, A argu) {
      v.visit(this,argu);
   }
}

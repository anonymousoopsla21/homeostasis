//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> [ Expression() ]
 * f1 -> <SEMICOLON>
 */
public class ExpressionStatement implements Node {
   public NodeOptional f0;
   public NodeToken f1;

   public ExpressionStatement(NodeOptional n0, NodeToken n1) {
      f0 = n0;
      f1 = n1;
   }

   public ExpressionStatement(NodeOptional n0) {
      f0 = n0;
      f1 = new NodeToken(";");
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


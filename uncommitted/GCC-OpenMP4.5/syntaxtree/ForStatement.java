//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> <FOR>
 * f1 -> "("
 * f2 -> ( Expression() )?
 * f3 -> ";"
 * f4 -> ( Expression() )?
 * f5 -> ";"
 * f6 -> ( Expression() )?
 * f7 -> ")"
 * f8 -> Statement()
 */
public class ForStatement implements Node {
   public NodeToken f0;
   public NodeToken f1;
   public NodeOptional f2;
   public NodeToken f3;
   public NodeOptional f4;
   public NodeToken f5;
   public NodeOptional f6;
   public NodeToken f7;
   public Statement f8;

   public ForStatement(NodeToken n0, NodeToken n1, NodeOptional n2, NodeToken n3, NodeOptional n4, NodeToken n5, NodeOptional n6, NodeToken n7, Statement n8) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
      f4 = n4;
      f5 = n5;
      f6 = n6;
      f7 = n7;
      f8 = n8;
   }

   public ForStatement(NodeOptional n0, NodeOptional n1, NodeOptional n2, Statement n3) {
      f0 = new NodeToken("for");
      f1 = new NodeToken("(");
      f2 = n0;
      f3 = new NodeToken(";");
      f4 = n1;
      f5 = new NodeToken(";");
      f6 = n2;
      f7 = new NodeToken(")");
      f8 = n3;
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


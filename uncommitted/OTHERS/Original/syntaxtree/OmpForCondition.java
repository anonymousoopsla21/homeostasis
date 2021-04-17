//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> <IDENTIFIER>
 * f1 -> ( <OP_LT> | <OP_LE> | <OP_GT> | <OP_GE> )
 * f2 -> Expression()
 */
public class OmpForCondition implements Node {
   public NodeToken f0;
   public NodeChoice f1;
   public Expression f2;

   public OmpForCondition(NodeToken n0, NodeChoice n1, Expression n2) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
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

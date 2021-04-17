//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> <REDUCTION>
 * f1 -> "("
 * f2 -> ReductionOp()
 * f3 -> ":"
 * f4 -> VariableList()
 * f5 -> ")"
 */
public class OmpReductionClause implements Node {
   public NodeToken f0;
   public NodeToken f1;
   public ReductionOp f2;
   public NodeToken f3;
   public VariableList f4;
   public NodeToken f5;

   public OmpReductionClause(NodeToken n0, NodeToken n1, ReductionOp n2, NodeToken n3, VariableList n4, NodeToken n5) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
      f4 = n4;
      f5 = n5;
   }

   public OmpReductionClause(ReductionOp n0, VariableList n1) {
      f0 = new NodeToken("reduction");
      f1 = new NodeToken("(");
      f2 = n0;
      f3 = new NodeToken(":");
      f4 = n1;
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


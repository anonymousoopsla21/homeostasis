//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> <MERGEABLE>
 */
public class OmpMergeableClause implements Node {
   public NodeToken f0;

   public OmpMergeableClause(NodeToken n0) {
      f0 = n0;
   }

   public OmpMergeableClause() {
      f0 = new NodeToken("mergeable");
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


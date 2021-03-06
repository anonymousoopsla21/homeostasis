//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> OmpPragma()
 * f1 -> <TARGET>
 * f2 -> <DATA>
 * f3 -> ( OmpTargetDataClauseList() )?
 * f4 -> OmpEol()
 * f5 -> Statement()
 */
public class OmpTargetDataConstruct implements Node {
   public OmpPragma f0;
   public NodeToken f1;
   public NodeToken f2;
   public NodeOptional f3;
   public OmpEol f4;
   public Statement f5;

   public OmpTargetDataConstruct(OmpPragma n0, NodeToken n1, NodeToken n2, NodeOptional n3, OmpEol n4, Statement n5) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
      f4 = n4;
      f5 = n5;
   }

   public OmpTargetDataConstruct(OmpPragma n0, NodeOptional n1, OmpEol n2, Statement n3) {
      f0 = n0;
      f1 = new NodeToken("target");
      f2 = new NodeToken("data");
      f3 = n1;
      f4 = n2;
      f5 = n3;
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


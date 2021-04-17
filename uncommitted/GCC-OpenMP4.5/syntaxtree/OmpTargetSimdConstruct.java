//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> OmpPragma()
 * f1 -> <TARGET>
 * f2 -> <SIMD>
 * f3 -> ( OmpTargetSimdClauseList() )?
 * f4 -> OmpEol()
 * f5 -> OmpForHeader()
 * f6 -> Statement()
 */
public class OmpTargetSimdConstruct implements Node {
   public OmpPragma f0;
   public NodeToken f1;
   public NodeToken f2;
   public NodeOptional f3;
   public OmpEol f4;
   public OmpForHeader f5;
   public Statement f6;

   public OmpTargetSimdConstruct(OmpPragma n0, NodeToken n1, NodeToken n2, NodeOptional n3, OmpEol n4, OmpForHeader n5, Statement n6) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
      f4 = n4;
      f5 = n5;
      f6 = n6;
   }

   public OmpTargetSimdConstruct(OmpPragma n0, NodeOptional n1, OmpEol n2, OmpForHeader n3, Statement n4) {
      f0 = n0;
      f1 = new NodeToken("target");
      f2 = new NodeToken("simd");
      f3 = n1;
      f4 = n2;
      f5 = n3;
      f6 = n4;
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

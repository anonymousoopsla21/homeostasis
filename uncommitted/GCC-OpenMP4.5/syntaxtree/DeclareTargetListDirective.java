//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> OmpPragma()
 * f1 -> <DECLARE>
 * f2 -> <TARGET>
 * f3 -> OmpDeclareTargetClauseList()
 */
public class DeclareTargetListDirective implements Node {
   public OmpPragma f0;
   public NodeToken f1;
   public NodeToken f2;
   public OmpDeclareTargetClauseList f3;

   public DeclareTargetListDirective(OmpPragma n0, NodeToken n1, NodeToken n2, OmpDeclareTargetClauseList n3) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
   }

   public DeclareTargetListDirective(OmpPragma n0, OmpDeclareTargetClauseList n1) {
      f0 = n0;
      f1 = new NodeToken("declare");
      f2 = new NodeToken("target");
      f3 = n1;
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


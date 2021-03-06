//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> OmpPragma()
 * f1 -> <TARGET>
 * f2 -> <PARALLEL>
 * f3 -> <FOR>
 * f4 -> ( OmpTargetParallelForClauseList() )?
 * f5 -> OmpEol()
 * f6 -> OmpForHeader()
 * f7 -> Statement()
 */
public class OmpTargetParallelForConstruct implements Node {
   public OmpPragma f0;
   public NodeToken f1;
   public NodeToken f2;
   public NodeToken f3;
   public NodeOptional f4;
   public OmpEol f5;
   public OmpForHeader f6;
   public Statement f7;

   public OmpTargetParallelForConstruct(OmpPragma n0, NodeToken n1, NodeToken n2, NodeToken n3, NodeOptional n4, OmpEol n5, OmpForHeader n6, Statement n7) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
      f4 = n4;
      f5 = n5;
      f6 = n6;
      f7 = n7;
   }

   public OmpTargetParallelForConstruct(OmpPragma n0, NodeOptional n1, OmpEol n2, OmpForHeader n3, Statement n4) {
      f0 = n0;
      f1 = new NodeToken("target");
      f2 = new NodeToken("parallel");
      f3 = new NodeToken("for");
      f4 = n1;
      f5 = n2;
      f6 = n3;
      f7 = n4;
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


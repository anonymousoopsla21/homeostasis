//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> <CRITICAL>
 * f1 -> [ <LEFTPAREN> <IDENTIFIER> <RIGHTPAREN> ]
 * f2 -> OmpEol()
 * f3 -> Statement()
 */
public class CriticalConstruct implements Node {
   public NodeToken f0;
   public NodeOptional f1;
   public OmpEol f2;
   public Statement f3;

   public CriticalConstruct(NodeToken n0, NodeOptional n1, OmpEol n2, Statement n3) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
   }

   public CriticalConstruct(NodeOptional n0, OmpEol n1, Statement n2) {
      f0 = new NodeToken("critical");
      f1 = n0;
      f2 = n1;
      f3 = n2;
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


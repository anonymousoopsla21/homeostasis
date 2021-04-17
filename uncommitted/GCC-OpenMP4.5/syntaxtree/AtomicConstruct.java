//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> OmpPragma()
 * f1 -> <ATOMIC>
 * f2 -> ( AtomicClause() )?
 * f3 -> OmpEol()
 * f4 -> ExpressionStatement()
 */
public class AtomicConstruct implements Node {
   public OmpPragma f0;
   public NodeToken f1;
   public NodeOptional f2;
   public OmpEol f3;
   public ExpressionStatement f4;

   public AtomicConstruct(OmpPragma n0, NodeToken n1, NodeOptional n2, OmpEol n3, ExpressionStatement n4) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
      f4 = n4;
   }

   public AtomicConstruct(OmpPragma n0, NodeOptional n1, OmpEol n2, ExpressionStatement n3) {
      f0 = n0;
      f1 = new NodeToken("atomic");
      f2 = n1;
      f3 = n2;
      f4 = n3;
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

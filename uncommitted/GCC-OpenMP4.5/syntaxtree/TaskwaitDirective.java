//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> OmpPragma()
 * f1 -> <TASKWAIT>
 * f2 -> OmpEol()
 */
public class TaskwaitDirective implements Node {
   public OmpPragma f0;
   public NodeToken f1;
   public OmpEol f2;

   public TaskwaitDirective(OmpPragma n0, NodeToken n1, OmpEol n2) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
   }

   public TaskwaitDirective(OmpPragma n0, OmpEol n1) {
      f0 = n0;
      f1 = new NodeToken("taskwait");
      f2 = n1;
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


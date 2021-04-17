//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> OmpParallelConstruct()
 *       | OmpForConstruct()
 *       | OmpSectionsConstruct()
 *       | OmpSingleConstruct()
 *       | OmpSimdConstruct()
 *       | OmpForSimdConstruct()
 *       | OmpTaskConstruct()
 *       | OmpTaskLoopSimdConstruct()
 *       | OmpTaskLoopConstruct()
 *       | OmpTargetDataConstruct()
 *       | OmpTargetParallelForSimdConstruct()
 *       | OmpTargetParallelForConstruct()
 *       | OmpTargetParallelConstruct()
 *       | OmpTargetSimdConstruct()
 *       | OmpTargetTeamsDistributeParallelForSimdConstruct()
 *       | OmpTargetTeamsDistributeParallelForConstruct()
 *       | OmpTargetTeamsDistributeSimdConstruct()
 *       | OmpTargetTeamsDistributeConstruct()
 *       | OmpTargetTeamsConstruct()
 *       | OmpTargetConstruct()
 *       | OmpTeamsDistributeParallelForSimdConstruct()
 *       | OmpTeamsDistributeParallelForConstruct()
 *       | OmpTeamsDistributeSimdConstruct()
 *       | OmpTeamsDistributeConstruct()
 *       | OmpTeamsConstruct()
 *       | OmpDistributeSimdConstruct()
 *       | OmpDistributeParallelForSimdConstruct()
 *       | OmpDistributeParallelForConstruct()
 *       | OmpDistributeConstruct()
 *       | OmpParallelForSimdConstruct()
 *       | OmpParallelForConstruct()
 *       | OmpParallelSectionsConstruct()
 *       | OmpMasterConstruct()
 *       | OmpCriticalConstruct()
 *       | OmpTaskGroupConstruct()
 *       | OmpAtomicConstruct()
 *       | OmpOrderedConstruct()
 */
public class OmpConstruct implements Node {
   public NodeChoice f0;

   public OmpConstruct(NodeChoice n0) {
      f0 = n0;
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


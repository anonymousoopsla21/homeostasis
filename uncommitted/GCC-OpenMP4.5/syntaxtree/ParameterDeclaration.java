//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> DeclarationSpecifiers()
 * f1 -> ParameterAbstraction()
 */
public class ParameterDeclaration implements Node {
   public DeclarationSpecifiers f0;
   public ParameterAbstraction f1;

   public ParameterDeclaration(DeclarationSpecifiers n0, ParameterAbstraction n1) {
      f0 = n0;
      f1 = n1;
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


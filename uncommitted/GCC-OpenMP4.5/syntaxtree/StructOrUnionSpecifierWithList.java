//
// Generated by JTB 1.3.2
//

package syntaxtree;

/**
 * Grammar production:
 * f0 -> StructOrUnion()
 * f1 -> ( <IDENTIFIER> )?
 * f2 -> "{"
 * f3 -> StructDeclarationList()
 * f4 -> "}"
 */
public class StructOrUnionSpecifierWithList implements Node {
   public StructOrUnion f0;
   public NodeOptional f1;
   public NodeToken f2;
   public StructDeclarationList f3;
   public NodeToken f4;

   public StructOrUnionSpecifierWithList(StructOrUnion n0, NodeOptional n1, NodeToken n2, StructDeclarationList n3, NodeToken n4) {
      f0 = n0;
      f1 = n1;
      f2 = n2;
      f3 = n3;
      f4 = n4;
   }

   public StructOrUnionSpecifierWithList(StructOrUnion n0, NodeOptional n1, StructDeclarationList n2) {
      f0 = n0;
      f1 = n1;
      f2 = new NodeToken("{");
      f3 = n2;
      f4 = new NodeToken("}");
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


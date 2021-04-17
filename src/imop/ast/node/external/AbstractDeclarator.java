/*
 * Copyright (c) 2019 Aman Nougrahiya, V Krishna Nandivada, IIT Madras.
 * This file is a part of the project IMOP, licensed under the MIT license.
 * See LICENSE.md for the full text of the license.
 * 
 * The above notice shall be included in all copies or substantial
 * portions of this file.
 */
//
// Generated by JTB 1.3.2
//

package imop.ast.node.external;

/**
 * Grammar production:
 * f0 ::= AbstractDeclaratorWithPointer()
 * | DirectAbstractDeclarator()
 */
public class AbstractDeclarator extends Node {
	{
		classId = 1487;
	}

	public AbstractDeclarator() {
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = -6432733495680250027L;
	private NodeChoice f0;

	public AbstractDeclarator(NodeChoice n0) {
		n0.setParent(this);
		setF0(n0);
		n0.setParent(this);
	}

	@Override
	public void accept(imop.baseVisitor.Visitor v) {
		v.visit(this);
	}

	@Override
	public <R, A> R accept(imop.baseVisitor.GJVisitor<R, A> v, A argu) {
		return v.visit(this, argu);
	}

	@Override
	public <R> R accept(imop.baseVisitor.GJNoArguVisitor<R> v) {
		return v.visit(this);
	}

	@Override
	public <A> void accept(imop.baseVisitor.GJVoidVisitor<A> v, A argu) {
		v.visit(this, argu);
	}

	public NodeChoice getF0() {
		return f0;
	}

	public void setF0(NodeChoice f0) {
		f0.setParent(this);
		this.f0 = f0;
	}
}

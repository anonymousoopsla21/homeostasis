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
 * f0 ::= SimpleLabeledStatement()
 * | CaseLabeledStatement()
 * | DefaultLabeledStatement()
 */
public class LabeledStatement extends Statement {
	{
		classId = 33;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 70666771209252048L;
	private NodeChoice labStmtF0;

	public LabeledStatement(NodeChoice n0) {
		n0.setParent(this);
		setLabStmtF0(n0);
	}

	public LabeledStatement() {
		// This constructor shall be used only to create the objects of subclasses
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

	public NodeChoice getLabStmtF0() {
		return labStmtF0;
	}

	public void setLabStmtF0(NodeChoice labStmtF0) {
		labStmtF0.setParent(this);
		this.labStmtF0 = labStmtF0;
	}
}

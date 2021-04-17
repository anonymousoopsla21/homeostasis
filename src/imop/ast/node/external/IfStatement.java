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

import imop.ast.info.cfgNodeInfo.IfStatementInfo;

/**
 * Grammar production:
 * f0 ::= <IF>
 * f1 ::= "("
 * f2 ::= Expression()
 * f3 ::= ")"
 * f4 ::= Statement()
 * f5 ::= ( <ELSE> Statement() )?
 */
public class IfStatement extends SelectionStatement {
	{
		classId = 64011;
	}

	public IfStatement() {
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 8345792156625593261L;
	private NodeToken f0;
	private NodeToken f1;
	private Expression f2;
	private NodeToken f3;
	private Statement f4;
	private NodeOptional f5;

	public IfStatement(NodeToken n0, NodeToken n1, Expression n2, NodeToken n3, Statement n4, NodeOptional n5) {
		n0.setParent(this);
		n1.setParent(this);
		n2.setParent(this);
		n3.setParent(this);
		n4.setParent(this);
		n5.setParent(this);
		setF0(n0);
		setF1(n1);
		setF2(n2);
		setF3(n3);
		setF4(n4);
		setF5(n5);
	}

	public IfStatement(Expression n0, Statement n1, NodeOptional n2) {
		n0.setParent(this);
		n1.setParent(this);
		n2.setParent(this);
		setF0(new NodeToken("if"));
		getF0().setParent(this);
		setF1(new NodeToken("("));
		getF1().setParent(this);
		setF2(n0);
		setF3(new NodeToken(")"));
		getF3().setParent(this);
		setF4(n1);
		setF5(n2);
	}

	@Override
	public boolean isKnownCFGNode() {
		return true;
	}

	@Override
	public boolean isKnownCFGLeafNode() {
		return false;
	}

	@Override
	public IfStatementInfo getInfo() {
		if (info == null) {
			info = new IfStatementInfo(this);
		}
		return (IfStatementInfo) info;
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

	public NodeToken getF0() {
		return f0;
	}

	public void setF0(NodeToken f0) {
		f0.setParent(this);
		this.f0 = f0;
	}

	public NodeToken getF1() {
		return f1;
	}

	public void setF1(NodeToken f1) {
		f1.setParent(this);
		this.f1 = f1;
	}

	public Expression getF2() {
		return f2;
	}

	public void setF2(Expression f2) {
		f2.setParent(this);
		this.f2 = f2;
	}

	public NodeToken getF3() {
		return f3;
	}

	public void setF3(NodeToken f3) {
		f3.setParent(this);
		this.f3 = f3;
	}

	public Statement getF4() {
		return f4;
	}

	public void setF4(Statement f4) {
		f4.setParent(this);
		this.f4 = f4;
	}

	public NodeOptional getF5() {
		return f5;
	}

	public void setF5(NodeOptional f5) {
		f5.setParent(this);
		this.f5 = f5;
	}

}
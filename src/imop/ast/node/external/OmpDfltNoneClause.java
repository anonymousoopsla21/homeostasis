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

import imop.ast.info.OmpDfltNoneClauseInfo;
import imop.ast.node.internal.*;

/**
 * Grammar production:
 * f0 ::= <DFLT>
 * f1 ::= "("
 * f2 ::= <NONE>
 * f3 ::= ")"
 */
public class OmpDfltNoneClause extends OmpClause {
	{
		classId *= 419;
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = -3774394312452374386L;
	private NodeToken f0;
	private NodeToken f1;
	private NodeToken f2;
	private NodeToken f3;

	public OmpDfltNoneClause(NodeToken n0, NodeToken n1, NodeToken n2, NodeToken n3) {
		n0.setParent(this);
		n1.setParent(this);
		n2.setParent(this);
		n3.setParent(this);
		setF0(n0);
		setF1(n1);
		setF2(n2);
		setF3(n3);
	}

	public OmpDfltNoneClause() {
		setF0(new NodeToken("default"));
		getF0().setParent(this);
		setF1(new NodeToken("("));
		getF1().setParent(this);
		setF2(new NodeToken("none"));
		getF2().setParent(this);
		setF3(new NodeToken(")"));
		getF3().setParent(this);
	}

	@Override
	public OmpDfltNoneClauseInfo getInfo() {
		if (info == null) {
			this.info = new OmpDfltNoneClauseInfo(this);
		}
		return (OmpDfltNoneClauseInfo) info;
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

	public NodeToken getF2() {
		return f2;
	}

	public void setF2(NodeToken f2) {
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
}

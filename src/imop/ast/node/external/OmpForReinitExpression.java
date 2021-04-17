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

import imop.ast.info.cfgNodeInfo.OmpForReinitExpressionInfo;

/**
 * Grammar production:
 * f0 ::= PostIncrementId()
 * | PostDecrementId()
 * | PreIncrementId()
 * | PreDecrementId()
 * | ShortAssignPlus()
 * | ShortAssignMinus()
 * | OmpForAdditive()
 * | OmpForSubtractive()
 * | OmpForMultiplicative()
 */
public class OmpForReinitExpression extends Node {
	{
		classId = 281;
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 8429260463820014474L;
	private NodeChoice ompForReinitF0;

	public OmpForReinitExpression(NodeChoice n0) {
		n0.setParent(this);
		setOmpForReinitF0(n0);
	}

	public OmpForReinitExpression() {
		// This constructor shall be used to create objects of subclasses.
	}

	@Override
	public boolean hasKnownCFGStatus() {
		return false;
	}

	public boolean isCFGNode() {
		return true;
	}

	@Override
	public OmpForReinitExpressionInfo getInfo() {
		if (info == null) {
			info = new OmpForReinitExpressionInfo(this);
		}
		return (OmpForReinitExpressionInfo) info;
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

	public NodeChoice getOmpForReinitF0() {
		return ompForReinitF0;
	}

	public void setOmpForReinitF0(NodeChoice ompForReinitF0) {
		ompForReinitF0.setParent(this);
		this.ompForReinitF0 = ompForReinitF0;
	}
}
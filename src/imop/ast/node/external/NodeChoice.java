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
 * Represents a grammar choice, e.g. ( A | B )
 */
public class NodeChoice extends Node {
	{
		classId = 547;
	}

	public NodeChoice() {
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = -156886913798206568L;

	private Node choice;

	public NodeChoice(Node node) {
		this(node, -1);
	}

	public NodeChoice(Node node, int whichChoice) {
		node.setParent(this);
		setChoice(node);
	}

	@Override
	public void accept(imop.baseVisitor.Visitor v) {
		v.visit(this);
		// choice.accept(v);
	}

	@Override
	public <R, A> R accept(imop.baseVisitor.GJVisitor<R, A> v, A argu) {
		return v.visit(this, argu);
		// return choice.accept(v,argu);
	}

	@Override
	public <R> R accept(imop.baseVisitor.GJNoArguVisitor<R> v) {
		return v.visit(this);
		// return choice.accept(v);
	}

	@Override
	public <A> void accept(imop.baseVisitor.GJVoidVisitor<A> v, A argu) {
		v.visit(this, argu);
		// choice.accept(v,argu);
	}

	public Node getChoice() {
		return choice;
	}

	public void setChoice(Node choice) {
		choice.setParent(this);
		this.choice = choice;
	}
}

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

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Represents a grammar list, e.g. ( A )+
 */
public class NodeList extends NodeListClass {
	{
		classId = 282943;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 8165957892093115909L;

	private List<Node> nodes;

	public NodeList() {
		setNodes(new ArrayList<>());
	}

	public NodeList(Node firstNode) {
		setNodes(new ArrayList<>());
		firstNode.setParent(this);
		addNode(firstNode);
	}

	public NodeList(List<Node> nodes) {
		this.setNodes(new ArrayList<>(nodes));
		for (Node node : nodes) {
			node.setParent(this);
		}
	}

	@Override
	public void addNode(Node n) {
		n.setParent(this);
		this.nodes.add(n);
	}

	public void addNode(int i, Node n) {
		n.setParent(this);
		this.nodes.add(i, n);
	}

	public void removeNode(Node node) {
		node.setParent(null);
		this.nodes.remove(node);
	}

	@Override
	public List<Node> elements() {
		return this.nodes;
	}

	@Override
	public Node elementAt(int i) {
		return this.nodes.get(i);
	}

	@Override
	public int size() {
		return this.nodes.size();
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

	public List<Node> getNodes() {
		return Collections.unmodifiableList(nodes);
	}

	public void setNodes(List<Node> nodes) {
		this.nodes = nodes;
	}

	public void trimToSize() {
		((ArrayList<Node>) this.nodes).trimToSize();
	}

	public void removeNode(int index) {
		this.nodes.remove(index);
	}
}

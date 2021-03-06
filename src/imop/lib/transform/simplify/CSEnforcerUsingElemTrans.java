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

package imop.lib.transform.simplify;

import imop.ast.node.external.*;
import imop.baseVisitor.DepthFirstVisitor;
import imop.lib.cfg.info.SectionsConstructCFGInfo;
import imop.lib.util.Misc;
import imop.parser.FrontEnd;

import java.util.List;

/**
 * Ensures that except as an element of a CompoundStatement (CS), or destination
 * of a label, a non-CS-wrapping Statement should not be present elsewhere.
 * <br>
 * NOTE: Instead of using this visitor that relies on the elementary
 * transformations, it is better to use {@link CompoundStatementEnforcer},
 * which is must faster, owing to its direct AST manipulations.
 */
public class CSEnforcerUsingElemTrans extends DepthFirstVisitor {

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= ParallelDirective()
	 * f2 ::= Statement()
	 */
	@Override
	public void visit(ParallelConstruct n) {
		Statement oldStmt = n.getParConsF2();
		if (!(oldStmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(compStmt);
			compStmt.getInfo().getCFGInfo().addElement(oldStmt);
		}
		n.getParConsF2().accept(this);
	}

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= ForDirective()
	 * f2 ::= OmpForHeader()
	 * f3 ::= Statement()
	 */
	@Override
	public void visit(ForConstruct n) {
		Statement oldStmt = n.getF3();
		if (!(oldStmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(compStmt);
			compStmt.getInfo().getCFGInfo().addElement(oldStmt);
		}
		n.getF3().accept(this);
	}

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <SECTIONS>
	 * f2 ::= NowaitDataClauseList()
	 * f3 ::= OmpEol()
	 * f4 ::= SectionsScope()
	 */
	@Override
	public void visit(SectionsConstruct n) {
		SectionsConstructCFGInfo sectionsConsInfo = n.getInfo().getCFGInfo();
		List<Statement> sectionList = sectionsConsInfo.getSectionList();
		for (Statement sectionStmt : sectionList) {
			if (!(sectionStmt instanceof CompoundStatement)) {
				// if (CompoundStatementEnforcer.needsWrapping(sectionStmt)) {
				Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
				CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
				sectionsConsInfo.removeSection(sectionStmt);
				int index = sectionList.indexOf(sectionStmt);
				sectionsConsInfo.addSection(index, compStmt);
				compStmt.getInfo().getCFGInfo().addElement(sectionStmt);
			}
		}
		n.getF4().accept(this);
	}

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <SINGLE>
	 * f2 ::= SingleClauseList()
	 * f3 ::= OmpEol()
	 * f4 ::= Statement()
	 */
	@Override
	public void visit(SingleConstruct n) {
		Statement oldStmt = n.getF4();
		if (!(oldStmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(compStmt);
			compStmt.getInfo().getCFGInfo().addElement(oldStmt);
		}
		n.getF4().accept(this);
	}

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <TASK>
	 * f2 ::= ( TaskClause() )*
	 * f3 ::= OmpEol()
	 * f4 ::= Statement()
	 */
	@Override
	public void visit(TaskConstruct n) {
		Statement oldStmt = n.getF4();
		if (!(oldStmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(compStmt);
			compStmt.getInfo().getCFGInfo().addElement(oldStmt);
		}
		n.getF4().accept(this);
	}

	// Old Code: Won't be called, if ExpressionSimplification has been performed
	// already, as is the case.
	// /**
	// * f0 ::= OmpPragma()
	// * f1 ::= <PARALLEL>
	// * f2 ::= <FOR>
	// * f3 ::= UniqueParallelOrUniqueForOrDataClauseList()
	// * f4 ::= OmpEol()
	// * f5 ::= OmpForHeader()
	// * f6 ::= Statement()
	// */
	// @Override
	// public void visit(ParallelForConstruct n) {
	// if (CompoundStatementEnforcer.needsWrapping(n.getF6())) {
	// Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
	// CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
	// n.getInfo().getCFGInfo().setBody(compStmt);
	// compStmt.getInfo().getCFGInfo().addElement(n.getF6());
	// }
	// n.getF6().accept(this);
	// }

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <MASTER>
	 * f2 ::= OmpEol()
	 * f3 ::= Statement()
	 */
	@Override
	public void visit(MasterConstruct n) {
		Statement oldStmt = n.getF3();
		if (!(oldStmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(compStmt);
			compStmt.getInfo().getCFGInfo().addElement(oldStmt);
		}
		n.getF3().accept(this);
	}

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <CRITICAL>
	 * f2 ::= ( RegionPhrase() )?
	 * f3 ::= OmpEol()
	 * f4 ::= Statement()
	 */
	@Override
	public void visit(CriticalConstruct n) {
		Statement oldStmt = n.getF4();
		if (!(oldStmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(compStmt);
			compStmt.getInfo().getCFGInfo().addElement(oldStmt);
		}
		n.getF4().accept(this);

	}

	/**
	 * f0 ::= OmpPragma()
	 * f1 ::= <ORDERED>
	 * f2 ::= OmpEol()
	 * f3 ::= Statement()
	 */
	@Override
	public void visit(OrderedConstruct n) {
		Statement oldStmt = n.getF3();
		if (!(oldStmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(compStmt);
			compStmt.getInfo().getCFGInfo().addElement(oldStmt);
		}
		n.getF3().accept(this);
	}

	/**
	 * f0 ::= <IF>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 * f4 ::= Statement()
	 * f5 ::= ( <ELSE> Statement() )?
	 */
	@Override
	public void visit(IfStatement n) {
		Statement stmt = n.getF4();
		if (!(stmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setThenBody(outSt);
			compStmt.getInfo().getCFGInfo().addElement(stmt);
		}
		n.getF4().accept(this);

		if (n.getF5().present()) {
			Statement oldElseBody = n.getInfo().getCFGInfo().getElseBody();
			stmt = Misc.getStatementWrapper(oldElseBody);
			if (!(stmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
				Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
				CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
				n.getInfo().getCFGInfo().setElseBody(compStmt);
				compStmt.getInfo().getCFGInfo().addElement(oldElseBody);
			}
			n.getF5().accept(this);
		}
	}

	/**
	 * f0 ::= <SWITCH>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 * f4 ::= Statement()
	 */
	@Override
	public void visit(SwitchStatement n) {
		Statement stmt = n.getF4();
		if (!(stmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(outSt);
			compStmt.getInfo().getCFGInfo().addElement(stmt);
		}
		n.getF4().accept(this);
	}

	/**
	 * f0 ::= <WHILE>
	 * f1 ::= "("
	 * f2 ::= Expression()
	 * f3 ::= ")"
	 * f4 ::= Statement()
	 */
	@Override
	public void visit(WhileStatement n) {
		Statement stmt = n.getF4();
		if (!(stmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(outSt);
			compStmt.getInfo().getCFGInfo().addElement(stmt);
		}
		n.getF4().accept(this);
	}

	/**
	 * f0 ::= <DO>
	 * f1 ::= Statement()
	 * f2 ::= <WHILE>
	 * f3 ::= "("
	 * f4 ::= Expression()
	 * f5 ::= ")"
	 * f6 ::= ";"
	 */
	@Override
	public void visit(DoStatement n) {
		Statement stmt = n.getF1();
		if (!(stmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(outSt);
			compStmt.getInfo().getCFGInfo().addElement(stmt);
		}
		n.getF1().accept(this);
	}

	/**
	 * f0 ::= <FOR>
	 * f1 ::= "("
	 * f2 ::= ( Expression() )?
	 * f3 ::= ";"
	 * f4 ::= ( Expression() )?
	 * f5 ::= ";"
	 * f6 ::= ( Expression() )?
	 * f7 ::= ")"
	 * f8 ::= Statement()
	 */
	@Override
	public void visit(ForStatement n) {
		Statement stmt = n.getF8();
		if (!(stmt.getStmtF0().getChoice() instanceof CompoundStatement)) {
			Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			n.getInfo().getCFGInfo().setBody(outSt);
			compStmt.getInfo().getCFGInfo().addElement(stmt);
		}
		n.getF8().accept(this);
	}

	/**
	 * Tells whether we need to call {@code wrapCS} for {@code inSt} or not.
	 * 
	 * @param inSt
	 *             statement that should be immediately wrapping a
	 *             CompoundStatement.
	 * @return
	 *         true if {@inSt} doesn't immediately wraps a CompoundStatement.
	 * @deprecated
	 */
	@Deprecated
	public static boolean needsWrapping(Statement inSt) {
		inSt = Misc.getStatementWrapper(inSt);
		if (inSt.getStmtF0().getChoice() instanceof CompoundStatement) {
			return false;
		} else {
			return true;
		}
	}

	/**
	 * Obtain a compound-statement wrapped equivalent of {@code inSt}.
	 * 
	 * @param inSt
	 *             a Statement that needs to be wrapped with compound-statement.
	 * @return
	 *         {@code inSt} if it immediately wraps a CompoundStatement,
	 *         else, an equivalent which does.
	 * @deprecated This method can't be used since a CompoundStatement needs to
	 *             be attached to its proper position first before it gets
	 *             populated with Statements that refer to free variables.
	 */
	@Deprecated
	@SuppressWarnings("unused")
	private Statement wrapCS(Statement inSt) {
		inSt = Misc.getStatementWrapper(inSt);
		Statement outSt = inSt;
		if (inSt.getStmtF0().getChoice() instanceof CompoundStatement) {
			outSt = inSt;
		} else {
			outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
			CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
			compStmt.getInfo().getCFGInfo().addElement(inSt);
			// Old Code:
			// List<Node> compoundStatementElement = new ArrayList<>();
			// compoundStatementElement.add(new CompoundStatementElement(new
			// NodeChoice(inSt)));
			// outSt = new CompoundStatement(new
			// NodeListOptional(compoundStatementElement));
			// outSt = new Statement(new NodeChoice(outSt));
			// outSt.accept(new CFGGenerator());
		}
		assert (outSt.getClass() == Statement.class);
		return outSt;
	}

	/**
	 * A public version of {@link #wrapCS(Statement)}, which takes a slightly
	 * different approach of utilizing safe methods to produce a
	 * compound-statement wrapping around the statement {@code inSt}.
	 * 
	 * @param inSt
	 * @return
	 * @deprecated This method can't be used since a CompoundStatement needs to
	 *             be attached to its proper position first before it gets
	 *             populated with Statements that refer to free variables.
	 */
	@Deprecated
	public static CompoundStatement wrappedCS(Statement inSt) {
		inSt = Misc.getStatementWrapper(inSt);
		Statement outSt = FrontEnd.parseAndNormalize("{}", Statement.class);
		CompoundStatement compStmt = (CompoundStatement) Misc.getCFGNodeFor(outSt);
		compStmt.getInfo().getCFGInfo().addElement(inSt);
		return compStmt;
	}

}

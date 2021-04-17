#!/bin/bash
for LINK in $(cat allLinks.txt)
do
	echo "// Testcase to test insertion of an immediate predecessor in $LINK"
	read -r -d '' STR<<- EOM
	@Test
	public void iis$LINK() throws FileNotFoundException {
		String[] args = { "-f", "src/imop/lib/testcases/higher/$LINK.c" };
		Program.parseNormalizeInput(args);
		String rootInput = Program.root.toString();
		for (ForStatement ownerNode : Misc.getInheritedEnclosee(Program.root, ForStatement.class)) {
			for (Node element : ownerNode.getInfo().getCFGInfo().getAllComponents()) {
				CFGLink link = CFGLinkFinder.getCFGLinkFor(element);
				if (link instanceof $LINK) {
					InsertImmediateSuccessor.insertAggressive(element,
							FrontEnd.parseAndNormalize("12345;", ExpressionStatement.class));
				}
				break;
			}
			break;
		}
		Misc.dumpRoot("outP");
		assertEquals("Assert passed.", 0, 0);
	}
	EOM
	echo $STR

	echo "// Testcase to test insertion of an immediate successor in $LINK"
	read -r -d '' STR<<- EOM
	@Test
	public void iip$LINK() throws FileNotFoundException {
		String[] args = { "-f", "src/imop/lib/testcases/higher/$LINK.c" };
		Program.parseNormalizeInput(args);
		String rootInput = Program.root.toString();
		for (ForStatement ownerNode : Misc.getInheritedEnclosee(Program.root, ForStatement.class)) {
			for (Node element : ownerNode.getInfo().getCFGInfo().getAllComponents()) {
				CFGLink link = CFGLinkFinder.getCFGLinkFor(element);
				if (link instanceof $LINK) {
					InsertImmediatePredecessor.insertAggressive(element,
							FrontEnd.parseAndNormalize("12345;", ExpressionStatement.class));
				}
				break;
			}
			break;
		}
		Misc.dumpRoot("outS");
		assertEquals("Assert passed.", 0, 0);
	}
	EOM
	echo $STR

	echo "// Testcase to test insertion on an edge for $LINK"
	read -r -d '' STR<<- EOM
	@Test
	public void iote$LINK() throws FileNotFoundException {
		String[] args = { "-f", "src/imop/lib/testcases/higher/$LINK.c" };
		Program.parseNormalizeInput(args);
		String rootInput = Program.root.toString();
		for (ForStatement ownerNode : Misc.getInheritedEnclosee(Program.root, ForStatement.class)) {
			for (Node element : ownerNode.getInfo().getCFGInfo().getAllComponents()) {
				CFGLink link = CFGLinkFinder.getCFGLinkFor(element);
				if (link instanceof $LINK) {
					InsertOnTheEdge.insertAggressive(element, element.getInfo().getCFGInfo().getLeafSuccessors().get(0),
							FrontEnd.parseAndNormalize("12345;", ExpressionStatement.class));
				}
				break;
			}
			break;
		}
		Misc.dumpRoot("outIOTE");
		assertEquals("Assert passed.", 0, 0);
	}
	EOM
	echo $STR
done

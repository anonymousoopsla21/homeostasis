#!/bin/bash
for CONS in $(cat allCFGs.txt)
do
	CONSNAME=$(echo $CONS | cut -f1 -d.)
	echo -e "/**\n*Testcase to test creation of CFG edges for ${CONS}\n*/"
	read -r -d '' STR<<- EOM
	@Test
	public void test${CONSNAME}CFG() throws FileNotFoundException {
		String[] args = { "-f", "src/imop/lib/testcases/cfgTests/${CONSNAME}.c" };
		Program.parseNormalizeInput(args);
		String filePath = CFGGenerationTest.class.getProtectionDomain().getCodeSource().getLocation().getFile();
		String fs = System.getProperty("file.separator");
		System.setIn(
				new FileInputStream(filePath + ".." + fs + "src" + fs + "test" + fs + "expected" + fs + "cfgTest" + fs + "${CONSNAME}nestedDotGraph.gv"));
		InputStream inStream = System.in;
		String str1 = Misc.getStringFromInputStream(inStream);
		System.setIn(
				new FileInputStream(filePath + ".." + fs + "output-dump" + fs + "${CONSNAME}nestedDotGraph.gv"));
		inStream = System.in;
		String str2 = Misc.getStringFromInputStream(inStream);
		assertEquals("Assert failed for ${CONSNAME}.", str2, str1);
	}
	EOM
	echo $STR
done

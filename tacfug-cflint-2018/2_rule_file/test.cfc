/*
	List of rules:
	https://github.com/cflint/CFLint/blob/master/RULES.md

	java -jar D:\tacfug\CFLint-1.3.0-all.jar -file test.cfc --textfile results.txt
*/
component 
{
	writeDump(var="#foo#", label="Dump ( foo )", abort="false", format="html", output="");
	public string function getBasePath(required string script_name){
		var path = arguments.script_name & '/';
		for(var i =listlen(path,'/'); 3 < i; i--){
			path = ListDeleteAt(path,i,'/');
		}
		return path;	
	}
}


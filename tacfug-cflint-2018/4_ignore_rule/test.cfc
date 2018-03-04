/*
	List of rules:
	https://github.com/cflint/CFLint/blob/master/RULES.md

	java -jar D:\tacfug\CFLint-1.3.0-all.jar -file test.cfc --textfile results.txt
*/



/*
    @CFLintIgnore FUNCTION_HINT_MISSING
*/
component {
	writeDump(var="#foo#"
		, label="Dump ( foo )"
		, abort="false"
		, format="html"
		, output=""); //cflint ignore:line
	
	public string function getBasePath(required string script_name){
		var path = arguments.script_name & '/';
		for(var i =listlen(path,'/'); 3 < i; i--){
			path = ListDeleteAt(path,i,'/');
		}
		return path;	
	}

	public string function anotherMethod1(){
		var foo = "Bar";
		return foo;	
	}

	public string function anotherMethod2(){
		var foo = "Bar";
		return foo;	
	}

	public string function anotherMethod3(){
		var foo = "Bar";
		return foo;	
	}


}


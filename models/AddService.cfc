
component singleton {

	
	AddService function init(){
		
		return this;
	}
	function getAll(){

	}


	// public any function submitData1 (){
	// 	//crud
	// 	return "hello ashutosh 1"
	// }
	// public any function submitData2 (){
	// 	//crud
	// 	return "hello ashutosh 2"
	// }

	public any function deleteData (struct deliT){
		if (arguments.deliT.del > 0) {
			var q = new query();
			q.addParam(name = "ide", value = arguments.deliT.ide, cfsqltype="int");
			var sql = "delete from emp_new where EMPLOYEE_ID = :ide";
			q.setSQL(sql);
			var r = q.execute().getPrefix();
			return r;
			
		}
		else {
			// If no valid ID is provided, return an error message
			return "No valid ID provided for deletion.";
		}

	}
	public any function inertData ( struct formdata ){
		if(arguments.formdata.ide != "0"){
		var q  = new query();
		q.addParam(name = "fname", value = arguments.formdata.fname, cfsqltype = "varchar");
		q.addParam(name = "lname", value = arguments.formdata.lname, cfsqltype = "varchar");
		q.addParam(name = "email", value = arguments.formdata.email, cfsqltype = "varchar");
		q.addParam(name = "salary", value = arguments.formdata.salary, cfsqltype = "decimal");
		q.addParam(name = "ide", value = arguments.formdata.ide, cfsqltype="int");
		var sql = "update emp_new set FIRST_NAME=:fname, LAST_NAME =:lname,EMAIL= :email, SALARY =:salary where EMPLOYEE_ID = :ide";
		q.setSQL(sql);
		var r = q.execute().getPrefix();
		return r;
		}
		
		else{	
		var q  = new query();
		q.addParam(name = "fname", value = arguments.formdata.fname, cfsqltype = "varchar");
		q.addParam(name = "lname", value = arguments.formdata.lname, cfsqltype = "varchar");
		q.addParam(name = "email", value = arguments.formdata.email, cfsqltype = "varchar");
		q.addParam(name = "salary", value = arguments.formdata.salary, cfsqltype = "decimal");
		var sql = "insert into emp_new (FIRST_NAME,LAST_NAME,EMAIL,SALARY) values (:fname,:lname,:email,:salary)"
		q.setSQL(sql);
		var r = q.execute().getPrefix();
		return r;
		}

		//crud
		<!--- writeDump(formdata);
		abort;
		return "hello ashutosh 3" --->
	}





}
component extends="coldbox.system.EventHandler" {
	property name="aush" inject="AddService";

	/**
	 * Default Action
	 */
	<!--- function index( event, rc, prc ){
		// prc.welcomeMessage = "hELLO to ColdBox! ";
		// prc.a=""
		// prc.b=""
		prc.add = ""
		event.setView( "main/index" );
	} --->
	// function SubmitData( event, rc, prc ){
	// 	prc.a = aush.submitData1(rc)
	// 	prc.b = aush.submitData2(rc)
	// 	event.setView( "main/index" );
	// }
	<!--- function Insert( event, rc, prc ){
		prc.add = aush.inertData(rc)
		event.setView( "main/index" );
	} --->
	public void function DelData(event, rc, prc){
		var del = trim(rc.del);
		var ide = trim(rc.Emp_ID);
		var deliT = {
			del = del,
			ide = ide
		}
		var deli = aush.deleteData(deliT);
		event.setView( "main/index" );

	}
	function updUser (event, rc, prc){
		writeDump(rc.userID);abort;
	}


	public void function SubmitData(event, rc, prc) {
        // Retrieve form data
		var ide = trim(rc.Emp_ID);
        var fname = trim(rc.fname);
        var lname = trim(rc.lname);
        var email = trim(rc.email);
        var salary = trim(rc.salary);

		
        // Example: store data in variables
        var formData = {
			ide = ide,
			fname = fname,
			lname = lname,
			email = email,
			salary = salary,
			
        }
		var data = aush.inertData(formData);
		event.setView( "main/index" );


        // Output or process the data
        // Here, we're just setting it to the view to display
        //<cfset variables.formData = formData>

        // Optionally, redirect or render a view with the data
        // For example, rendering a view to display the data:
        //<cfset event.renderView("displayData.cfm")>
    }



	/**
	 * Produce some restfulf data
	 */
	function data( event, rc, prc ){
		return [
			{ "id" : createUUID(), "name" : "Luis" },
			{ "id" : createUUID(), "name" : "Joe" },
			{ "id" : createUUID(), "name" : "Bob" },
			{ "id" : createUUID(), "name" : "Darth" }
		];
	}

	/**
	 * Relocation example
	 */
	function doSomething( event, rc, prc ){
		relocate( "main.index" );
	}

	/**
	 * --------------------------------------------------------------------------
	 * Implicit Actions
	 * --------------------------------------------------------------------------
	 * All the implicit actions below MUST be declared in the config/Coldbox.cfc in order to fire.
	 * https://coldbox.ortusbooks.com/getting-started/configuration/coldbox.cfc/configuration-directives/coldbox#implicit-event-settings
	 */

	function onAppInit( event, rc, prc ){
	}

	function onRequestStart( event, rc, prc ){
	}

	function onRequestEnd( event, rc, prc ){
	}

	function onSessionStart( event, rc, prc ){
	}

	function onSessionEnd( event, rc, prc ){
		var sessionScope     = event.getValue( "sessionReference" );
		var applicationScope = event.getValue( "applicationReference" );
	}

	function onException( event, rc, prc ){
		event.setHTTPHeader( statusCode = 500 );
		// Grab Exception From private request collection, placed by ColdBox Exception Handling
		var exception = prc.exception;
		// Place exception handler below:
	}

}

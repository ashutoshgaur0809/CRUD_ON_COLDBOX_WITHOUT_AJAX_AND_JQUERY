<cfoutput>
 
    <cfset Emp_ID = 0> 
    <cfset fname=""> 
    <cfset lname=""> 
    <cfset email=""> 
    <cfset salary=""> 
    <!--- <cfdump var="#url#"> --->
    <cfif structKeyExists(url,"Emp_id") and url.Emp_id GT 0  and url.del eq 0>
        <cfquery name="Get_Emp_By_Id">
            SELECT EMPLOYEE_ID,FIRST_NAME, LAST_NAME, EMAIL, SALARY 
            FROM emp_new
            where EMPLOYEE_ID = #url.Emp_id#;
        </cfquery>
        <!--- <cfdump var="#Get_Emp_By_Id#"><cfabort> --->

        <!--- Query ka output ho tab yani Query kuch return --->
        <cfif Get_Emp_By_Id.recordCount GT 0>
            <cfset fname=#Get_Emp_By_Id.FIRST_NAME#>    
            <cfset lname=#Get_Emp_By_Id.LAST_NAME#> 
            <cfset email=#Get_Emp_By_Id.EMAIL#> 
            <cfset salary=#Get_Emp_By_Id.SALARY#> 
            <cfset Emp_ID = #Get_Emp_By_Id.EMPLOYEE_ID#>

        </cfif>
    </cfif>
    
    <div class="container">
    <div class="modal-body">
        <div class="container mt-3">
            <cfform name="insertEmp" action="#event.buildLink("Main/SubmitData")#">
                <cfinput type="hidden" name="Emp_ID" class="form-control" value="#Emp_ID#"> 
                <!--- <cfinput type="hidden" name="del" class="form-control" value="#del#">  --->
                First Name : 
                <cfinput type="text" name="fname" class="form-control" value="#fname#"> <br> <br>
                Last Name : 
                <cfinput type="text" name="lname" class="form-control" value="#lname#"> <br> <br>
                Email :
                <cfinput type="text" name="email" class="form-control" value="#email#"> <br> <br>
                Salary :
                <cfinput type="text" name="salary" class="form-control" value="#salary#"> <br> <br> 
            
                
                
            
                <cfinput type="submit" name="btnSubmit" value="Submit" class="btn btn-primary">
            </cfform>
        
        </div>
    </div>

    </div>
    </div>
</cfoutput>
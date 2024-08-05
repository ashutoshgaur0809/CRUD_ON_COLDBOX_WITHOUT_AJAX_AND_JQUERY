
<cfoutput>
    

  <div class="container">
    <div class="alert alert-danger" role="alert">
        Are You Sure To Delete The Data
        <div class="modal-body">
            <div class="container mt-3">
                <cfform name="insertEmp" action="#event.buildLink("Main/DelData")#">
                    <cfinput type="hidden" name="del" class="form-control" value="#del#"> 
                    <cfinput type="hidden" name="Emp_ID" class="form-control" value="#Emp_ID#"> 
                    <cfinput type="submit" name="btnSubmit" value="Delete" class="btn btn-primary">
                </cfform>
            
            </div>
        </div>
    
        </div>
      </div>
    

    </div>
</cfoutput>
<!--- 
<cflocation url = "index.cfm" > --->
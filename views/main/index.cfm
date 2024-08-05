<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Employee Management</title>
        <!--- <link rel="stylesheet" href="../../layouts/index_style.css"> <!-- Link to your CSS file --> --->
    </head>
    <body>
    
<cfoutput>

<cfquery name="Get_Emp">
    SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, SALARY FROM emp_new;
</cfquery>

<div class="container mt-3">
    <h2 class="text-white">Employee Table</h2>
    
    <div class="mb-3">
        <a href="#event.buildLink("main/form?Emp_id=0&del=0")#" class="btn btn-primary">Add New Employee </a>
    </div>
    <table class="table table-bordered mt-2">
        <thead>
            <tr>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>Email</th>
                <th>Salary</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
      
            <cfloop query="Get_Emp">
                <tr>
                    <td>#FIRST_NAME#</td>
                    <td>#LAST_NAME#</td>
                    <td>#EMAIL#</td>
                    <td>#SALARY#</td>
                    <td>
                        <a href="#event.buildLink("main/form?Emp_id=#EMPLOYEE_ID#&del=0")#" class="btn btn-warning btn-sm">Update</a>
                        <a href="#event.buildLink("main/del?Emp_id=#EMPLOYEE_ID#&del=1")#" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </cfloop>
        </tbody>
    </table>
</div>
    </cfoutput>
</body>
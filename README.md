# Leave-Mangement

The proposed system can be used to automate the workflow of leave applications and their approvals. There are features like applying for leave, cancellation of leave,  approval of leave, auto salary reduction etc. in this system.

**Modules of the software:**

**Login Registration:** Admin provides username and password to the employee. He also has the right to add or modify the given username and password of the employee. Using this username and password, an employee can login to the system.

**Reset Password:**  There is also the facility to reset employee password based on the Username entered incase the employee forgets his/her password.

**Employee Registration:** The first procedure is the Employee registration. Here the Admin enters all the details of an Employee including their basic salary. All these information will be stored in the database. Registering presets the number of leaves based on Gender and Role.

**Salary:** Admin also has the authority to calculate the net salary for each employee depending on their attendance and basic salary.

**Leave apply:** The employees can even apply for leave using the system. There are only a limited leaves in a month. Exceeding the limit n employee cannot apply for leave. The leave notification will be sent to the Admin.

**Logout:** This module allows the user to Logout the application. Further operations cannot be performed after user exits.

**Database:** Microsoft Server Management Studio, Table includes number of leaves set during employee registeration. Each user also has a Unique Employee ID created using IDENTITY.

**ROLES**

*Employee:* Can access his employee page to review number of leaves left and can request for leave to the Admin(s) of his/her respective department. Cannot access other employee details. Acceptance or Rejection of leave request by admin will be notified to employee on his/her repective logged in session.

*HR:* Can view leaves requested/granted/rejected by all employess of all departments. Can be authorised for employee registeration.

*Admin:* Currently Admin can be of three departments Tech, Video or Social Media. Recieve notification and email of employee leave request with explanation and can accept or reject the same.

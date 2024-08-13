# sql-challenge
Module 9 Challenge

In the EmployeeSQL folder, I have included:

(1) An image file of the Entity_Relationship_Diagram from https://app.quickdatabasediagrams.com/#.
![Entity_Relationship_Diagram.png](EmployeeSQL/Entity_Relationship_Diagram.png?raw=true)

(2) A pdf of the [Entity_Relationship_Diagram_Documentation.pdf](EmployeeSQL/Entity_Relationship_Diagram_Documentation.pdf) from https://app.quickdatabasediagrams.com/#.

(3) A [Data_Engineering3.sql](EmployeeSQL/Data_Engineering3.sql) file of my table schemata. Used the PostgreSQL output from https://app.quickdatabasediagrams.com/#/ as a starter for my Data_Engineering.sql.

(4) A [Data_Analysis.sql](EmployeeSQL/Data_Analysis.sql) file of my queries. 

Query 1: List the employee number, last name, first name, sex, and salary of each employee.
<img src="EmployeeSQL/Data_Analysis_Output_Clips/query1.png" width=400>

Query 2: List the first name, last name, and hire date for the employees who were hired in 1986.
<img src="EmployeeSQL/Data_Analysis_Output_Clips/query2.png" width=400>

Query 3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
<img src="EmployeeSQL/Data_Analysis_Output_Clips/query3.png" width=400>

Query 4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
<img src="EmployeeSQL/Data_Analysis_Output_Clips/query4.png" width=400>

Query 5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
<img src="EmployeeSQL/Data_Analysis_Output_Clips/query5.png" width=400>

Query 6: List each employee in the Sales department, including their employee number, last name, and first name.
<img src="EmployeeSQL/Data_Analysis_Output_Clips/query6.png" width=400>

Query 7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
<img src="EmployeeSQL/Data_Analysis_Output_Clips/query7.png" width=400>

Query 8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
<img src="EmployeeSQL/Data_Analysis_Output_Clips/query8.png" width=400>

I also checked that the primary keys were all unique in the respective tables. The code for this is the [checkunique.ipynb](data/checkunique.ipynb) notebook file in the data folder.


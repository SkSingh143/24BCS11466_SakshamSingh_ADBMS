-- 1.Employee and Manager Names: Display a list of employee names along with their manager's names. Use the 'employees' table provided.
select e1.Employee_name as Employee ,e2.Employee_name as Manager 
from employees as e1 left join employees as e2
on e1.manager_id=e2.employee_id;


-- 2.Every Possible Combination: Show every possible combination of 'customer_name' from the 'customers' table and 'product_name' from the 'products' table.

select c1.customer_name,p1.product_name from customers as c1 cross join products as p1
# Globex Data Task

Globex is an export company that supplies widgets to consumers around the world. Their **DBA** (database administer) recently left without warning and they need some help. There are a series of questions below that need answering.

If you're unfamiliar with SQL the questions loosely follow the structure of the Module 9 additional reading.

(We have provided the answers to all of the questions below. This will let you check your working as you go.)

Note: You should have already followed the [set-up instructions](https://github.com/CorndelWithSoftwire/Globex-Database). If not, do that now.

## Reading Data

1.  What is last name of Employee with `Id` 10?
    <details><summary>Answer</summary>Golthorpp</details>

2.  What is the `Id` of the Employee with NationalInsuranceNumber `9696037031`?
    <details><summary>Answer</summary>760</details>

3.  What is Simonette Wellbeloved's employee Id?
    <details><summary>Answer</summary>649</details>

4.  What is the full name of the only employee at PayBand 3, who is managed by Simonette Wellbeloved?
    <details><summary>Answer</summary>Donnajean Pitfield</details>

5.  Who is the oldest employee?
    <details><summary>Answer</summary>Winny Dmtrovic</details>

6.  Who is the youngest employee?
    <details><summary>Answer</summary>Brigham Brookwell</details>

> You might find the `COUNT` function useful for future questions. Example usage: `SELECT COUNT(*) FROM Employee`.

7. How many employees are at PayBand 1?
<details><summary>Answer</summary>153</details>

8. How many employees at PayBand 3 or below are **not** Union members?
<details><summary>Answer</summary>60</details>

## Joins

1.  What is the name of the product that was requested in the order with ID 149?
    <details><summary>Answer</summary>Flector</details>

2.  How many units of the product from the previous question were sold on the credit card with number `3535880159004410`?
    <details><summary>Answer</summary>7098.00</details>

3.  We've noticed an error in an upstream system. When updating an employee's manager the the employees table hasn't been correctly updated. The `ManagerId` has been updated, but the `ManagerFirstName` and `ManagerSurname` have not. How many records does this impact?
    <details><summary>Answer</summary>3</details>

## Aggregation

The value of an order can be calculated by multiplying the `Amount` of product ordered by its `SellingPrice`.

> You may want to make use of aggregate functions like `MAX` and `SUM` in the below.

1.  What was the value of order 115?
    <details><summary>Answer</summary>470866.56</details>

2.  What is the value of the highest value order in the system?
    <details><summary>Answer</summary>960151.08</details>

3.  What was the value of the most expensive order placed in 2019?
    <details><summary>Answer</summary>903860.40</details>
    <details><summary>Hint</summary>Try using the `DATEPART` function.</details>

4.  What was the value of all orders placed in 2019?
    <details><summary>Answer</summary>91770383.17</details>

5.  What was the value of all orders placed in 2019 excluding the following: 'Voltaren','Loud Child', 'topiramate', 'Omeprazole'?
    <details><summary>Answer</summary>84689146.20</details>

6.  (Optional) The finance director needs a month-by-month report of order values for 2020. Please write a query to produce a order values grouped by month name.
    <details><summary>Answer</summary>QQ - It's a table</details>
    <details><summary>Hint</summary>You'll need the `GROUPBY` function.</details>

7.  (Optional) Please adapt the above report so it prints the month names in Spanish.
    <details><summary>Answer</summary>QQ - It's a table</details>
    <details><summary>Hint</summary>The `FORMAT` function can take a 'culture' parameter.</details>

8.  (Optional) The report now needs to include every year - grouped and ordered by year _and_ month.
    <details><summary>Answer</summary>QQ - It's a table</details>
    <details><summary>Hint</summary>You can pass multiple values to `ORDER BY` and `GROUP BY` commands.</details>

## Optional Extras

1.  Write a query that produces a report of PayBands, the total monthly salary paid to everyone in each band and what percentage of the total monthly salary bill that is.

    <details><summary>Hint</summary>

    You may find it helpful to use a [temporary table](https://codingsight.com/introduction-to-temporary-tables-in-sql-server/) or [local variable](https://docs.microsoft.com/en-us/sql/t-sql/language-elements/declare-local-variable-transact-sql?).

    </details>

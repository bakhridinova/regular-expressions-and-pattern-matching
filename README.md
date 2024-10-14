## Regular Expressions and Pattern Matching in PostgreSQL

### Goal
The goal of this exercise is to give you some practice using regular expressions in PostgreSQL to enhance your skills in advanced SQL querying and data manipulation.

### Duration
The task will take you about 1.5 hours.
Please be aware that the task is mandatory.
You can earn a maximum of 18 points.

### Task Description
You will work with the NORTHWIND database using the corresponding script from the previous topics.

#### Exercise 1: Identify Email Addresses in Contacts
Write a PostgreSQL query using regular expressions to extract all records from the Suppliers table where the Homepage field contains nonstandard Latin symbols.
Test: Ensure your query selects only records that contain non-standard Latin characters in the HomePage column.

#### Exercise 2: Format Phone Numbers in a Standard Format
Using the REGEXP_REPLACE() function, reformat phone numbers in the Customers table to the standard format (XXX) XXX-XXXX. Adapt the formatting to handle phone numbers of various lengths by padding shorter numbers with trailing zeros and trimming numbers longer than 10 digits from the left side as necessary.
Test: Apply this formatting to the Phone column and display the first 10 formatted phone numbers.

#### Exercise 3: Classify Customers Based on Postal Codes
Create a PostgreSQL function called classify_customer_by_postal_code(postal_code VARCHAR) that returns Local, National, or International based on the pattern of the postal code (e.g., Local for codes like 12345, National for codes like 123-456, and International for other formats).
Test: Use this function in a query on the Customers table to classify customers and display the first 10 results.

#### Exercise 4: Create a Trigger to Validate the Names of New Products
Develop a trigger that validates a ProductName in the Products table before insertion. The name of a product must start with an uppercase letter and be at least five characters long.
Test: Try to insert a few test records into the Products table to ensure the trigger validates the names of products correctly.

### Additional Requirements
- Label each file clearly, for example: e.g., sql, Task_02.sql.
- Submit a brief report summarizing the approach, including how regular expressions were utilized in each task.
- Ensure code readability with proper formatting and comments to explain its purpose and functionality.
- Include error handling in the function and a trigger to manage exceptions.
- Document the test cases used to validate each query and function.


## Evaluation Criteria

| Criteria/Points   | 0 points                                                    | 1 point                                                                | 2 points                                                                  | 3 points                                                                   | 4 points                                                              |
|-------------------|-------------------------------------------------------------|------------------------------------------------------------------------|---------------------------------------------------------------------------|----------------------------------------------------------------------------|-----------------------------------------------------------------------|
| Task Completeness | No attempt or incomplete response to task requirements      | Task is partially completed without meeting all specified requirements | Task is completed with syntax errors but meets all specified requirements | Task is completed with logical errors but meets all specified requirements | Task is completed with no errors and meets all specified requirements |
| Syntax Errors     | Code does not work                                          | Major syntax errors prevent code from being executed                   | Code has minimal syntax errors                                            | Code is free of syntax errors                                              |
| Logical Errors    | Code returns unexpected results                             | Major logical errors significantly affect the program's logic          | Code contains a few logical errors                                        | Code has minimal logical errors                                            | Code is free of logical errors                                        |
| Minor Issues      | Task is completed with a significant number of minor issues | Task is completed with a noticeable number of minor issues             | Task is completed with some minor issues                                  | Task is completed with minimal minor issues                                | Task is completed with no minor issues                                |
| Description       | Inadequate or missing description                           | Adequate description                                                   | Very good description                                                     | Excellent description                                                      | Outstanding description                                               |
| Creativity        | Little to no creativity                                     | Some creativity in using different language constructs                 | Very good creativity in using different language constructs               | Excellent creativity in using different language constructs                | Outstanding creativity; uses innovative, original constructs          |
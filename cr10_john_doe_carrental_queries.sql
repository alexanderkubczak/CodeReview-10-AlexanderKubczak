SELECT Email
FROM customer
WHERE FirstName = "Celo";



SELECT *
FROM invoice
WHERE InvoiceStatus = "Completed";


SELECT
   customer.LastName, customer.FirstName, models.manufacturer
FROM
   customer, models
WHERE
    FirstName LIKE "A%";




SELECT
   customer.Email, customer.TelephoneNumber, payment.PaymentType
FROM
   customer, payment
WHERE
    PaymentStatus = "Completed";


SELECT
   customer.Adress
FROM
   customer
WHERE
    FirstName = "Marvin";

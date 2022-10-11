1. Feladat
A 'products' táblában határozd meg a 'standard_cost' mezőjének átlagértékét
a, az össezs rekord esetében,
b, azon rekordok esetében, amelyeknél a 'list_price' 30-nál kisebb értékű,
c, azon rekordok esetében, amelyeknél a 'category' mezőben 'Sauces' érték található!


# (A,a) megoldás:
SELECT AVG(standard_cost) FROM prodocts;
SELECT AVG(lsit_price) FROM prodocts;

# (b,) megoldás + ellenőrzés:
 SELECT AVG(list_price) FROM products WHERE id < 30;
 SELECT * FROM products WHERE id < 30;
 
# (c,) megoldás:
SELECT AVG(standard_cost) FROM products WHERE category = 'Sauces';

2. Feladat
A 'products' táblában határozd meg a 'standard_cost' mezőjének összértékét
a, az össezs rekord esetében,
b, azon rekordok esetében, amelyeknél a 'list_price' értéke 20 és 50 közötti,
c, azon rekordok esetében, amelyeknél a 'category' mezőben NEM 'Sauces' érték található!

# (A,a,) megoldás:
  SELECT SUM(standard_cost) FROM products;
  SELECT SUM(list_price) FROM products;
  
# (b,) megoldás:
SELECT SUM(list_price) FROM products WHERE standard_cost BETWEEN 20 AND 50;

# (c,) megoldás:
SELECT SUM(standard_cost) FROM products WHERE NOT category = 'Sauces';

3. Feladat
A 'employees' táblában határozd meg azon alkalmazottak számát
a, akik Seattle-ben laknak,
b, akiknek 'Sales Representative' munkakörben dolgoznak
c, akiknek a keresztneve 'A' betűvel kezdődik!
 
(A,a) megoldás:
 SELECT COUNT(id) FROM employees WHERE city = 'Seattle';

(b,) megoldás:
 SELECT COUNT(id) FROM employees WHERE job_title = 'Sales Representative';
 
(c,) megoldás:
 SELECT COUNT(id) FROM employees WHERE first_name LIKE 'A%';

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

  


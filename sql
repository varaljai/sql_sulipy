                                               SQL függvények: MIN, MAX, COUNT, SUM, AVG:
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

 4. Feladat
A 'products' táblában határozd meg a 'standard_cost' oszlop
a, legkisebb értékét,
b, legnagyobb értékét,
c, legnagyobb értékét, azon rekordok esetében, ahol a 'list_price' legalább 30,
d, legnagyobb értékét, azon rekordok esetében, ahol a 'product_code' tartalmazza a 'CO' sztringet

(A,a) megoldás:
SELECT min(standard_cost) FROM products;

(b,) megoldás:
SELECT MAX(standard_cost) FROM products;

(c,) megoldás:
SELECT MAX(standard_cost) FROM products WHERE list_price > 30;

(d,) megoldás:
SELECT MAX(standard_cost) FROM products WHERE product_code LIKE '%CO%';


                                                   UNION, GROUP BY, HAVING:
1. Feladat
Az orders tábla ship_state_province mezőjének értékeit fésüld össze a customers tábla state_province mezőjének értékeivel úgy, hogy
- minden érték csak egyszer szerepeljen,
- az értékek ismétlődhetnek!

megoldás:

SELECT ship_state_province FROM orders
UNION
SELECT state_province FROM customers;

SELECT ship_state_province FROM orders
UNION ALL
SELECT state_province FROM customers;

2. Feladat
A products táblában számold meg kategóriánként (category mező) a termékek számát!

megoldás:

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

3. Feladat
A orders táblában számold meg városonként (ship_city mező) a rendelések számát!

megoldás:

SELECT COUNT(ship_city ),ship_city  
FROM orders
GROUP BY ship_city;

4. Feladat
A customers táblából kérd le az ügyfelek számát városonként, ha az eléri legalább a 3-at!



                                                   
                                                   
                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

  


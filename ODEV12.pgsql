--ODEV 1 film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
--SELECT title, length FROM film 
--where length > 
--(
 --   SELECT AVG(length) FROM film
--)

--ODEV 2 film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

/*SELECT title, rental_rate FROM film
WHERE rental_rate = 
(
    SELECT MAX(rental_rate) FROM film
)
*/
--ODEV 3 film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
--SELECT title, replacement_cost, rental_rate FROM film
--WHERE rental_rate = ANY 
--(
  --  SELECT MIN(rental_rate) FROM film
--) AND
--replacement_cost =
--(
  --  SELECT MIN(replacement_cost) FROM film
--)

--ODEV 4 payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
--SELECT customer_id, COUNT(customer_id) AS most_payment FROM payment
--GROUP BY customer_id 
--ORDER BY most_payment DESC
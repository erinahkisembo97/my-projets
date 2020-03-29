/*Query for question one*/
SELECT DISTINCT(s.store_id), date_part('month',r.rental_date) AS Rental_month, date_part('year',r.rental_date) AS Rental_year, 
                COUNT(*) AS Count_rentals 
  FROM store AS s 
       JOIN staff AS sf ON s.store_id = sf.store_id  
	   JOIN rental AS r ON sf.staff_id =r.staff_id  
GROUP BY 1,2,3 ORDER BY Count_rentals DESC



/*Query for question two*/
SELECT t3.full_name, t3.pay_month,pay_amount, pay_counterpermonth 
  FROM (SELECT t2.full_name, t1.pay_month,
	              SUM(amount) AS pay_amount, 
				  COUNT(*) AS pay_counterpermonth 
		   FROM (SELECT CONCAT(c.first_name,' ',c.last_name) AS Full_name, date_trunc('month',p.payment_date) AS pay_month,p.amount 
			        FROM payment AS p 
			             JOIN customer AS c ON p.customer_id = c.customer_id 
				 WHERE p.payment_date BETWEEN '2007-01-01' AND '2007-12-25') AS t1 
		     JOIN(SELECT SUM(p.amount) AS pay_amounts,CONCAT(c.first_name,' ',c.last_name) AS Full_name 
		             FROM payment AS p 
				        JOIN customer AS c ON p.customer_id = c.customer_id 
			      WHERE p.payment_date BETWEEN '2007-01-01' AND '2007-12-25' 
			      GROUP BY full_name ORDER BY pay_amounts DESC LIMIT 10) AS t2 ON t1.full_name=t2.full_name 
        GROUP BY t1.pay_month, t2.full_name ,t2.pay_amounts ORDER BY t2.pay_amounts DESC ) AS t3 
GROUP BY pay_month,full_name ,pay_amount,pay_counterpermonth ORDER BY full_name,pay_month 



/*Query for question three*/
SELECT t3.full_name, t3.pay_month,(pay_amount - LAG(pay_amount) OVER (PARTITION BY t3.full_name ORDER BY t3.pay_month) ) AS difference_in_payment 
  FROM (SELECT t2.full_name, t1.pay_month,
	              SUM(amount) AS pay_amount, 
				  COUNT(*) AS pay_counterpermonth 
		   FROM (SELECT CONCAT(c.first_name,' ',c.last_name) AS Full_name, date_trunc('month',p.payment_date) AS pay_month, p.amount 
			        FROM payment AS p 
			             JOIN customer AS c ON p.customer_id = c.customer_id 
				 WHERE p.payment_date BETWEEN '2007-01-01' AND '2007-12-25') AS t1 
		     JOIN(SELECT SUM(p.amount) AS pay_amounts, CONCAT(c.first_name,' ',c.last_name) AS Full_name 
		             FROM payment AS p 
				        JOIN customer AS c ON p.customer_id = c.customer_id 
			      WHERE p.payment_date BETWEEN '2007-01-01' AND '2007-12-25' 
			      GROUP BY full_name ORDER BY pay_amounts DESC LIMIT 10) AS t2 ON t1.full_name=t2.full_name 
        GROUP BY t1.pay_month, t2.full_name ,t2.pay_amounts ORDER BY t2.pay_amounts DESC ) AS t3 
GROUP BY pay_month, full_name , pay_amount, pay_counterpermonth ORDER BY full_name, pay_month 



/*Query for question four*/
SELECT DISTINCT(title), name, 
                COUNT(*) OVER(PARTITION BY title ORDER BY name) AS rental_count 
   FROM (SELECT f.title,c.name,r.inventory_id 
             FROM film AS f 
                  JOIN film_category AS fc ON f.film_id=fc.film_id 
				  JOIN category AS c ON c.category_id=fc.category_id 
				  JOIN inventory AS i ON f.film_id = i.film_id 
				  JOIN rental r ON r.inventory_id =i.inventory_id  
        WHERE c.name IN ('Animation','Children','Classics','Comedy','Family' ,'Music') 
        ORDER BY 3) t1 
ORDER BY name,title


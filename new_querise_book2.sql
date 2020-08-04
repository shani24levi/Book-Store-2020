use book_store_2;

-- 1  Check if a book is in stock
select title,amount from books where title = 'Orope' and amount > 0;

SELECT *
FROM manager_control t
inner join managment m on  m.managment_id = t.managment_id
LEFT JOIN orders_from_provider p on  p.order_provider_id = t.order_provider_id
LEFT JOIN orders o  on o.order_id = t.order_id
LEFT JOIN book_list_for_orders bb on  bb.order_id = o.order_id


 ;

-- 2  
SELECT first_name, last_name from customers 
WHERE join_date >= '2000-01-01'
ORDER BY join_date asc  LIMIT 1
;

-- 3  
select title,available_date from books
where available_date >= '2000-01-01' 
order by available_date asc limit 1 
;


-- 4 
select order_id,order_date,order_complited, first_name,last_name  from orders o  
inner join customers c on o.customer_id = c.customer_id 
where (order_date >='2020-06-01' and order_date < now())  ORDER BY order_date desc ;

-- 5  

select count(*) from book_list_for_orders bfo
inner join books b
on
	bfo.book_id = b.book_id
inner join orders o
on
	bfo.order_id = o.order_id
where b.title = 'orope';

-- 6  
-- Some books are replicated because some books have some writers
select  a.first_name ,a.last_name,COUNT(ba.author_id)  from books b 
inner join book_list_for_orders bfo
on
	bfo.book_id = b.book_id  
inner join orders o
on
	bfo.order_id = o.order_id  
inner join book_authors ba
on 
	b.book_id = ba.book_id
inner join authors a
on 
	a.author_id = ba.author_id
WHERE  o.order_date >= '2000-01-01' and  o.order_date < '2020-01-01' 
GROUP BY ba.author_id
HAVING COUNT(ba.author_id) > 1
order by COUNT(ba.author_id) desc limit 1
;


-- 7  
select first_name,last_name ,sum(amount) from orders o
inner join customers c
on
	o.customer_id = c.customer_id
where  order_complited = 'Yes'
group by o.customer_id
ORDER BY sum(amount) desc LIMIT 3
;


    

-- 8  
-- -- Some books are replicated because some books have some translators or difrant orderid 
select title,COUNT(b.book_id) from  book_translators bt 
inner join  books b
on 
	b.book_id = bt.book_id
inner join translators t
on 
	t.translator_id = bt.translator_id
WHERE  b.amount > 0 
group by b.book_id
HAVING COUNT(b.book_id) > 0
order by count( b.book_id) desc limit 1
;

-- 9  -- WHERE  c.first_name = 'Grizelda' and c.last_name = 'Devil' 
select o.order_date,o.pyment_date, o.order_status,b.title, b.price from book_list_for_orders bo
inner join books b
on 
	b.book_id = bo.book_id
inner join orders o
on 
	bo.order_id = o.order_id
inner join customers c
on 
	o.customer_id = c.customer_id
WHERE  c.first_name = 'Idan' and c.last_name = 'Ryrman' 
and o.order_complited= 'Yes'
order by o.pyment_date desc;


-- 10
select o.order_date,o.order_status,b.title, b.amount, o.order_complited, b.price from book_list_for_orders bo
inner join books b
on 
	b.book_id = bo.book_id
inner join orders o
on 
	bo.order_id = o.order_id
inner join customers c
on 
	o.customer_id = c.customer_id
-- WHERE  c.first_name = 'Grizelda' and c.last_name = 'Devil' 
WHERE  c.first_name = 'Idan' and c.last_name = 'Ryrman' 
ORDER BY order_date desc ;


-- 11  
select  sum( (b.price + b.weight +ExtraXpress)),d.address,city,d.delivery_id 
from book_list_for_orders bo
inner join orders o
on 
	o.order_id = bo.order_id
inner join books b
on 
	b.book_id = bo.book_id
inner join  customers c
on 
	o.customer_id = c.customer_id
    
inner join  delivery d
on 
	d.delivery_id = bo.delivery_id
    
inner join  delivery_for_orders dd
on 
	dd.delivery_id = d.delivery_id
    
 WHERE d.address= 'Sheikin' and num_address =188 and city='Tel-Aviv' 
GROUP BY  d.delivery_id
order by d.delivery_id asc; 



-- 12 Define shipping split by dilivry_id in one order_id (one order only!)
    -- shire is the one who splipt in db
select dfo.delivery_id,o.order_id,o.order_date, d.city,d.address ,b.title  from book_list_for_orders bo
inner join orders o
on 
	bo.order_id = o.order_id
inner join books b
on 
	b.book_id = bo.book_id
inner join customers c
on 
	o.customer_id = c.customer_id
inner join delivery_for_orders dfo
on 
	dfo.delivery_id = bo.delivery_id
inner join delivery d
on 
	dfo.delivery_id = d.delivery_id
WHERE  c.first_name = 'Shir' and c.last_name = 'Koba' 
-- ORDER BY  d.address desc 
;

-- 13 Identify shipping by c.mobile and d.addrass
select dfo.delivery_status  from delivery_for_orders dfo
inner join delivery d
on 
	d.delivery_id = dfo.delivery_id
inner join orders o
on 
	o.order_id = dfo.order_id
inner join customers c
on 
	o.customer_id = c.customer_id
WHERE  c.mobile = 536352  and d.address = 'Allenby'  and d.city = 'Tel-Aviv' 
;

-- 14 -- count(MONTH(delivery_date)) as num_delivery_by_Xpress_fer_month, o.shipment,delivery_date,MONTH(delivery_date) 
SELECT count(MONTH(delivery_date)) from delivery_for_orders dfo
inner join orders o
on 
	o.order_id = dfo.order_id
WHERE  dfo.shipment = 'Xpress'  and MONTH(delivery_date)=3 and Year(delivery_date)=2020 
order by delivery_date desc
;  


-- 15  The money received when ordering
-- has only in month 2,3,9,10
-- Searches through the list of books associated with the order.
SELECT  sum(price) from book_list_for_orders blfo
inner join orders o
on 
	o.order_id = blfo.order_id
inner join books b
on 
	b.book_id = blfo.book_id
WHERE  o.payment_method ='Transfer by Bit' and MONTH(o.pyment_date)= 2 and YEAR(o.pyment_date)= 2020 
;

--  (SELECT *,  sum(price_for_order/12) FROM orders
--  where order_complited = 'Yes' and pyment_date <= '2019-06-01' and pyment_date < now()
--  );
 
-- 16 רווח של העסקאןת בלבד אל מול הממוצע לשנה האחרונה של העסקקאות
SELECT price_for_order,order_id from orders o 
WHERE  o.order_date >=  '2019-06-01'  and  o.order_date < now()
	and order_complited = 'Yes'
	and price_for_order >  (SELECT  sum(price_for_order/12) FROM orders
								where order_complited = 'Yes'and pyment_date <= '2019-06-01' and pyment_date < now())
;

-- 17
SELECT count(dfo.shipment),dfo.shipment from delivery_for_orders dfo
inner join delivery d
on 
	d.delivery_id = dfo.delivery_id
inner join orders o
on 
	o.order_id = dfo.order_id
WHERE dfo.delivery_date between '2019-07-01' and now() 
GROUP BY  dfo.shipment
HAVING COUNT(dfo.shipment) >= 1
order by dfo.shipment;

-- 18 delivery_id
SELECT address,city,dfo.delivery_date,d.delivery_id from delivery_for_orders dfo
inner join delivery d
on 
	d.delivery_id = dfo.delivery_id
inner join orders o
on 
	o.order_id = dfo.order_id
inner join book_list_for_orders blo
on 
	o.order_id = blo.order_id
inner join publisher p
on 
	p.publisher_book_id = blo.publisher_book_id
inner join publishers ps
on 
	p.publisher_id = ps.publisher_id
inner join books b
on 
	b.book_id = blo.book_id
-- order by  d.delivery_id
group by b.book_id , d.delivery_id
HAVING  MAX(ps.edition) > MIN(ps.edition) 
;

-- 19  עובד רק עם שורה אחתתתת . כרגע יש לו 2 לקוחות והוא לא יודע איך להתמודד. אם יש רק אחד הוא מחזיר תשובה נכונה 
SELECT mobile,last_name,first_name from orders o
 inner join customers c
on 
	o.customer_id = c.customer_id
WHERE  o.order_date >=  '2000-01-01'  and  o.order_date < '2018-08-01'
	and order_complited= 'Yes'
	and c.customer_id in (SELECT c.customer_id FROM orders o
					inner join customers c
					on 
						o.customer_id = c.customer_id
					WHERE  order_date >=  '2018-08-01'  and  order_date < now()
						and o.order_complited = 'No' 
                        
					group by o.customer_id
					HAVING count(distinct mobile)> 0 
					order by o.customer_id) 
;

-- בנפרד חלק מ19 
SELECT o.customer_id FROM orders o
		inner join customers c
		on 
			o.customer_id = c.customer_id
			WHERE  order_date >=  '2018-08-01'  and  order_date < now()
				and (o.order_complited = 'No' or pyment_date = null )
group by o.customer_id
HAVING count(distinct mobile)> 0 
order by o.customer_id
;

-- 20 ,count(distinct o.customer_id)
SELECT c.mobile,c.first_name,c.last_name,cc.days_pass,cc.purchased  FROM orders o
inner join customers c
on 
	o.customer_id = c.customer_id
inner join contacts cc
on 
	cc.order_id = o.order_id
inner join book_list_for_orders bl
on
	o.order_id = bl.order_id
inner join books b
on
	bl.book_id = b.book_id
 WHERE cc.days_pass < 14 and cc.purchased = 'Not Purchased' 
group by o.customer_id
HAVING  COUNT(o.customer_id) > 0 
order by o.customer_id
;
SELECT * FROM books;

-- 21 
SELECT  sum(set_amount_in_storage),year(purchas_date),MONTH(purchas_date) FROM orders_from_provider
group by MONTH(purchas_date),year(purchas_date)
order by purchas_date asc
;

-- 22
SELECT sum(amount) as total_amount, sum(purchas_price) as total_paid FROM orders_from_provider
WHERE purchas_date >=  '2020-01-01'  and  purchas_date < now() 
;

-- SELECT * FROM orders
--  WHERE  month(pyment_date) = 6  and  year(pyment_date)= 2019;
--  
--  SELECT * FROM orders_from_provider
--  WHERE  month(purchas_date) = 6  and  year(purchas_date)= 2019;

-- 23   

SELECT ( sum(price_for_order) - sum(purchas_price)) as profit 
FROM manager_control t
inner join managment m on  m.managment_id = t.managment_id
LEFT JOIN orders_from_provider p on  p.order_provider_id = t.order_provider_id
LEFT JOIN orders o  on o.order_id = t.order_id
 WHERE  m.month_ = 6  and  m.year_ = 2019
;

-- 24 
SELECT avg(price_for_order),Year(o.order_date),MONTH(o.order_date) FROM orders o
	WHERE (MONTH(o.order_date) and Year(o.order_date) ) 
     and order_complited='Yes'
 
group by   MONTH(o.order_date),Year(o.order_date)
HAVING  count(o.order_date) > 0 
order by  o.order_date
;


SELECT MONTH(o.order_date),Year(o.order_date) FROM orders o
group by  o.order_date ;

-- 25
SELECT gross_salary FROM employees_paycheck ep
inner join employees e
on 
	e.employee_id = ep.employee_id
WHERE e.first_name = 'Lisa' and e.last_name = 'Lombardi'
	and MONTH(paycheck_date) =6 and YEAR(paycheck_date)=2020
;

SELECT * FROM employees;

-- 26 e.first_name, e.last_name , count(e.phone)
SELECT  count(e.phone),e.last_name ,e.first_name FROM orders o
inner join employees e
on 
	e.employee_id = o.employee_id
WHERE order_complited = 'Yes' and month(o.pyment_date)=7 and year(o.pyment_date)=2020

group by e.phone
HAVING  count(e.phone) > 0 
order by  count(e.phone) desc limit 1
;
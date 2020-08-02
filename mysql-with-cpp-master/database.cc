/*
 * ===================================================================
 *
 *       Filename:  database.cc
 *
 *    Description:  Definition of MySQL Class for accessing database
 *
 *        Created:  Friday 22 February 2013 02:07:49  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

/**-------------------------------------------------------------------
 *  Include mysql.h file local header file(declaration of class)
 *------------------------------------------------------------------*/

#include "database.h"
#include <string>

/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: MySQL()
 * Description:  Constructor to initialize database conectivity
 *--------------------------------------------------------------------
 */

//global vars
std::string date1, date2, bookName;

//create conction
MySQL :: MySQL()
{
    connect = mysql_init(NULL);
    if ( !connect )
    {
        cout << "MySQL Initialization Failed";
    }   

    connect = mysql_real_connect(connect, SERVER, USER, PASSWORD, DATABASE, 0,NULL,0);
    
    if ( connect )
    {
        cout << "Connection Succeeded to Book Store \n";
		cout << "---------------------------------- \n"<< endl;
    }
    
    else
    {
        cout << "Connection Failed\n";
    }
}


void MySQL::t()
{
	cout << "Enter Book Name: ";
	cin >> bookName;
	// '" + bookName + "'
std:string str_qury = "select sum((o.amount*-1)+of.amount),b.title from books b inner join book_list_for_orders bl on bl.book_id = b.book_id inner join orders o on bl.order_id = o.order_id inner join manager_control m on m.order_id = o.order_id inner join orders_from_provider of on m.order_provider_id = of.order_provider_id where of.purchas_date >= '2020-01-01' and of.purchas_date < now() and title = '" + bookName + "' GROUP BY of.purchas_date ORDER BY of.purchas_date desc";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "+------------------------------------------------------+" << endl;
		cout << "|   Book " << bookName << " NOT Available in stock     " << endl;
		cout << "+------------------------------------------------------+" << endl << endl;
		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		if (row[i++] < 0) {
			cout << "+------------------------------------------------------+" << endl;
			cout << "|   Book " << row[i] << " IS NOT Available in stock       " << endl;
			cout << "+------------------------------------------------------+" << endl << endl;
			return;
		}
		cout << "+------------------------------------------------------+" << endl;
		cout << "|   Book " << row[i] << " IS Available in stock       " << endl;
		cout << "+------------------------------------------------------+" << endl << endl;
	}
}

/**
 *--------------------------------------------------------------------
 * Description:  1.  Check if a book is in stock
 *--------------------------------------------------------------------
 */

void MySQL::BookInStoke()
{
	cout << "Enter Book Name: ";
	cin >> bookName;
	std:string str_qury = "select title,amount from books where title = '" + bookName + "' and amount > 0";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "+------------------------------------------------------+" << endl;
		cout << "|   Book " << bookName << " NOT Available in stock     " << endl;
		cout << "+------------------------------------------------------+" << endl << endl;
		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+------------------------------------------------------+" << endl;
		cout << "|   Book " << row[i] << " IS Available in stock       " << endl;
		cout << "+------------------------------------------------------+" << endl << endl;
	}
}


/**
 *--------------------------------------------------------------------
 * Description:  2.  The oldest customer
 *--------------------------------------------------------------------
 */
void MySQL::OldestCustomer(){

	std:string str_qury = "select first_name, last_name from customers  where join_date >= '2000-01-01' order by join_date asc  limit 1";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "+------------------------------------------+" << endl;
		cout << "|        No registered customers           " << endl;
		cout << "+------------------------------------------+" << endl << endl;

		return;
	}
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{	
		cout << "+--------------------------------------------------------------+" << endl;
		cout << "|     The oldest customer is " << row[i++] <<" "<< row[i] << endl;
		cout << "+--------------------------------------------------------------+" << endl << endl;


	}
}

/**
 *--------------------------------------------------------------------
 * Description:  3.  The oldest book in stock
 *--------------------------------------------------------------------
 */
void MySQL::OldestBook() {
std:string str_qury = "select title,available_date from books where available_date >= '2000-01-01'order by available_date asc limit 1";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "+----------------------------------------------------+" << endl;
		cout << "|      There are no books in the stock" << endl;
		cout << "+----------------------------------------------------+" << endl << endl;

		return;
	}
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------------------------------------------------------------------------+" << endl;
		cout << "|    The oldest book in stock is '" << row[i++] << "' from " << row[i] << endl;
		cout << "+-----------------------------------------------------------------------------+" << endl << endl;


	}
}

/**
 *--------------------------------------------------------------------
 * Description:  4.  Current orders list
 *--------------------------------------------------------------------
 */
void MySQL::CurrOrders() {
std:string str_qury = "select first_name,order_complited,order_date,order_id from orders o inner join customers c on o.customer_id = c.customer_id  where (order_date >= '2020-06-01' and order_date < now()) ORDER BY order_date desc";

	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "No bookings from the last month and a half" << endl << endl;
		return;
	}

	cout << "  Current Orders from June-July : " << endl;
	cout << "+--------------+----------------+--------------------+-------------------+" << endl;
	cout << "|   Order Id   |   Order Date   |   Order Complite   |   Customer Name   |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+--------------+----------------+--------------------+-------------------+" << endl;
		cout << "      "<< row[i++] << "           " << row[i++] << "           " << row[i++] << "                 " << row[i++] << "             " << endl;
		i = 0;
	}
	cout << "+--------------+----------------+--------------------+-------------------+" << endl << endl;
}

/**
 *--------------------------------------------------------------------
 * Description:  5.  Number of copies of a book sold 
 *--------------------------------------------------------------------
 */
void MySQL::CopiesBook() {
	cout << "Enter Book Name: ";
	cin >> bookName;
	std:string str_qury = "select count(*) from book_list_for_orders bfo inner join books b on bfo.book_id = b.book_id inner join orders o on bfo.order_id = o.order_id where b.title = '" + bookName + "' ";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {

		cout << "+-----------------------------------------------------------------------+" << endl;
		cout << "|        Book " << bookName << " never existed in the store" << endl;
		cout << "+-----------------------------------------------------------------------+" << endl << endl;

		return;
	}
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+------------------------------------------------------------------------------+" << endl;
		cout << "|      "  << row[i] << "   Copies of book '" << bookName <<"' was sold by the Book Store       " << endl;
		cout << "+------------------------------------------------------------------------------+" << endl << endl;

	}
}

/**
 *--------------------------------------------------------------------
 * Description:  6.  The most read writer between two dates
 *--------------------------------------------------------------------
 */
void MySQL::PopulArauthor() {
	cout << "Enter First Date In Format YYYY-MM-DD: ";
	cin >> date1;
	cout << "Enter Secound Date In Format YYYY-MM-DD: ";
	cin >> date2;
	std:string str_qury = "select  a.first_name ,a.last_name,COUNT(ba.author_id)  from books b inner join book_list_for_orders bfo on bfo.book_id = b.book_id inner join orders o on bfo.order_id = o.order_id inner join book_authors ba on b.book_id = ba.book_id inner join authors a on a.author_id = ba.author_id WHERE  o.order_date >= '" + date1 + "' and o.order_date < '" + date2 + "' GROUP BY ba.author_id HAVING COUNT(ba.author_id) > 1 order by COUNT(ba.author_id) desc limit 1";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "+----------------------------------------------------------------------------------------+" << endl;
		cout << "|            There are no books sold on date "<< date1<< " to "<<date2 << endl;
		cout << "+----------------------------------------------------------------------------------------+" << endl << endl;

		return;
	}
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+------------------------------------------------------------------------------------------------+" << endl;
		cout << "|       The most popular author Between  " << date1 <<"  To  "<< date2 << "    Is : " << row[i++] <<" " << row[i] << endl;
		cout << "+------------------------------------------------------------------------------------------------+" << endl << endl;

	}
}

/**
 *-----------------------------------------------------------------------------------------
 * Description:  7.   List of 3 customers who have purchased the most books over the years
 *-----------------------------------------------------------------------------------------
 */
void MySQL::PurchaseMostBooks() {
	std:string str_qury = "select sum(amount), last_name,first_name from orders o inner join customers c on o.customer_id = c.customer_id where order_complited = 'Yes' group by o.customer_id ORDER BY sum(amount) desc LIMIT 3";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "Books were not sold" << endl << endl;
		return;
	}

	cout << "  The customers who purchased the most books over the years : " << endl;
	cout << "+-------------------------+-------------------------+---------------------------+" << endl;
	cout << "|   Customer First Name   |    Customer Last Name   |   Quantity of purchases   |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-------------------------+-------------------------+---------------------------+" << endl;
		cout << "|         " << row[i++] << "                  " << row[i++] << "                            " << row[i++] << endl;
		i = 0;
	}
	cout << "+-------------------------+-------------------------+---------------------------+" << endl;
}

/**
 *-----------------------------------------------------------------------------
 * Description:  8.  The book with the largest number of translations in stock
 *------------------------------------------------------------------------------
 */
void MySQL::MostTranslators() {
	std:string str_qury = "select title,COUNT(b.book_id) from  book_translators bt  inner join  books b on b.book_id = bt.book_id inner join translators t on t.translator_id = bt.translator_id WHERE  b.amount > 0 group by b.book_id HAVING COUNT(b.book_id) > 0 order by count(b.book_id) desc limit 1";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+--------------------------------------------------------------------------------------------------+" << endl;
		cout << "|       The book with the largest number of translations is: '" << row[i++] << "' with " << row[i] << " translations " << endl;
		cout << "+--------------------------------------------------------------------------------------------------+" << endl << endl;

	}
}

/**
 *--------------------------------------------------------------------
 * Description:  9. Customer purchase history
 *--------------------------------------------------------------------
 */
void MySQL::CustomerPurchases() {
	std::string firstName, lastName;
	cout << "Enter First Name: ";
	cin >> firstName;
	cout << "Enter Last Name: ";
	cin >> lastName;
	std::string str_qury = "select b.title,o.order_id,o.order_status,b.price,o.pyment_date from book_list_for_orders bo inner join books b on b.book_id = bo.book_id inner join orders o on bo.order_id = o.order_id inner join customers c on o.customer_id = c.customer_id WHERE  c.first_name = '" + firstName + "' and c.last_name = '" + lastName + "' and o.order_complited = 'Yes' GROUP BY  b.title, o.order_id order by o.pyment_date desc";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "There is no customer named  " <<firstName<< " " <<lastName << endl << endl;
		return;
	}


	cout << "  Purchasing History of " << firstName << " "<< lastName << " : "<< endl;
	cout << "+---------------+--------------+---------------------+------------+----------------------+" << endl;
	cout << "|  Payment Date |  Book Price  |     Order Status    |  Order Id  |      Book Title      |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+---------------+--------------+---------------------+------------+----------------------+" << endl;
		cout << "|   " << row[i++] << "           " << row[i++] << "         " << row[i++] << "         " << row[i++] << "                  " << row[i++] << endl;
		i = 0;
	}
	cout << "+---------------+--------------+---------------------+------------+----------------------+" << endl << endl;
}

/**
 *--------------------------------------------------------------------
 * Description: 10. Customer order history
 *--------------------------------------------------------------------
 */
void MySQL::CustomerOrders() {
	std::string firstName, lastName;
	cout << "Enter First Name: ";
	cin >> firstName;
	cout << "Enter Last Name: ";
	cin >> lastName;
	//  '" + firstName + "'
	std::string str_qury = "select b.title,o.order_id,o.order_complited,b.price,b.amount,o.order_date from book_list_for_orders bo inner join books b on b.book_id = bo.book_id inner join orders o on bo.order_id = o.order_id inner join customers c  on o.customer_id = c.customer_id WHERE  c.first_name = '" + firstName + "' and c.last_name = '" + lastName + "' GROUP BY  b.title, o.order_id ORDER BY o.order_date desc";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "There is no customer named  " << firstName << " " << lastName << endl << endl;
		return;
	}


	cout << "  Orders History of " << firstName << " " << lastName << " : " << endl;
	cout << "+--------------+----------------------+------------+------------------+------------+-----------------+" << endl;
	cout << "|  Order Date  | Book Amount In Stock | Book Price |  Order Complited |  Order Id  |    Book Title   |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+--------------+----------------------+------------+------------------+------------+-----------------+" << endl;
		cout << "|  " << row[i++] << "            " << row[i++] << "                 " << row[i++] << "               " << row[i++] << "            " << row[i++] << "          " << row[i++]  << endl;
		i = 0;
	}
	cout << "+--------------+----------------------+------------+------------------+------------+-----------------+" << endl << endl;
}

/**
 *--------------------------------------------------------------------
 * Description: 11. Shipping cost calculation
 *--------------------------------------------------------------------
 */
void MySQL::FreightCost() {
	std::string address, num , city;
	cout << "Enter Address of Delivey: ";
	cin >> address;
	cout << "Enter Address Number of Delivey: ";
	cin >> num;
	cout << "Enter City of Delivey: ";
	cin >> city;
	// '" + firstName + "'
	std::string str_qury = "select  sum( (b.price + b.weight +ExtraXpress)),d.address,city,d.delivery_id  from book_list_for_orders bo inner join orders o on o.order_id = bo.order_id inner join books b on b.book_id = bo.book_id inner join  customers c on o.customer_id = c.customer_id inner join  delivery d on d.delivery_id = bo.delivery_id inner join  delivery_for_orders dd on dd.delivery_id = d.delivery_id WHERE d.address = '" + address + "' and num_address = '" + num + "' and city = '" + city + "' GROUP BY  d.delivery_id order by d.delivery_id asc";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);


	cout << " Shipping cost calculation : " << endl;
	cout << "+-----------------+-----------------------+--------------------------+---------------------------+" << endl;
	cout << "|   Delivery Id   |   City For Delivery   |   Address For Delivery   |    Total Delivery Price   | " << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------------+-----------------------+--------------------------+---------------------------+" << endl;
		cout << "|        " << row[i++] << "              " << row[i++] << "                 " << row[i++] << "                  " << row[i++] <<endl;
		i = 0;
	}
	cout << "+-----------------+-----------------------+--------------------------+---------------------------+" << endl << endl;
}

/**
 *-----------------------------------------------------------------------------------
 * Description:  12. Check if a customer has split a purchase into several shipments
 *-----------------------------------------------------------------------------------
 */
void MySQL::OrderSplit() {
	std::string firstName, lastName;
	cout << "Enter First Name: ";
	cin >> firstName;
	cout << "Enter Last Name: ";
	cin >> lastName;
	std::string str_qury = "select b.title,d.address, d.city,o.order_date  from book_list_for_orders bo inner join orders o on bo.order_id = o.order_id inner join books b on b.book_id = bo.book_id inner join customers c on o.customer_id = c.customer_id inner join delivery_for_orders dfo on dfo.delivery_id = bo.delivery_id inner join delivery d on dfo.delivery_id = d.delivery_id WHERE  c.first_name = '" + firstName + "' and c.last_name = '" + lastName + "' ";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "There is no customer named" << firstName << " " << lastName <<" who split book purchase for several shipments"<< endl << endl;
		return;
	}


	cout << "  The purchase of " << firstName << " " << lastName << " was split into several shipments " << " : " << endl;
	cout << "+----------------+-----------------------+--------------------------+-----------------------------+" << endl;
	cout << "|   Order Date   |    City For Delivry   |    Address For Delivry   |          Book Title         |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+----------------+-----------------------+--------------------------+-----------------------------+" << endl;
		cout << "|   " << row[i++] << "            " << row[i++] << "               " << row[i++] << "                 " << row[i++] << endl;
		i = 0;
	}
	cout << "+----------------+-----------------------+--------------------------+-----------------------------+" << endl;
}
/**
 *--------------------------------------------------------------------
 * Description:  13. Shipping status
 *--------------------------------------------------------------------
 */
void MySQL::SateusDelivery() {
	std::string mobile, address,city;
	cout << "Enter Customer Phone: ";
	cin >> mobile;
	cout << "Enter Address For Delivey: ";
	cin >> address;
	cout << "Enter City For Delivey: ";
	cin >> city;
	std::string str_qury = "select dfo.delivery_status  from delivery_for_orders dfo inner join delivery d on d.delivery_id = dfo.delivery_id inner join orders o on o.order_id = dfo.order_id inner join customers c on o.customer_id = c.customer_id WHERE  c.mobile = '" + mobile + "' and d.address = '" + address + "' and d.city = '" + city + "' ";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "+-----------------------------------------------------------------------+" << endl;
		cout << "|       No delivery was found according to the data" << endl;
		cout << "+-----------------------------------------------------------------------+" << endl << endl;

		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------------------------------------------------------------------------------------+" << endl;
		cout << "|      Delivery to " << address << " at " << city << " Status is: " << row[i] << endl;
		cout << "+-----------------------------------------------------------------------------------------+" << endl << endl;

	}


}
/**
 *--------------------------------------------------------------------
 * Description: 14. Amount of deliveries made by Xpress in a month
 *--------------------------------------------------------------------
 */
void MySQL::AmountXpress() {
	std::string month, year;
	cout << "Enter Month: ";
	cin >> month;
	cout << "Enter Year: ";
	cin >> year;
	// '" + month + "'
	std::string str_qury = "SELECT count(MONTH(delivery_date)) from delivery_for_orders dfo inner join orders o on o.order_id = dfo.order_id WHERE  dfo.shipment = 'Xpress' and MONTH(delivery_date) = '" + month + "' and Year(delivery_date) = '" + year + "' order by delivery_date desc";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "+------------------------------------------------------------+" << endl;
		cout << "|         No delivery was made in a month" << endl;
		cout << "+------------------------------------------------------------+" << endl << endl;

		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------------------------------------------------------------------------------+" <<endl;
		cout << "|        The Amount Of Shipments made by Xpress is : " << row[i] << endl;
		cout << "+-----------------------------------------------------------------------------------+" << endl << endl;

	}
}
/**
 *--------------------------------------------------------------------
 * Description:  15. The total money transferred by Bit
 *--------------------------------------------------------------------
 */
void MySQL::AmountBit() {
	std::string month, year;
	cout << "Enter Month: ";
	cin >> month;
	cout << "Enter Year: ";
	cin >> year;
	// '" + month + "'
	std::string str_qury = "SELECT  sum(price) from book_list_for_orders blfo inner join orders o on o.order_id = blfo.order_id inner join books b on b.book_id = blfo.book_id WHERE  o.payment_method = 'Transfer by Bit' and MONTH(o.pyment_date) = '" + month + "' and YEAR(o.pyment_date) = '" + year + "' ";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "+--------------------------------------------------------------------------+"  << endl;
		cout << "|          No payment was transferred per bit this month" << endl;
		cout << "+---------------------------------------------------------------------------+" << endl << endl;

		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------------------------------------------------------------------------------------+"<< endl;
		cout << "|           The amount of money transferred in payment per bit is : " << row[i] << endl;
		cout << "+-----------------------------------------------------------------------------------------+" << endl << endl;

	}
}
/**
 *-------------------------------------------------------------------------------------------------
 * Description:  16. Transactions with a large profit in the last 12 months from the annual average
 *--------------------------------------------------------------------------------------------------
 */
void MySQL::TransactionsLargeProfit() {
	std::string str_qury = "SELECT price_for_order,order_id from orders o  WHERE  o.order_date >= '2019-06-01' and o.order_date < now() and order_complited = 'Yes' and price_for_order >(SELECT  sum(price_for_order / 12) FROM orders where order_complited = 'Yes' and pyment_date <= '2019-06-01' and pyment_date < now())";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "There are no transactions at a larger profit than the annual average" << endl << endl;
		return;
	}

	cout << "Transactions at a larger profit than the annual average : " << endl;
	cout << "+-----------------------+---------------------+" << endl;
	cout << "|   Transaction Id   |    Transaction Price   |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------------------+---------------------+" << endl;
		cout << "|         " << row[i++] << "                     " << row[i++] << endl;
		i = 0;
	}
	cout << "+-----------------------+---------------------+" << endl;
}
/**
 *------------------------------------------------------------------------------------------------
 * Description:  17. The amount of deliveries in the 12 months made by Israel Post and by Express
 *-------------------------------------------------------------------------------------------------
 */
void MySQL::QuantityDeliveries() {
	std::string str_qury = "SELECT count(dfo.shipment),dfo.shipment from delivery_for_orders dfo inner join delivery d on d.delivery_id = dfo.delivery_id inner join orders o on o.order_id = dfo.order_id WHERE dfo.delivery_date between '2019-07-01' and now() GROUP BY  dfo.shipment HAVING COUNT(dfo.shipment) >= 1 order by dfo.shipment";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << "The amount of Shipments in the last 12 months : " << endl;
	cout << "+----------------------+-------------------+" << endl;
	cout << "|   Type Of Shipment   |    Total Amount   |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+----------------------+-------------------+" << endl;
		cout << "|      " << row[i++] << "                " << row[i++] << endl;
		i = 0;
	}
	cout << "+----------------------+-------------------+" << endl;
}
/**
 *--------------------------------------------------------------------
 * Description:  18. Shipments that included at least 2 editions
 *--------------------------------------------------------------------
 */
void MySQL::Deliveries2editions() {
	std::string str_qury = "SELECT address,city,dfo.delivery_date,d.delivery_id from delivery_for_orders dfo inner join delivery d on d.delivery_id = dfo.delivery_id inner join orders o on o.order_id = dfo.order_id inner join book_list_for_orders blo on o.order_id = blo.order_id inner join publisher p on p.publisher_book_id = blo.publisher_book_id inner join publishers ps on p.publisher_id = ps.publisher_id inner join books b on b.book_id = blo.book_id group by b.book_id, d.delivery_id HAVING  MAX(ps.edition) > MIN(ps.edition) ";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << "The amount of Shipments in the last 12 months : " << endl;
	cout << "+-----------------+--------------------+------------------------+--------------------------+" << endl;
	cout << "|   Delivery Id   |    Delivery Date   |    City For Delivery   |    Address For Delivery  |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------------+--------------------+------------------------+--------------------------+" << endl;
		cout << "|       " << row[i++] << "              " << row[i++] << "             " << row[i++] << "                  " << row[i++] << endl;
		i = 0;
	}
	cout << "+-----------------+--------------------+------------------------+--------------------------+" << endl;
}
/**
 *-------------------------------------------------------------------------------------------------------------
 * Description:  19. Customers who have purchased at least one book and have not purchased in the last 24 months
 *--------------------------------------------------------------------------------------------------------------
 */
void MySQL::NotPurchased24() {
	std::string str_qury = "SELECT mobile,last_name,first_name from orders o inner join customers c on o.customer_id = c.customer_id WHERE  o.order_date >= '2000-01-01' and o.order_date < '2018-08-01' and order_complited = 'Yes' and c.customer_id in(SELECT c.customer_id FROM orders o inner join customers c on o.customer_id = c.customer_id WHERE  order_date >= '2018-08-01' and order_date < now() and o.order_complited = 'No' group by o.customer_id HAVING count(distinct mobile)> 0 order by o.customer_id) ";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Customers who have purchased in the past and have not purchased in the last 24 months : " << endl;
	cout << "+-------------------------+------------------------+-----------------------+" << endl;
	cout << "|   Customer First Name   |   Customer Last Name   |     Customer Mobile   |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-------------------------+------------------------+-----------------------+" << endl;
		cout << "|          " << row[i++] << "                 " << row[i++] << "                    " << row[i++] << endl;
		i = 0;
	}
	cout << "+-------------------------+------------------------+-----------------------+" << endl;
}
/**
 *----------------------------------------------------------------------------------------------------
 * Description: 20. Customers contacted 14 days ago regarding there order and have not yet purchased
 *---------------------------------------------------------------------------------------------------
 */
void MySQL::ContactingCustomer() {
	std::string str_qury = "SELECT  c.mobile,c.last_name,c.first_name FROM orders o inner join customers c on o.customer_id = c.customer_id inner join contacts cc on cc.order_id = o.order_id inner join book_list_for_orders bl on o.order_id = bl.order_id inner join books b on bl.book_id = b.book_id WHERE cc.days_pass < 14 and cc.purchased = 'Not Purchased' group by o.customer_id HAVING  COUNT(o.customer_id) > 0 order by o.customer_id";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Contact a customer regarding his order up to 14 days: " << endl;
	cout << "+-------------------------+------------------------+-----------------------+" << endl;
	cout << "|   Customer First Name   |   Customer Last Name   |     Customer Mobile   |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-------------------------+------------------------+-----------------------+" << endl;
		cout << "|          " << row[i++] << "                 " << row[i++] << "                    " << row[i++] << endl;
		i = 0;
	}
	cout << "+-------------------------+------------------------+-----------------------+" << endl;
}
/**
 *--------------------------------------------------------------------
 * Description: 21. Monthly section of the books in the storage
 *--------------------------------------------------------------------
 */
void MySQL::StorageBooks() {
	std::string str_qury = "SELECT  sum(set_amount_in_storage),year(purchas_date),MONTH(purchas_date) FROM orders_from_provider group by MONTH(purchas_date), year(purchas_date) order by purchas_date asc";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << "The number of the book in the Storage: " << endl;
	cout << "+-----------+----------+------------------------+" << endl;
	cout << "|   Month   |   Year   |     Amount In Storage  |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------+----------+------------------------+" << endl;
		cout << "|     " << row[i++] << "          " << row[i++] << "             " << row[i++] << endl;
		i = 0;
	}
	cout << "+-----------+----------+------------------------+" << endl;
}
/**
 *------------------------------------------------------------------------------
 * Description: 22. The amount of books purchased by the store between two dates
 *------------------------------------------------------------------------------
 */
void MySQL::QuantityPurchase() {
	cout << "Enter First Date By YYYY-MM-DD: ";
	cin >> date1;
	cout << "Enter Second Date By YYYY-MM-DD: ";
	cin >> date2;
	//'" + firstName + "'

	std::string str_qury = "SELECT sum(purchas_price) as total_paid,sum(amount) as total_amount FROM orders_from_provider WHERE purchas_date >= '" + date1 + "' and purchas_date < '" + date2 + "' ";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Between date "<< date1 << " to "<< date2<< " : " << endl;
	cout << "+--------------------------------+---------------------+" << endl;
	cout << "|   Quantity of store purchase   |    Purchase Price   |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+--------------------------------+---------------------+" << endl;
		cout << "|              " << row[i++] << "                        " << row[i++] << endl;
		i = 0;
	}
	cout << "+--------------------------------+---------------------+" << endl;
}
/**
 *--------------------------------------------------------------------
 * Description:  23. Store profit from sales per month
 *--------------------------------------------------------------------
 */
void MySQL::ProfitSales() {
	std::string month, year;
	cout << "Enter Month: ";
	cin >> month;
	cout << "Enter Year: ";
	cin >> year;
	//'" + firstName + "'
	std::string str_qury = "SELECT ( sum(price_for_order) - sum(purchas_price)) as profit  FROM manager_control t inner join managment m on  m.managment_id = t.managment_id LEFT JOIN orders_from_provider p on  p.order_provider_id = t.order_provider_id LEFT JOIN orders o  on o.order_id = t.order_id WHERE  m.month_ = '" + month + "' and m.year_ = '" + year + "'";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << "+-----------+-----------+-------------------+" << endl;
	cout << "|   Month   |    Year   |    Store Profit   |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------+-----------+-------------------+" << endl;
		cout << "|     " << month  << "          " << year << "         " << row[i] << endl;
		i = 0;
	}
	cout << "+-----------+-----------+-------------------+" << endl << endl;

}
/**
 *--------------------------------------------------------------------
 * Description:  24. Monthly section of average customer transactions
 *--------------------------------------------------------------------
 */
void MySQL::AverageTransactions() {
	std::string str_qury = "SELECT avg(price_for_order),Year(o.order_date),MONTH(o.order_date) FROM orders o WHERE(MONTH(o.order_date) and Year(o.order_date)) and order_complited = 'Yes' group by   MONTH(o.order_date), Year(o.order_date) HAVING  count(o.order_date) > 0 order by  o.order_date";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Annual average monthly transactions: " << endl;
	cout << "+-----------+----------+---------------------------+" << endl;
	cout << "|   Month   |   Year   |     Average Transactions  |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------+----------+---------------------------+" << endl;
		cout << "|     " << row[i++] << "         " << row[i++] << "                 " << row[i++] << endl;
		i = 0;
	}
	cout << "+-----------+----------+---------------------------+" << endl;

}
/**
 *--------------------------------------------------------------------
 * Description: 25. The gross salary of an employee in a month
 *--------------------------------------------------------------------
 */
void MySQL::GrossSalary() {
	std::string firstName, lastName, month, year;
	cout << "Enter First Name: ";
	cin >> firstName;
	cout << "Enter Last Name: ";
	cin >> lastName;
	cout << "Enter Month: ";
	cin >> month;
	cout << "Enter Year: ";
	cin >> year;
	//'" + firstName + "'
	std::string str_qury = "SELECT gross_salary FROM employees_paycheck ep inner join employees e on e.employee_id = ep.employee_id WHERE e.first_name = '" + firstName + "' and e.last_name = '" + lastName + "' and MONTH(paycheck_date) = '" + month + "' and YEAR(paycheck_date) = '" + year + "'";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << endl;
	cout << "Gross salary of "<< firstName << " " << lastName <<" : " << endl;
	cout << "+-----------+-----------+-------------------+" << endl;
	cout << "|   Month   |    Year   |    Gross salary   |" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "+-----------+-----------+-------------------+" << endl;
		cout << "|     " << month << "          " << year << "           " << row[i] << endl;
		i = 0;
	}
	cout << "+-----------+-----------+-------------------+" << endl << endl;
}
/**
 *--------------------------------------------------------------------
 * Description:  26. The seller with the most sales in a month
 *--------------------------------------------------------------------
 */
void MySQL::SellerSales() {
	std::string month, year;
	cout << "Enter Month: ";
	cin >> month;
	cout << "Enter Year: ";
	cin >> year;
	//'" + firstName + "'
	std::string str_qury = "SELECT  count(e.phone),e.last_name ,e.first_name FROM orders o inner join employees e on e.employee_id = o.employee_id WHERE order_complited = 'Yes' and month(o.pyment_date) = '" + month + "' and year(o.pyment_date) = '" + year + "' group by e.phone HAVING  count(e.phone) > 0 order by  count(e.phone) desc limit 1";
	mysql_query(connect, str_qury.c_str());

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (numrows == 0) {
		cout << "No sales per month " << month << " of year " << year << endl << endl;
		return;
	}

	cout << endl;
	if (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << "The employee with the most sales in month: " << month << " ,year: " << year << " is: " << endl;
		cout << "+-------------------------+-------------------------+-------------------+" << endl;
		cout << "|   Employee First Name   |    Employee Last Name   |    Sales amount   |" << endl;
		cout << "+-------------------------+-------------------------+-------------------+" << endl;
		cout << "|        " << row[i++] << "                       " << row[i++] << "                     " << row[i++] <<endl;
		cout << "+-------------------------+-------------------------+-------------------+" << endl;
	}

}


//close conection 
MySQL :: ~MySQL()
{
    mysql_close (connect);
}

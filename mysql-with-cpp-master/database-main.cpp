/*
 * ===================================================================
 *
 *       Filename:  database-main.cpp
 *
 *    Description:  Main Method
 *
 *        Created:  Thursday 28 February 2013 10:53:59  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

/**-------------------------------------------------------------------
 *  \mainpage MySQL Connectivity with C++
 *
 *  This is a working code example of using C++ to interface with MySQL.
 *  Steps:                                                                
 *                                                                                                                        
 *  \li Download this code \n
 *      $ git clone https://github.com/megha55/mysql-with-cpp.git
 *
 *  \li For installing MySQL Connector for C++ \n                     
 *      $ make install 
 *
 *  \li Change database details in database-detail.h file.
 *                                                                         
 *  \li To run example \n                                              
 *      $ make 
 * 
 *------------------------------------------------------------------*/

/**-------------------------------------------------------------------
 *  Include required header files
 *------------------------------------------------------------------*/
 
#include "database.h"


int main(void)
{
    MySQL Mysql;
	int i=0;
	while (i != 99)
	{
		cout << "Menu" << endl << endl;
		cout << "1.  Check if a book is in stock" << endl;
		cout << "2.  The oldest customer" << endl;
		cout << "3.  The oldest book in stock" << endl;
		cout << "4.  Current orders list" << endl;
		cout << "5.  Number of copies of a book sold" << endl;
		cout << "6.  The most read writer between two dates" << endl;
		cout << "7.  List of 3 customers who have purchased the most books over the years" << endl;
		cout << "8.  The book with the largest number of translations in stock" << endl;
		cout << "9.  Customer purchase history" << endl;
		cout << "10. Customer order history" << endl;
		cout << "11. Shipping cost calculation" << endl;
		cout << "12. Check if a customer has split a purchase into several shipments " << endl;
		cout << "13. Shipping status" << endl;
		cout << "14. Amount of deliveries made by Xpress in a month" << endl;
		cout << "15. The total money transferred by Bit" << endl;
		cout << "16. Transactions with a large profit in the last 12 months from the annual average" << endl;
		cout << "17. The amount of deliveries in the 12 months made by Israel Post and by Express" << endl;
		cout << "18. Shipments that included at least 2 editions" << endl;
		cout << "19. Customers who have purchased at least one book and have not purchased in the last 24 months" << endl;
		cout << "20. Customers contacted 14 days ago regarding there order and have not yet purchased" << endl;
		cout << "21. Monthly section of the books in the storage" << endl;
		cout << "22. The amount of books purchased by the store between two dates" << endl;
		cout << "23. Store profit from sales per month" << endl;
		cout << "24. Monthly section of average customer transactions" << endl;
		cout << "25. The gross salary of an employee in a month" << endl;
		cout << "26. The seller with the most sales in a month" << endl;
		cout << "99. Exit" << endl << endl;

		cout << "Choose an option: ";
		cin >> i;

		switch (i)
		{
		case 1: 	
			Mysql.BookInStoke();
			break;
		case 2:
			Mysql.OldestCustomer();
			break;
		case 3:
			Mysql.OldestBook();
			break;
		case 4:
			Mysql.CurrOrders();
			break;
		case 5:
			Mysql.CopiesBook();
			break;
		case 6:
			Mysql.PopulArauthor();
			break;
		case 7:
			Mysql.PurchaseMostBooks();
			break;
		
		case 8:
			Mysql.MostTranslators();
			break;
		case 9:
			Mysql.CustomerPurchases();
			break;
		case 10:
			Mysql.CustomerOrders();
			break;
		case 11:
			Mysql.FreightCost();
			break;
		case 12:
			Mysql.OrderSplit();
			break;
		case 13:
			Mysql.SateusDelivery();
			break;
		case 14:
			Mysql.AmountXpress();
			break;
		case 15:
			Mysql.AmountBit();
			break;
		case 16:
			Mysql.TransactionsLargeProfit();
			break;
		case 17:
			Mysql.QuantityDeliveries();
			break;
		case 18:
			Mysql.Deliveries2editions();
			break;
		case 19:
			Mysql.NotPurchased24();
			break;
		case 20:
			Mysql.ContactingCustomer();
			break;
		case 21:
			Mysql.StorageBooks();
			break;
		case 22:
			Mysql.QuantityPurchase();
			break;
		case 23:
			Mysql.ProfitSales();
			break;
		case 24:
			Mysql.AverageTransactions();
			break;
		case 25:
			Mysql.GrossSalary();
			break;
		case 26:
			Mysql.SellerSales();
			break;

		default:
			break;
		}
	}

	if (i == 99)
		cout << "Good Bey" << endl;

    return 0;
}

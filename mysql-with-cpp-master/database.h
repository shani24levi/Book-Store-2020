/*
 * ===================================================================
 *
 *       Filename:  database.h
 *
 *    Description:  Declaring MySQL class for using database.
 *
 *        Created:  Friday 22 February 2013 12:48:40  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

/**-------------------------------------------------------------------
 *  Include database-detail.h and other files
 *------------------------------------------------------------------*/

#include "header.h"
#include "database-detail.h"

/**
 * ===================================================================
 *        Class:  MySQL
 *  Description:  MySQL class for database accessability
 * ===================================================================
 */

class MySQL
{
    protected:
        /** MySQL connectivity Variables */
        MYSQL *connect;
        MYSQL_RES *res_set;
        MYSQL_ROW row;

        unsigned int i;

    public:
        /** MySQL Constructor */
        MySQL();

        /** Function Queries */
        // void ShowTables();
		void BookInStoke();				//1
		void OldestCustomer();			//2
		void OldestBook();				//3
		void CurrOrders();				//4
		void CopiesBook();				//5
		void PopulArauthor();			//6 
		void PurchaseMostBooks();		//7
		void MostTranslators();			//8
		void CustomerPurchases();		//9
		void CustomerOrders();			//10
		void FreightCost();				//11
		void OrderSplit();				//12
		void SateusDelivery();			//13
		void AmountXpress();			//14
		void AmountBit();				//15
		void TransactionsLargeProfit();	//16
		void QuantityDeliveries();		//17
		void Deliveries2editions();		//18
		void NotPurchased24();			//19
		void ContactingCustomer();		//20
		void StorageBooks();			//21
		void QuantityPurchase();		//22
		void ProfitSales();				//23
		void AverageTransactions();		//24
		void GrossSalary();				//25
		void SellerSales();				//26

        /** MySQL Destructor */
        ~MySQL();
};

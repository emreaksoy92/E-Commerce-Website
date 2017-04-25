using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class OrderDetails
{
    private string _ID;
    private string _ProductID;
    private string _Price;
    private string _Discount;
    private string _Quantity;
    private string _OrderNumber;
    public OrderDetails()
    {
       
    }
    public string ID
    {
        get { return _ID; }
        set { _ID = value; }
    }
    public string ProductID
    {
        get { return _ProductID; }
        set { _ProductID = value; }
    }
    public string Price
    {
        get { return _Price; }
        set { _Price = value; }
    }
    public string Discount
    {
        get { return _Discount; }
        set { _Discount = value; }
    }
    public string Quantity
    {
        get { return _Quantity; }
        set { _Quantity = value; }
    }
    public string OrderNumber
    {
        get { return _OrderNumber; }
        set { _OrderNumber = value; }
    }

}
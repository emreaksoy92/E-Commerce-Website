using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Orders
{
    private string _ID;
    private string _OrderNumber;
    private string _CustomerID;
    private string _PaymentID;
    private string _Date;
    private string _ShipmentDate;
    public Orders()
    {
        
    }
    public string ID
    {
        get { return _ID; }
        set { _ID = value; }
    }
    public string OrderNumber
    {
        get { return _OrderNumber; }
        set { _OrderNumber = value; }
    }
    public string CustomerID
    {
        get { return _CustomerID; }
        set { _CustomerID = value; }
    }
    public string PaymentID
    {
        get { return _PaymentID; }
        set { _PaymentID = value; }
    }
    public string Date
    {
        get { return _Date; }
        set { _Date = value; }
    }
    public string ShipmentDate
    {
        get { return _ShipmentDate; }
        set { _ShipmentDate = value; }
    }
}
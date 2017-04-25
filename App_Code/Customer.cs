using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public partial class Customer
{
    private string _ID;
    private string _FirstName;
    private string _LastName;
    private string _Adress;
    public Customer()
    {


    }
    public string ID
    {
        get { return _ID; }
        set { _ID = value; }
    }
    public string FirstName
    {
        get { return _FirstName; }
        set { _FirstName = value; }
    }
    public string LastName
    {
        get { return LastName; }
        set { LastName = value; }
    }
    public string Adress
    {
        get { return Adress; }
        set { Adress = value; }
    }
}
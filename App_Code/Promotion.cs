using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Promotion
{
    int MaxLength = 10;
    int x,y;
    string a;
    int[] array;
    
    public Promotion()
    {
        GenerateDiscount();
        GeneratePromoCode(MaxLength);
    }
    public string GeneratePromoCode(int MaxLength)
    {
        string a = Guid.NewGuid().ToString();
        return a.Length <= MaxLength ? a : a.Remove(MaxLength);
    }
    public int[] GenerateDiscount()
    {
        Random rnd = new Random();
        List<int> list = new List<int>();
        Convert.ToInt32(a);
        a = GeneratePromoCode(10);
        x = rnd.Next(10, 25);
        y = rnd.Next(0, 1);

        int[] array = list.ToArray();
        return array;
    }

}
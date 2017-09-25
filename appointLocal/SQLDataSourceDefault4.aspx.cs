
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Collections.Generic;

public partial class SQLDataSourceDefault4 : System.Web.UI.Page
{

    protected void grid_Sorting(object sender, GridViewSortEventArgs e)
    {
        grid.DataBind();
    }

    private List<DateTime> GetDateRange(DateTime StartingDate, DateTime EndingDate)
    {
        if (StartingDate > EndingDate)
        {
            return null;
        }
        List<DateTime> rv = new List<DateTime>();
        DateTime tmpDate = StartingDate;
        do
        {
            rv.Add(tmpDate);
            tmpDate = tmpDate.AddDays(1);
        } while (tmpDate <= EndingDate);
        return rv;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime dt2 = DateTime.ParseExact(TextBox2.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
        DateTime dt1 = DateTime.ParseExact(TextBox1.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
        int difference = dt2.Subtract(dt1).Days;
        DateTime[] dates = new DateTime[difference];

        int count = 0;

        for (DateTime start = dt1; dt1 < dt2; dt1 = dt1.AddDays(1))
        {
            dates[count] = dt1;
            count++;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
       // DateTime dt1 = new DateTime(2012, 5, 1);
       // DateTime dt2 = DateTime.Now;
       // DropDownList ddl = new DropDownList();
      //  while (dt1 < dt2)
       // {
        //    ddl.Items.Add(dt1.ToString("dd-MMM-yyyy"));
        //    dt1.AddDays(1);
       // }

        DateTime StartingDate = DateTime.Parse("08/26/2017");
        DateTime EndingDate = DateTime.Parse("09/03/2017");
        foreach (DateTime date in GetDateRange(StartingDate, EndingDate))
        {
            Response.Write(date.ToShortDateString());
            Response.Write(",");
        }
    }

    public DateTime[] GetDatesBetween(DateTime startDate, DateTime endDate)
    {
        List<DateTime> allDates = new List<DateTime>();
        for (DateTime date = startDate; date <= endDate; date = date.AddDays(1))
            allDates.Add(date);
        return allDates.ToArray();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DateTime startDate = new DateTime();
        startDate = DateTime.ParseExact(starttxt.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
        DateTime endDate = new DateTime();
        endDate = DateTime.ParseExact(endtxt.Text,  "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);

        DateTime[] dates = GetDatesBetween(startDate, endDate).ToArray(); 
    }
}
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

public partial class homePage : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter sda;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
        Label1.Text = "Login here";
    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        if (pwd.Text != "" && username.Text != "")
        {
            try
            {
                sda = new SqlDataAdapter("SELECT * from profile WHERE username=@username AND password=@pwd AND role='user'", conn);
                DataSet ds = new DataSet();
                sda.SelectCommand.Parameters.AddWithValue("@username", username.Text);
                sda.SelectCommand.Parameters.AddWithValue("@pwd", pwd.Text);
                sda.Fill(ds, "profile");
                if (ds.Tables["profile"].Rows.Count == 0)
                {
                    Label1.Text = "Invalid information";
                }
                else
                {
                    Session["profile"] = username.Text.Trim().Replace("'", "''");
                    Response.Redirect("_userpage.aspx");
                }
            }
            catch (Exception ex)
            {
                Label1.Text = "Exception. Failed";
            }
        }
        else
        {
            Label1.Text = "All fields needed";
        }      
    }
}
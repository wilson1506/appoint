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

public partial class staff : System.Web.UI.Page
{
    //global variable declarations
    SqlConnection conn;
    SqlDataAdapter sda;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        //database connection string
        conn = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
    }

    protected void regbtn_Click(object sender, EventArgs e)
    {
        //ensure all required fields are not left empty
        if (username.Text == "" || pwd.Text == "" || retypepwd.Text =="" || bizname.Text == "" || tel.Text == "")
        {
            Label1.Text = "All fields required";
        }
        else if(pwd.Text != retypepwd.Text)
        {
            Label1.Text="Passwords do not match";
        }
        else
        {
           try
            {
                sda = new SqlDataAdapter("Select * from profile where username=@username", conn);
               DataSet ds = new DataSet();
                sda.SelectCommand.Parameters.AddWithValue("@username", username.Text);
                sda.Fill(ds, "profile");
                if (ds.Tables["profile"].Rows.Count > 0)
                {
                    Label1.Text = "Username already taken";
                    username.Focus();
                    username.Attributes.Add("onfocus", "this.select()");
                }
                else
                {
                    cmd = new SqlCommand("INSERT INTO profile VALUES(@username,@pwd,'partner','','',@bizname,@tel,'','','','','','','','','','','')", conn);
                    cmd.Parameters.AddWithValue("@username", username.Text);
                    cmd.Parameters.AddWithValue("@pwd", pwd.Text);
                    cmd.Parameters.AddWithValue("@bizname", bizname.Text);
                    cmd.Parameters.AddWithValue("@tel", tel.Text);
                    
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    Label1.Text = "Successful registration";
                    username.Text = "";
                    pwd.Text = "";
                    bizname.Text = "";
                    tel.Text = "";
                    Response.Redirect("_partnerlogin.aspx");
                }
            }
            catch (Exception ex)
            {
                Label1.Text = "Registration failed";
            }
        }
    }
}
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
    SqlConnection conn;
    SqlDataAdapter sda;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
    }

    protected void regbtn_Click(object sender, EventArgs e)
    {
        if (username.Text == "" || pwd.Text == "" || retypepwd.Text =="" || firstname.Text == "" || lastname.Text == "" || tel.Text == "")
        {
            Label1.Text = "All fields required";
        }
        else if (pwd.Text != retypepwd.Text)
        {
            Label1.Text = "Passwords do not match";
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
                    cmd = new SqlCommand("INSERT INTO profile VALUES(@username,@pwd,'user',@firstname,@lastname,'',@tel,'','','','','','','','','','','')", conn);
                    cmd.Parameters.AddWithValue("@username", username.Text);
                    cmd.Parameters.AddWithValue("@pwd", pwd.Text);
                    cmd.Parameters.AddWithValue("@firstname", firstname.Text);
                    cmd.Parameters.AddWithValue("@lastname", lastname.Text);
                    cmd.Parameters.AddWithValue("@tel", tel.Text);
                    
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    Label1.Text = "Successful registration";
                    username.Text = "";
                    pwd.Text = "";
                    firstname.Text = "";
                    lastname.Text = "";
                    tel.Text = "";
                }
            }
            catch (Exception ex)
           {
              Label1.Text = "Registration failed";
           }
        }
    }
}
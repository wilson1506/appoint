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
        welcome.Text = "You logged in as '" + Session["profile"] + "'";

        string Input1 = "'" + Session["profile"].ToString() + "'";
        string Result1 = string.Join(" ", Input1.Split(' ').Select(x => x.Trim('\'')));

        welcome1.Text = Result1;

        if (Session["profile"] == null || welcome1.Text == "")
        {
            Response.Redirect("_partnerlogin.aspx");
        }
    }

    protected void regbtn_Click(object sender, EventArgs e)
    {
        if (servicename.Text == "" || desc.Text == "" || price.Text == "")
        {
            Label1.Text = "All fields required";
        }
        else
        {
           try  
            {           
                sda = new SqlDataAdapter("Select * from savice where username=@username AND servicename=@servicename AND price=@price", conn);    
                DataSet ds = new DataSet();
                sda.SelectCommand.Parameters.AddWithValue("@username",welcome1.Text);
                sda.SelectCommand.Parameters.AddWithValue("@servicename",servicename.Text);           
                sda.SelectCommand.Parameters.AddWithValue("@price",price.Text);
                sda.SelectCommand.Parameters.AddWithValue("@desc", desc.Text);
                sda.Fill(ds, "savice");
                if (ds.Tables["savice"].Rows.Count > 0)
                {
                    Label1.Text = "Service previously recorded";
                }
                else
                {
                    cmd = new SqlCommand("INSERT INTO savice VALUES(@username,@servicename,@desc,@price,'','')", conn);
                    cmd.Parameters.AddWithValue("@username", welcome1.Text);
                    cmd.Parameters.AddWithValue("@servicename", servicename.Text);
                    cmd.Parameters.AddWithValue("@price", price.Text);
                    cmd.Parameters.AddWithValue("@desc", desc.Text);

                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    Label1.Text = "Service successfully added";
                    servicename.Text = "";
                    desc.Text = "";
                    price.Text = "";
                }
            }
            catch (Exception ex)
           {
               Label1.Text = "Service addition failed.";
           }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedRowIndex;
        selectedRowIndex = GridView1.SelectedIndex;
        GridViewRow row = GridView1.Rows[selectedRowIndex];
        string savice = row.Cells[1].Text;
        string price = row.Cells[3].Text;
        detailsLabel.Text = "You have selected " + savice + " and the price is " + price + ".";
    }
}
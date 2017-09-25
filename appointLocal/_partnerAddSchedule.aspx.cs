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
    SqlDataAdapter sda, sda1;
    SqlDataReader sdr, sdr1;
    SqlCommand cmd, cmd1;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
        welcome.Text = "You logged in as '" + Session["profile"] + "'";

        string Input1 = "'" + Session["profile"].ToString() + "'";
        string Result1 = string.Join(" ", Input1.Split(' ').Select(x => x.Trim('\'')));

        welcome1.Text = Result1;


        if (!IsPostBack)
        {
            if (Session["profile"] == null || welcome1.Text == "")
            {
                Response.Redirect("_partnerlogin.aspx");
            }
            else
            {
                conn.Open();
                cmd = new SqlCommand("SELECT servicename from savice WHERE username='" + welcome1.Text + "'", conn);
                serviceddl.Items.Clear();
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    serviceddl.Items.Add(sdr[0].ToString());
                }
                sdr.Close();
                cmd.Connection.Close();
                conn.Close();
            }
        }
    }

    protected void regbtn_Click(object sender, EventArgs e)
    {
        if (serviceddl.Text == "" || datetxt.Text == "" || timeddl.Text == "")
        {
            Label1.Text = "All fields required";
        }
        else
        {
           try  
            {           
                sda = new SqlDataAdapter("SELECT * from s_schedule WHERE username=@username AND servicename=@servicename AND s_date=@sdate AND s_time=@stime", conn);    
                DataSet ds = new DataSet();
                sda.SelectCommand.Parameters.AddWithValue("@username",welcome1.Text);
                sda.SelectCommand.Parameters.AddWithValue("@servicename",serviceddl.Text);
                sda.SelectCommand.Parameters.AddWithValue("@sdate",datetxt.Text);
                sda.SelectCommand.Parameters.AddWithValue("@stime",timeddl.Text);
                sda.Fill(ds, "s_schedule");
                if (ds.Tables["s_schedule"].Rows.Count > 0)
                {
                    Label1.Text = "This Schedule Already Exists";
                }
                else
                {
                    cmd = new SqlCommand("INSERT INTO s_schedule VALUES(@username,@servicename,@sdate,@stime)", conn);
                    cmd.Parameters.AddWithValue("@username", welcome1.Text);
                    cmd.Parameters.AddWithValue("@servicename", serviceddl.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@sdate", datetxt.Text);
                    cmd.Parameters.AddWithValue("@stime", timeddl.SelectedItem.Text);
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    
                    Label1.Text = "Schedule successfully added";
                    serviceddl.SelectedIndex = 0;
                    datetxt.Text = "";
                    timeddl.SelectedIndex = 0;
                }
            }
            catch (Exception ex)
           {
               Label1.Text = "Addition process failed";
           }
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        cmd1 = new SqlCommand("SELECT DISTINCT servicename from s_schedule WHERE username=@username", conn);
        conn.Open();
        cmd1.Parameters.AddWithValue("@username", welcome1.Text);
        sdr1 = cmd1.ExecuteReader();
        DropDownList1.DataSource = sdr1;
        DropDownList1.DataValueField = "servicename";
        DropDownList1.DataTextField = "servicename";
        DropDownList1.DataBind();
        sdr1.Close();
        cmd1.Connection.Close();
        LinkButton1.Visible = false;
        DropDownList1.Visible = true;

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        {
            sda1 = new SqlDataAdapter("Select * from s_schedule where servicename=@servicename AND username=@username", conn);
            DataSet ds1 = new DataSet();
            sda1.SelectCommand.Parameters.AddWithValue("@username", welcome1.Text);
            sda1.SelectCommand.Parameters.AddWithValue("@servicename", DropDownList1.SelectedItem.Text);
            sda1.Fill(ds1, "s_schedule");
            GridView2.DataSource = ds1.Tables["s_schedule"].DefaultView;
            GridView2.DataBind();
        }
    }
}
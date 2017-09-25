using System;
using System.Collections;
using System.Collections.Generic;
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


public partial class editStaff : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter sda;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
    }


    protected void updateButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
        //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(constr))
        if (savice.Text=="" && location.Text=="" && date.Text=="" && time.Text=="")
        {
            Label2.Text="Enter search conditions";
        }

        else if (savice.Text != "" && location.Text == "" && date.Text == "" && time.Text == "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE descriptn LIKE '%' + @servicename + '%' OR servicename LIKE '%' + @servicename + '%'  ", con))           
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@servicename", savice.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "No search results found";
                        savice.Focus();
                        savice.Attributes.Add("onfocus", "this.select()");
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text == "" && location.Text != "" && date.Text == "" && time.Text == "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE location LIKE '%' + @location + '%' ", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@location", location.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "No search results found";
                        location.Focus();
                        location.Attributes.Add("onfocus", "this.select()");
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text == "" && location.Text == "" && date.Text != "" && time.Text == "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE s_date LIKE '%' + @servicedate + '%' ", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@servicedate", date.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "No search results found";
                        date.Focus();
                        date.Attributes.Add("onfocus", "this.select()");
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text == "" && location.Text == "" && date.Text == "" && time.Text != "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE s_time LIKE '%' + @servicetime + '%' ", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@servicetime", time.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "No search results found";
                        time.Focus();
                        time.Attributes.Add("onfocus", "this.select()");
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text != "" && location.Text != "" && date.Text == "" && time.Text == "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE descriptn LIKE '%' + @servicename + '%' AND location LIKE '%' + @location + '%' ", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@servicename", savice.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@location", location.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "Search for '" + savice.Text + "' in '" + location.Text + "' not found";
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text != "" && location.Text == "" && date.Text != "" && time.Text == "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE descriptn LIKE '%' + @servicename + '%' AND s_date LIKE '%' + @servicedate + '%' ", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@servicename", savice.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicedate", date.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "Search for '" + savice.Text + "' on '" + date.Text + "' not found";
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text != "" && location.Text == "" && date.Text == "" && time.Text != "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE descriptn LIKE '%' + @servicename + '%' AND s_time LIKE '%' + @servicetime + '%'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@servicename", savice.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicetime", time.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "Search for '" + savice.Text + "' @ '" + time.Text + "' not found";
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text != "" && location.Text != "" && date.Text != "" && time.Text == "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE descriptn LIKE '%' + @servicename + '%' AND location LIKE '%' + @location + '%' AND s_date LIKE '%' + @servicedate + '%'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@servicename", savice.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@location", location.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicedate", date.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "Search for '" + savice.Text + "' in '" + location.Text + "' on '" + date.Text + "' not found";
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text != "" && location.Text != "" && date.Text == "" && time.Text != "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE descriptn LIKE '%' + @servicename + '%' AND location LIKE '%' + @location + '%' AND s_time LIKE '%' + @servicetime + '%'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@servicename", savice.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@location", location.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicetime", time.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "Search for '" + savice.Text + "' in '" + location.Text + "' and @ '" + time.Text + "' not found";
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text != "" && location.Text != "" && date.Text != "" && time.Text != "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE descriptn LIKE '%' + @servicename + '%' AND location LIKE '%' + @location + '%' AND s_date LIKE '%' + @servicedate + '%' AND s_time LIKE '%' + @servicetime + '%'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@servicename", savice.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@location", location.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicedate", date.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicetime", time.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "Search for '" + savice.Text + "' in '" + location.Text + "' on '" + date.Text + "' and @ '" + time.Text + "' not found";
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text == "" && location.Text != "" && date.Text != "" && time.Text != "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE location LIKE '%' + @location + '%' AND s_date LIKE '%' + @servicedate + '%' AND s_time LIKE '%' + @servicetime + '%'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@location", location.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicedate", date.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicetime", time.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "Search for a service in '" + location.Text + "' on '" + date.Text + "' and @ '" + time.Text + "' not found";
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text == "" && location.Text != "" && date.Text != "" && time.Text == "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE location LIKE '%' + @location + '%' AND s_date LIKE '%' + @servicedate + '%' ", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@location", location.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicedate", date.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "Search for a service in '" + location.Text + "' on '" + date.Text + "' not found";
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text == "" && location.Text != "" && date.Text == "" && time.Text != "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE location LIKE '%' + @location + '%' AND s_time LIKE '%' + @servicetime + '%'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@location", location.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicetime", time.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "Search for a service in '" + location.Text + "' and @ '" + time.Text + "' not found";
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

        else if (savice.Text == "" && location.Text == "" && date.Text != "" && time.Text != "")
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice WHERE s_date LIKE '%' + @servicedate + '%' AND s_time LIKE '%' + @servicetime + '%'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.SelectCommand.Parameters.AddWithValue("@servicedate", date.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@servicetime", time.Text);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Label2.Text = "Search for a service on '" + date.Text + "' and @ '" + time.Text + "' not found";
                        rptServices.Visible = false;
                    }
                    else
                    {
                        rptServices.DataSource = dt;
                        rptServices.DataBind();
                        Label2.Text = "";
                        rptServices.Visible = true;
                    }
                }
            }
        }

    }
}
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

public partial class feedback : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
       conn = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");

       if (!this.IsPostBack)
       {
           this.BindRepeater();
       }
    }

    private void BindRepeater()
    {
        SqlConnection con = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
        //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM savice", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptServices.DataSource = dt;
                    rptServices.DataBind();
                }
            }
        }
    }

    protected void feedbackbutton_Click(object sender, EventArgs e)
    {
       
    }
}
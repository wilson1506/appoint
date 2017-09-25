using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    private void BindGrid()
    {
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        conn = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
        comm = new SqlCommand("SELECT sched_id, username, servicename, s_date, s_time FROM s_schedule", conn);
        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            grid.DataSource = reader;
            grid.DataKeyNames = new string[] { "sched_id" };
            grid.DataBind();
            reader.Close();
        }
        finally
        {
            conn.Close();
        }
    }

    protected void grid_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindDetails();
    }

    private void BindDetails()
    {
        int selectedRowIndex = grid.SelectedIndex;
        int sched_id = (int)grid.DataKeys[selectedRowIndex].Value;

        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;
        conn = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
        comm = new SqlCommand("SELECT sched_id, username, servicename, s_date, s_time FROM s_schedule WHERE sched_id=@sched_id", conn);
        comm.Parameters.Add("sched_id", SqlDbType.Int);
        comm.Parameters["sched_id"].Value = sched_id;
        try
        {
            conn.Open();
            reader = comm.ExecuteReader();
            scheduleDetails.DataSource = reader;
            scheduleDetails.DataKeyNames = new string[] { "sched_id" };
            scheduleDetails.DataBind();
            reader.Close();
        }
        finally
        {
            conn.Close();
        }
    }

    protected void scheduleDetails_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        scheduleDetails.ChangeMode(e.NewMode);
        BindDetails();
    }

    protected void scheduleDetails_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        int sched_id = (int)scheduleDetails.DataKey.Value;
        TextBox newservicenameTextBox =(TextBox)scheduleDetails.FindControl("editservicenameTextBox");
        TextBox news_dateTextBox =(TextBox)scheduleDetails.FindControl("edits_dateTextBox");
        TextBox news_timeTextBox =(TextBox)scheduleDetails.FindControl("edits_timeTextBox");
        string newservicename = newservicenameTextBox.Text;
        string news_date = news_dateTextBox.Text;
        string news_time = news_timeTextBox.Text;
        SqlConnection conn;
        SqlCommand comm;
//string connectionString =ConfigurationManager.ConnectionStrings["Dorknozzle"].ConnectionString;
        conn = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
        comm = new SqlCommand("UpdateschedulesDetails", conn);
        comm.CommandType = CommandType.StoredProcedure;
        comm.Parameters.Add("sched_id", SqlDbType.Int);
        comm.Parameters["sched_id"].Value = sched_id;
        comm.Parameters.Add("newservicename", SqlDbType.NVarChar, 50);
        comm.Parameters["newservicename"].Value = newservicename;
        comm.Parameters.Add("news_date", SqlDbType.NVarChar, 50);
        comm.Parameters["news_date"].Value = news_date;
        comm.Parameters.Add("news_time", SqlDbType.NVarChar, 50);
        comm.Parameters["news_time"].Value = news_time;
    try
    {
        conn.Open();
        comm.ExecuteNonQuery();
    }
    finally
    {
        conn.Close();
    }
        scheduleDetails.ChangeMode(DetailsViewMode.ReadOnly);
        BindGrid();
        BindDetails();
    }
}

   
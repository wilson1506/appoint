using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Globalization;

public partial class Default4 : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter sda;
    SqlDataReader sdr, sdr1;
    SqlCommand cmd, cmd1;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("Data Source= DELL-PC\\SQLEXPRESS;Initial Catalog=aun;User ID=sa; pwd=zion");
       
        if (!IsPostBack)
        {
            conn.Open();
            cmd = new SqlCommand("SELECT servicename from savice", conn);
            //saviceidddl.Items.Clear();
            sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                saviceidddl.Items.Add(sdr[0].ToString());
            }
            sdr.Close();
            cmd.Connection.Close();
            conn.Close();
        }
    }
    protected void saviceidddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (saviceidddl.SelectedIndex == 0)
        {
            Response.Write("No service selected");
            TextBox1.Text = "";
        }
        else
        {
            cmd1 = new SqlCommand("Select * from savice where servicename=@servicename", conn);
            cmd1.Parameters.AddWithValue("@servicename", saviceidddl.SelectedItem.Text);
            cmd1.Connection.Open();
            sdr1 = cmd1.ExecuteReader();
            sdr1.Read();
            TextBox1.Text = sdr1.GetString(4);
            cmd1.Connection.Close();
        }
    }
    protected void schedulebtn_Click(object sender, EventArgs e)
    {

        List<String> lst = new List<String>();
        if(MondayCheckBox.Checked==true)
        {
            lst.Add("Monday"); 
        }
        if (TuesdayCheckBox.Checked == true)
        {
            lst.Add("Tuesday");
        }
        if (WednesdayCheckBox.Checked == true)
        {
            lst.Add("Wednesday");
        }
        if (ThursdayCheckBox.Checked == true)
        {
            lst.Add("Thursday");
        }
        if (FridayCheckBox.Checked == true)
        {
            lst.Add("Friday");
        }
        if (SaturdayCheckBox.Checked == true)
        {
            lst.Add("Saturday");
        }
        if (SundayCheckBox.Checked == true)
        {
            lst.Add("Sunday");
        }       
        //thursdayendtimetxt.Text = string.Join(" ", lst);
        //saturdayendtimetxt.Text = lst.Count().ToString();

        //int MonStartH = Convert.ToInt32(mondaystarttimetxt.Text);
       // int MonStartM = Convert.ToInt32(tuesdaystarttimetxt.Text);
      //  int MonStartS = Convert.ToInt32(wednesdaystarttimetxt.Text);
       // int MonEndH = Convert.ToInt32(mondayendtimetxt.Text);
       // int MonEndM = Convert.ToInt32(tuesdayendtimetxt.Text);
      //  int MonEndS = Convert.ToInt32(wednesdayendtimetxt.Text);
       // TimeSpan MonStart = new TimeSpan(MonStartH, MonStartM, MonStartS);
       // TimeSpan MonEnd = new TimeSpan(MonEndH, MonEndM, MonEndS);
        int Duration = Convert.ToInt32(TextBox1.Text);

       // if (MonStart >= MonEnd)
       // {
        //    Response.Write("Start time must be earlier than end time");
        //}
        
            TimeSpan ts1 = TimeSpan.Parse(sundaystarttimetxt.Text);
            TimeSpan ts2 = TimeSpan.Parse(sundayendtimetxt.Text); 
            TimeSpan ts3 = (ts2 - ts1);

            double totalMinutes = ts3.TotalMinutes;
            double totalMinutes1 = ts3.TotalMinutes + 90;
            double totalMinutes2 = ts3.TotalMinutes/Duration;
            TextBox2.Text = ts3.ToString();

        if(ts1>=ts2)
        {
            fridaystarttimetxt.Text = "dates not good lah";
            saturdaystarttimetxt.Text = totalMinutes.ToString();
            fridayendtimetxt.Text = totalMinutes1.ToString();
            thursdaystarttimetxt.Text = totalMinutes2.ToString();
            lst.Add(fridayendtimetxt.Text);
            thursdayendtimetxt.Text = string.Join(" ", lst);
            saturdayendtimetxt.Text = lst.Count().ToString();
        }
    }
}
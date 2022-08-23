using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Principal;
using System.Data;

public partial class Attendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = Database.GetConnection();

        SqlCommand cmd = new SqlCommand("SELECT * FROM f_TraineeAttendance", con);
        SqlDataReader rdr = cmd.ExecuteReader();
        Attendance_GridView.DataSource = rdr;
        Attendance_GridView.DataBind();
        con.Close();
    }
    public string convertType(string value)
    {
        if (value.Equals("1")) { return "signin"; }
        else { return "signout"; }
    }
    public string convertID(string value)
    {
        SqlConnection con = Database.GetConnection();

        string name = "SELECT f_TraineeTable.name FROM f_TraineeTable WHERE f_TraineeTable.id = @val1";
        SqlCommand cmdID = new SqlCommand(name, con);
        cmdID.Parameters.AddWithValue("@val1", value);
        var adminID = cmdID.ExecuteScalar();
        
        con.Close();

        return adminID.ToString();

       
    }
}
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

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //SqlConnection con = Database.GetConnection();

        //SqlCommand cmd = new SqlCommand("SELECT * FROM f_LogsTable", con);
        //SqlDataReader rdr = cmd.ExecuteReader();
        //Admin_GridView.DataSource = rdr;
        //Admin_GridView.DataBind();
        //con.Close();

        //con.Open();
        //string traineeCount = "SELECT COUNT (*) from f_traineeTable WHERE adminID = @val";
        //SqlCommand cmdCount = new SqlCommand(traineeCount, con);
        //cmdCount.Parameters.AddWithValue("@val", Session["userID"]);
        //var count = cmdCount.ExecuteScalar();

        //string adminCount = "SELECT COUNT (*) from f_UsersTable WHERE createdBy = '@name' and type = 0";
        //SqlCommand cmdAdminCount = new SqlCommand(adminCount, con);
        //cmdAdminCount.Parameters.AddWithValue("@name", Session["name"]);
        //var countAdmin = cmdCount.ExecuteScalar();

        //trainees.Text = count.ToString();
        //admin.Text = countAdmin.ToString();

        //con.Close();

    }
}

        

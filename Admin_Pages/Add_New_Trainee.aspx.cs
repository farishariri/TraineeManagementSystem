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
using System.Windows;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AddTraineeButton(object sender, EventArgs e)
    {
        SqlConnection con = Database.GetConnection();
       

        SqlCommand cmdAdd = new SqlCommand("", con);
        
        cmdAdd.CommandType = CommandType.Text;
        
        cmdAdd.CommandText  = "INSERT INTO f_UsersTable (id, name, type, createdBy, createdDate, status) VALUES (@id , @name, @type, @createdBy, @createdDate, @status)";

        cmdAdd.Parameters.AddWithValue("@id", traineeID.Text);
        cmdAdd.Parameters.AddWithValue("@name", name.Text);
        cmdAdd.Parameters.AddWithValue("@type", 1);
        cmdAdd.Parameters.AddWithValue("@createdBy", Session["name"]);
        cmdAdd.Parameters.AddWithValue("@createdDate", DateTime.Now);
        cmdAdd.Parameters.AddWithValue("@status", 1);
        cmdAdd.ExecuteNonQuery();


        cmdAdd.CommandText = "INSERT INTO f_TraineeTable (id, name, phone, gender, major, college, startDate, adminID) VALUES (@id , @name, @phone, @gender, @major, @college, @startDate, @adminID)";
               
        cmdAdd.Parameters.Clear(); 
        cmdAdd.Parameters.AddWithValue("@id", traineeID.Text);
        cmdAdd.Parameters.AddWithValue("@name", name.Text);
        cmdAdd.Parameters.AddWithValue("@phone", phone.Text);
        cmdAdd.Parameters.AddWithValue("@gender", gender.Value);
        cmdAdd.Parameters.AddWithValue("@major", major.Text);
        cmdAdd.Parameters.AddWithValue("@college", college.Text);
        cmdAdd.Parameters.AddWithValue("@startDate", date.Value);
        cmdAdd.Parameters.AddWithValue("@adminID", Session["userID"]);
        cmdAdd.ExecuteNonQuery();

        string alert = "Added Trainee Successfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alert + "');", true);

        con.Close();

        Response.Redirect("/Admin_Pages/Admin.aspx");
    }
}

       


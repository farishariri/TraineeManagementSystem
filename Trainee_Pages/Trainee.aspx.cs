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
public partial class Trainee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data Source=RMD-ITDBS-SH01;Initial Catalog=Test;Persist Security Info=True;User ID=testUser;Password=Tr857396!2");
        //con.Open();

        //string traineeAdvisor = "SELECT f_TraineeTable.adminID FROM f_TraineeTable WHERE f_TraineeTable.id = @val1";
        //SqlCommand cmdID = new SqlCommand(traineeAdvisor, con);
        //cmdID.Parameters.AddWithValue("@val1", Session["userID"]);
        //var adminID = cmdID.ExecuteScalar();

        //string advisor = "SELECT AdminTraineeInfo.name FROM AdminTraineeInfo WHERE AdminTraineeInfo.adminID = @val2";
        //SqlCommand cmdName = new SqlCommand(advisor, con);
        //cmdName.Parameters.AddWithValue("@val2", adminID);
        //var adminName = cmdName.ExecuteScalar();

        //Session["adminName"] = adminName;

        //idBox.Value = Session["userID"].ToString();
        //nameBox.Value = Session["name"].ToString();
        //adminBox.Value = Session["adminName"].ToString();

        //con.Close();


        ////Admins can't access Trainee pages

        //if (Session["type"].Equals(false))
        //{
        //    Response.Redirect("/Admin_Pages/Admin.aspx");


        //}
        
    } 
    protected void SignInButton(object sender, EventArgs e)
    {
        //SqlConnection con = Database.GetConnection();
        //string signIn = "INSERT INTO f_TraineeAttendance (id, date, type) VALUES (@id, @date, @type)";  
        
        //SqlCommand cmdSignIn = new SqlCommand(signIn, con);
        //cmdSignIn.Parameters.AddWithValue("@id", Session["userID"]);
        //cmdSignIn.Parameters.AddWithValue("@date", DateTime.Now);
        //cmdSignIn.Parameters.AddWithValue("@type", "1");
        //cmdSignIn.ExecuteNonQuery();

        //string log = "INSERT INTO f_LogsTable (id, name, time, status) VALUES (@id, @name, @time, @status)";
        //cmdSignIn.Parameters.Clear();
        
        //SqlCommand cmdLog = new SqlCommand(log, con);
        //cmdLog.Parameters.AddWithValue("@id", Session["userID"]);
        //cmdLog.Parameters.AddWithValue("@name", Session["name"]);
        //cmdLog.Parameters.AddWithValue("@time", DateTime.Now);
        //cmdLog.Parameters.AddWithValue("@status", "Signed In");
        //cmdLog.ExecuteNonQuery();

        string alert = "Signed in successfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alert + "');", true);

        //con.Close();
    }
    protected void SignOutButton(object sender, EventArgs e)
    {
        //SqlConnection con = Database.GetConnection();
        //string signIn = "INSERT INTO f_TraineeAttendance (id, date, type) VALUES (@id, @date, @type)";
        
        //SqlCommand cmdSignout = new SqlCommand(signIn, con);
        //cmdSignout.Parameters.AddWithValue("@id", Session["userID"]);
        //cmdSignout.Parameters.AddWithValue("@date", DateTime.Now);
        //cmdSignout.Parameters.AddWithValue("@type", "2");
        //cmdSignout.ExecuteNonQuery();

        //string log = "INSERT INTO f_LogsTable (id, name, time, status) VALUES (@id, @name, @time, @status)";
        //cmdSignout.Parameters.Clear();

        //SqlCommand cmdLog = new SqlCommand(log, con);
        //cmdLog.Parameters.AddWithValue("@id", Session["userID"]);
        //cmdLog.Parameters.AddWithValue("@name", Session["name"]);
        //cmdLog.Parameters.AddWithValue("@time", DateTime.Now);
        //cmdLog.Parameters.AddWithValue("@status", "Signed Out");
        //cmdLog.ExecuteNonQuery();

        string alert = "Signed out successfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alert + "');", true);
        
        //con.Close();
    }

}



        

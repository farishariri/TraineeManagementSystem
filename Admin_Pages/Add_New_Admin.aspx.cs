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

public partial class Add_New_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AddAdminButton(object sender, EventArgs e)
    {
        SqlConnection con = Database.GetConnection();


        SqlCommand cmdAdd = new SqlCommand("", con);

        cmdAdd.CommandType = CommandType.Text;

        cmdAdd.CommandText = "INSERT INTO f_UsersTable (id, name, type, createdBy, createdDate, status) VALUES (@id , @name, @type, @createdBy, @createdDate, @status)";

        cmdAdd.Parameters.AddWithValue("@id", adminID.Text);
        cmdAdd.Parameters.AddWithValue("@name", name.Text);
        cmdAdd.Parameters.AddWithValue("@type", 0);
        cmdAdd.Parameters.AddWithValue("@createdBy", Session["name"]);
        cmdAdd.Parameters.AddWithValue("@createdDate", DateTime.Now);
        cmdAdd.Parameters.AddWithValue("@status", 1);
        cmdAdd.ExecuteNonQuery();


        cmdAdd.CommandText = "INSERT INTO f_AdminTable (id, name, position, department) VALUES (@id , @name, @position, @department)";

        cmdAdd.Parameters.Clear();
        cmdAdd.Parameters.AddWithValue("@id", adminID.Text);
        cmdAdd.Parameters.AddWithValue("@name", name.Text);
        cmdAdd.Parameters.AddWithValue("@position", position.Text);
        cmdAdd.Parameters.AddWithValue("@department", department.Text);
        cmdAdd.ExecuteNonQuery();

       
        string alert = "Added Admin Successfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alert + "');", true);

        con.Close();

        Response.Redirect("/Admin_Pages/Admin.aspx");

    }
}

        

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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

        //DataTable temp = new DataTable();

        ////Connecting to Database

        //SqlConnection con = Database.GetConnection();
        //string id = /*(System.Security.Principal.WindowsIdentity.GetCurrent().Name).Substring(4);*/ "1112331390" /*"1112437387"*/;

        ////Check if Windows ID exists in the Users table

        //string checkUser = "SELECT [id], [name], [type], [status] FROM f_UsersTable WHERE f_UsersTable.id = @val1 and status = 1";
        //SqlCommand cmd = new SqlCommand(checkUser, con);
        //cmd.Parameters.AddWithValue("@val1", id);
        //SqlDataAdapter c = new SqlDataAdapter(cmd);
        //c.Fill(temp);

        //// Check ID, type and status and store it in sessions

        //if(temp.Rows.Count > 0)
        //{
            
        //    Session["userID"] = temp.Rows[0]["id"].ToString();
        //    Session["type"] = temp.Rows[0]["type"];
        //    Session["status"] = temp.Rows[0]["status"];
        //    Session["name"] = temp.Rows[0]["name"];

        //    if (id != null && Session["userID"] != null && id.Equals(Session["userID"]) && Session["type"].Equals(true))
        //    {
        //        Response.Redirect("/Trainee_Pages/Trainee.aspx");
        //    }
        //    else if (id != null && Session["userID"] != null && Session["type"].Equals(false) && Session["type"] != null)
        //    {
        //        Response.Redirect("/Admin_Pages/Admin.aspx");
        //    }
        //    else if (Session["userID"] == null || Session["type"] == null) 
        //    {
        //        Response.Redirect("403.aspx");
        //    }

        //}
        //else
        //{
        //    Response.Redirect("403.aspx");
        //}

        //con.Close();
       

    }


    protected void Trainee_Click(object sender, EventArgs e)
    {
        Response.Redirect("Trainee_Pages/Trainee.aspx");
    }

    protected void Admin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Pages/Admin.aspx");
    }
}




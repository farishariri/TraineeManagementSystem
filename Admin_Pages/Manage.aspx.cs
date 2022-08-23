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


public partial class Manage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = Database.GetConnection();

        SqlCommand cmd = new SqlCommand("SELECT * FROM f_TraineeTable", con);
        SqlDataReader rdr = cmd.ExecuteReader();
        SqlDataAdapter c = new SqlDataAdapter(cmd);
        Manage_GridView.DataSource = rdr;
        Manage_GridView.DataBind();
        con.Close();

        DataTable dt = new DataTable();
        c.Fill(dt);

        ViewState["table"] = dt;

        
    }

    //public string convertType (string value)
    //{
    //    if(value.Equals("1")) { return "signin"; }
    //    else { return "signout"; }
    //}

    protected void lbtnDetails_Click(object sender, EventArgs e)
    {
        var button =  (LinkButton)sender;
        var id = button.CommandArgument;
        Session["id"] = id;




        //DataTable dt = ViewState["table"] as DataTable;

        //GridViewRow rowSelect = (GridViewRow)(((LinkButton)sender).NamingContainer);
        //int index = rowSelect.RowIndex;

        //Session["id"] = dt.Rows[index]["id"].ToString();

        Response.Redirect("/Admin_Pages/Edit_Trainee.aspx");

    }
}
       
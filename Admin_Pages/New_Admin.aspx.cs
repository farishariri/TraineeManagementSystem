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


public partial class New_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = Database.GetConnection();

        SqlCommand cmd = new SqlCommand("SELECT * FROM f_AdminTable", con);
        SqlDataReader rdr = cmd.ExecuteReader();
        NewAdmin_GridView.DataSource = rdr;
        NewAdmin_GridView.DataBind();
        con.Close();
    }
}
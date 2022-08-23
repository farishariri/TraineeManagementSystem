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

public partial class Edit_Trainee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable TraineeInfo = new DataTable();

            SqlConnection con = Database.GetConnection();
            string edit = "SELECT * FROM f_TraineeTable WHERE f_TraineeTable.id = @id";

            SqlCommand cmd = new SqlCommand(edit, con);
            cmd.Parameters.AddWithValue("@id", Session["id"]);

            SqlDataAdapter c = new SqlDataAdapter(cmd);
            c.Fill(TraineeInfo);

            ViewState["id"] = TraineeInfo.Rows[0]["id"];
            ViewState["name"] = TraineeInfo.Rows[0]["name"];
            ViewState["phone"] = TraineeInfo.Rows[0]["phone"];
            ViewState["gender"] = TraineeInfo.Rows[0]["gender"];
            ViewState["major"] = TraineeInfo.Rows[0]["major"];
            ViewState["college"] = TraineeInfo.Rows[0]["college"];
            ViewState["startDate"] = TraineeInfo.Rows[0]["startDate"];

            idBox.Text = ViewState["id"].ToString();
            nameBox.Text = ViewState["name"].ToString();
            phoneBox.Text = ViewState["phone"].ToString();
            genderBox.Text = ViewState["gender"].ToString();
            majorBox.Text = ViewState["major"].ToString();
            collegeBox.Text = ViewState["college"].ToString();
            dateBox.Text = ViewState["startDate"].ToString();

            con.Close();
        }
    }

    protected void Edit_Button(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = Database.GetConnection();

            SqlCommand cmdupdate = new SqlCommand("", con);

            cmdupdate.CommandType = CommandType.Text;

            cmdupdate.CommandText = "UPDATE f_TraineeTable SET id = @id, name = @name, phone = @phone, gender = @gender, major = @major, college = @college, startDate = @date  WHERE id = @val;";

            cmdupdate.Parameters.AddWithValue("@id", idBox.Text);
            cmdupdate.Parameters.AddWithValue("@name", nameBox.Text);
            cmdupdate.Parameters.AddWithValue("@phone", phoneBox.Text);
            cmdupdate.Parameters.AddWithValue("@gender", genderBox.Text);
            cmdupdate.Parameters.AddWithValue("@major", majorBox.Text);
            cmdupdate.Parameters.AddWithValue("@college", collegeBox.Text);
            cmdupdate.Parameters.AddWithValue("@date", dateBox.Text);
            cmdupdate.Parameters.AddWithValue("@val", Session["id"]);

            cmdupdate.ExecuteNonQuery();

            string alert = "Edited Trainee Successfully";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alert + "');", true);
        }
        catch (Exception wxys)
        {

        }
    }
}
        
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;


/// <summary>
/// Summary description for sql
/// </summary>
public static class Database
{
    public static SqlConnection GetConnection()
    {
        string conn = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString.ToString();
        SqlConnection con;
        con = new SqlConnection(conn);
        con.Open(); 

        return con;
    }
}


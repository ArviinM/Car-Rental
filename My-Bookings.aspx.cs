using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Services;

public partial class My_Bookings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Bindgrid();
        }
    }
  
    private void Bindgrid()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from tbl_User";
        cmd.Connection = con;

        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label l1 = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Delete from tbl_User where id=@id1";
        cmd.Parameters.AddWithValue("@id1", l1.Text);
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Bindgrid();
    }
}
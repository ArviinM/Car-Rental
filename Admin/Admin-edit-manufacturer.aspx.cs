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

public partial class Admin_Admin_edit_manufacturer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();

            SqlCommand com = new SqlCommand("select Id,Car_Manufacturer from tbl_Category1", con);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource = com.ExecuteReader();
            DropDownList1.DataTextField = "Car_Manufacturer";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataBind();
            con.Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update tbl_Category1 set Car_Manufacturer=@cmanuf where Car_Manufacturer=@cmanufedit";
        cmd.Parameters.AddWithValue("@cmanuf", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@cmanufedit", TextBox1.Text);

        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Visible = true;
        Label1.Text = "Manufacturer edited successfully!";
        Label1.ForeColor = System.Drawing.Color.Green;

    }

}
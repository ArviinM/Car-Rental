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

public partial class Admin_Admin_car_edit : System.Web.UI.Page
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
            DropDownList3.DataSource = com.ExecuteReader();
            DropDownList3.DataTextField = "Car_Manufacturer";
            DropDownList3.DataValueField = "Id";
            DropDownList3.DataBind();
            con.Close();

            con.Open();
            SqlCommand com2 = new SqlCommand("select Id,Car_Model from tbl_Cars", con);
            SqlDataAdapter da2 = new SqlDataAdapter(com);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            DropDownList5.DataSource = com2.ExecuteReader();
            DropDownList5.DataTextField = "Car_Model";
            DropDownList5.DataValueField = "Id";
            DropDownList5.DataBind();
            DropDownList5.Items.Insert(0, "(select-the-car-to-edit)");
            con.Close();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("/Images/" + str));
            string imgpath = "/Images/" + str.ToString();

            cmd.CommandText = "update tbl_Cars set Car_Type = '" + DropDownList1.SelectedValue + "', Car_Transmission ='" + DropDownList2.SelectedValue + "', Car_Manufacturer ='" 
            + DropDownList3.SelectedItem.Text + "', Car_Model = '" + TextBox1.Text + "', Car_Description ='" + TextArea1.Text + "', Car_Fuel='" + DropDownList4.SelectedValue + 
            "', Car_Image ='" + imgpath + "', Car_RateDay ='" + TextBox2.Text + "', Car_Availability='" + Label2.Text + "', Car_Seats ='" + TextBox3.Text + 
            "'where Car_Model = '" + DropDownList5.SelectedItem.Text + "'";

            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            con.Close();
            Label1.Visible = true;
            Label1.Text = "Car edited successfully!";
            Label1.ForeColor = System.Drawing.Color.Green;

            /*"update tbl_Cars values ('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" +
            DropDownList3.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextArea1.Text + "','" + DropDownList4.SelectedValue + "','" + imgpath + "'" +
            ",'" + TextBox2.Text + "','" + Label2.Text + "','" + TextBox3.Text + "')";*/
        }
    }
}
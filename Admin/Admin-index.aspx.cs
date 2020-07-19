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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    //string a, b;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack) { 
        con.Open();

        SqlCommand com = new SqlCommand("select Id,Car_Manufacturer from tbl_Category1", con);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList3.DataSource = com.ExecuteReader();
        DropDownList3.DataTextField = "Car_Manufacturer";
        DropDownList3.DataValueField = "Id";
        DropDownList3.DataBind();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        /*a = Class1.GetRandomPassword(3).ToString();
        FileUpload1.SaveAs(Request.PhysicalApplicationPath + "./images/" + a +  FileUpload1.FileName.ToString());
        b = "images/" + a + FileUpload1.FileName.ToString();*/

        if(FileUpload1.HasFile)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("/Images/" + str));
            string imgpath = "/Images/" + str.ToString();
            
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into tbl_Cars values ('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" +
            DropDownList3.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextArea1.Text + "','" + DropDownList4.SelectedValue + "','" + imgpath + "','" + TextBox2.Text + "','" + Label2.Text + "','" + TextBox3.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Car stored successfully!";
            Label1.ForeColor = System.Drawing.Color.Green;


        }
    }
}
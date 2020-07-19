using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Services;



public partial class Book_Form : System.Web.UI.Page
{
    Boolean flag;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            con.Open();

            SqlCommand com = new SqlCommand("select Id,Car_Model from tbl_Cars", con);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource = com.ExecuteReader();
            DropDownList1.DataTextField = "Car_Model";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "(select-car)");
        }

    }

    protected void SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from tbl_Cars where Car_Model=@cmod";
        cmd.Parameters.AddWithValue("@cmod", DropDownList1.SelectedItem.Text);
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            TextBox8.Text = rd["Car_RateDay"].ToString();
        }
        con.Close();
        con.Open();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select * from tbl_Cars where Car_Model=@cmod and Car_Availability=@cavail";
        cmd2.Parameters.AddWithValue("@cmod", DropDownList1.SelectedItem.Text);
        cmd2.Parameters.AddWithValue("@cavail", "Available");
        cmd2.Connection = con;
        SqlDataReader rd2 = cmd2.ExecuteReader();
        if (!(rd2.Read()))
        {
            Label2.Visible = true;
        }
        else { Label2.Visible = false; }
        con.Close();

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (flag)
        {
            Calendar1.Visible = false;
            Calendar2.Visible = true;
        }
        else
        {
            Calendar1.Visible = true;
            TextBox2.Text = "";
            Label1.Visible = true;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
        Label1.Visible = false;

    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {

        TimeSpan ts;
        DateTime a, b;
        a = Calendar1.SelectedDate;
        b = Calendar2.SelectedDate;
        ts = b - a;
        string str1 = ts.ToString();
        int l1 = str1.Length;
        if (l1 == 10)
        {
            str1 = str1.Remove(1);
        }
        else
        {
            str1 = str1.Remove(2);
        }
        int ts2 = Int16.Parse(str1);
        if (ts2 < 0)
        {
            TextBox3.Text = " ";
            TextBox2.Text = " ";
            Label1.Visible = true;
            Calendar2.Visible = true;
        }
        if (ts2 == 0)
        {
            TextBox3.Text = "1";
            TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
            Label1.Visible = false;
            Calendar2.Visible = false;

        }
        if (ts2 >= 1)
        {
            ts2 = ts2 + 1;
            TextBox3.Text = ts2.ToString();
            TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
            Label1.Visible = false;

        }

    }

    protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        DateTime a;
        a = Calendar1.TodaysDate;
        if (Convert.ToDateTime(args.Value) >= a)
        {
            args.IsValid = true;
            flag = true;
        }
        else
        {
            args.IsValid = false;
            TextBox1.Text = "";
            Calendar1.Visible = true;
            Calendar2.Visible = false;


        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into tbl_User values ('" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "'" +
        ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "update tbl_Cars set Car_Availability=@cavail where Car_Model='" + DropDownList1.SelectedItem.Text + "'";
        cmd2.Parameters.AddWithValue("@cavail", "Not Available");
        cmd2.Connection = con;
        cmd2.ExecuteNonQuery();

        Label3.Visible = true;
        Label3.Text = "Booked successfully!";
        Label3.ForeColor = System.Drawing.Color.Green;

        con.Close();

        

    }
}
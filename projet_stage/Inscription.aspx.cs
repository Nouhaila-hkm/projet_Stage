using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace projet_stage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N2C5NOG\SQLEXPRESS;Initial Catalog=incidents;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "insert into authentification values('" + TextBox8.Text + "','" + TextBox9.Text + "')";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "insert into client values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox8.Text + "','" + TextBox7.Text + "') ";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('L'inscription est effectuée avec succès !!');</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Aide.aspx");
        }
    }
}
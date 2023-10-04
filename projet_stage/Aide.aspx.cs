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
    public partial class WebForm5 : System.Web.UI.Page
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
            cmd.CommandText = "select * from authentification where email ='" + TextBox1.Text + "' and motdepasse='" + TextBox2.Text + "'";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Declaration.aspx");
                Response.Write("<script LANGUAGE='JavaScript' >alert('bienvenue!!')</script>");
            }
            Label2.Text = ("Matricule ou Mot de passe incorrect!");
            con.Close();
        }
    }
}
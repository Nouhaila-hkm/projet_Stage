using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace projet_stage
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-N2C5NOG\SQLEXPRESS;Initial Catalog=incidents;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    con.Open();
            //    cmd.CommandText = "insert into declaration values ('" + RadioButtonList1.SelectedValue.ToString() + "','" + TextArea1.Value.ToString() + "','" + DropDownList2.SelectedValue + "','" + Calendar1.SelectedDate + "','" + DropDownList3.SelectedValue + "','" + TextBox2.Text + "')";
            //    cmd.Connection = con;
            //    cmd.ExecuteNonQuery();
            //    con.Close();
            //    Response.Write("<script>alert('Envoyer avec succès !!');</script>");
            //}
            //catch
            //{
            //    Response.Write("<script>alert('L'envoie est interrompue !!');</script>");
            //}
        }
    }
}
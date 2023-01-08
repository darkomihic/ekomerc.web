using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjekatDarkoMihicIT692020
{
    public partial class UserLogIn : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tblProfil where Username='" + tbxUsername2.Text.Trim() + "' and Password='"+ tbxPassword2.Text.Trim() + "' and Admin=0;", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Ulogovali ste se');</script>");
                        Session["ID"] = dr.GetValue(0).ToString();
                        Session["Username"] = dr.GetValue(1).ToString();
                        Session["Admin"] = "False";
                        Session["Info"] = dr.GetValue(8).ToString();
                        Session["TF"] = dr.GetValue(4).ToString();
                        Session["Banned"] = dr.GetValue(7).ToString();
                    }
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Sifra ili username nisu ispravno uneti');</script>");
                }

                

            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}
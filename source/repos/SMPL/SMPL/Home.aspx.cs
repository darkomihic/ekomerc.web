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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Session["Admin"] as string;

            if (string.IsNullOrEmpty(ID)!=true)
            {
                divLogin.Visible = false;
                divCarousel.Visible = true;
            }
            else
            {
                divLogin.Visible = true;
                divCarousel.Visible = false;

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string sessionUserID = Session["Admin"] as string;

            if (string.IsNullOrEmpty(sessionUserID))
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT * from tblProfil where Username='" + TextBox1.Text.Trim() + "' and Password='" + TextBox2.Text.Trim() + "' and Admin=0;", con);

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Response.Write("<script>alert('Ulogovali ste se');</script>");
                            Session["Username"] = dr.GetValue(1).ToString();
                            Session["Admin"] = "False";
                            Session["ID"] = dr.GetValue(0).ToString();
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
            else
            {
                Response.Write("<script>alert('Vec ste ulogovani');</script>");
                
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string sessionUserID = Session["Admin"] as string;
            if (string.IsNullOrEmpty(sessionUserID))
            {
                Response.Redirect("NapraviNalog.aspx");

            }
            else
            {
                Response.Write("<script>alert('Vec ste ulogovani');</script>");
            }
        }
    }
}
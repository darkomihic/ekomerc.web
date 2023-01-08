using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMPL
{
    public partial class ViewProfile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string profileID = Session["BuyProfilID"].ToString();
            string OglasID = Session["BuyOglasID"].ToString();
            string ID = Session["ID"].ToString();
            string Admin = Session["Admin"].ToString();


            if(Admin!="True")
            {
                btnBan.Visible = false;
                btnObrisi.Visible = false;
                btnTF.Visible = false;
            }


            if (string.IsNullOrEmpty(profileID) || string.IsNullOrEmpty(OglasID) || string.IsNullOrEmpty(ID))
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd1 = new SqlCommand("SELECT * FROM tblOglas where OglasID=" + Session["BuyOglasID"].ToString(), con);
                    SqlCommand cmd2 = new SqlCommand("SELECT * FROM tblProfil where ProfilID=" + Session["BuyProfilID"].ToString(), con);
                    SqlDataReader dr = cmd1.ExecuteReader();
                    if (dr.Read())
                    {
                        lblModel.Text = dr.GetValue(2).ToString();
                        lblBrend.Text = dr.GetValue(3).ToString();
                        lblVelicina.Text = dr.GetValue(4).ToString();
                        lblStanje.Text = dr.GetValue(5).ToString();
                        if (dr.GetValue(6).ToString() == "True")
                        {
                            lblVerifikovano.Text = "Da";
                            lblVerifikacija.Text = "1000rsd za verifikaciju";
                        }
                        lblCena.Text = dr.GetValue(8).ToString();
                        Image1.ImageUrl = dr.GetValue(7).ToString();
                        dr.Close();
                    }

                    SqlDataReader dr2 = cmd2.ExecuteReader();
                    if (dr2.Read())
                    {
                        lblUsername.Text = dr2.GetValue(1).ToString();
                        lblEMail.Text = dr2.GetValue(3).ToString();
                        lblTrustFactor.Text = dr2.GetValue(4).ToString();
                        lblInfo.Text = dr2.GetValue(8).ToString();
                        lblAdmin.Text = dr2.GetValue(6).ToString();
                        dr2.Close();
                    }
                }

                catch
                {
                    throw;
                }
            }
            
            
        }

        protected void btnPoruci_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
               


                SqlCommand cmd1 = new SqlCommand("SELECT TrustFactor FROM tblProfil WHERE ProfilID=" + Session["BuyProfilID"].ToString(), con);
                SqlDataReader dr = cmd1.ExecuteReader();
                double trustFactor=0;
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string TF = dr.GetValue(0).ToString();
                        trustFactor = Convert.ToDouble(TF);
                        if (trustFactor <= 5)
                        {
                            trustFactor = trustFactor + 0.2;
                        }



                    }
                        dr.Close();

                }
                else
                {
                    Response.Write("<script>alert('Doslo je do greske');</script>");
                }
                        SqlCommand cmd2 = new SqlCommand("UPDATE tblProfil SET TrustFactor=" + trustFactor.ToString() + " WHERE ProfilID=" + Session["BuyProfilID"].ToString(), con);
                        cmd2.ExecuteNonQuery();
                        SqlCommand cmd = new SqlCommand("DELETE FROM tblOglas WHERE OglasID=" + Session["BuyOglasID"].ToString(), con);






                        cmd.ExecuteNonQuery();

               
                        Response.Redirect("Home.aspx");



                con.Close();
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Došlo je do greške');</script>");
                throw;
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //obrisi
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }



                SqlCommand cmd = new SqlCommand("DELETE from tblOglas WHERE OglasID=" + Session["BuyOglasID"].ToString(), con);
                





                cmd.ExecuteNonQuery();


                Response.Write("<script>alert('Uspesno obrisan oglas');</script>");
                Response.Redirect("Market.aspx");



                con.Close();
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Došlo je do greške');</script>");
                throw;
            }

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            //obrisi i smanji tnf
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }



                SqlCommand cmd = new SqlCommand("DELETE from tblOglas WHERE OglasID=" + Session["BuyOglasID"].ToString(), con);






                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("SELECT TrustFactor FROM tblProfil WHERE ProfilID=" + Session["BuyProfilID"].ToString(), con);
                SqlDataReader dr = cmd1.ExecuteReader();
                double trustFactor = 0;
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string TF = dr.GetValue(0).ToString();
                        trustFactor = Convert.ToDouble(TF);
                        if (trustFactor <= 5)
                        {
                            trustFactor = trustFactor - 1;
                        }



                    }
                    dr.Close();

                }
                else
                {
                    Response.Write("<script>alert('Doslo je do greske');</script>");
                }
                SqlCommand cmd2 = new SqlCommand("UPDATE tblProfil SET TrustFactor=" + trustFactor.ToString() + " WHERE ProfilID=" + Session["BuyProfilID"].ToString(), con);
                cmd2.ExecuteNonQuery();


                Response.Write("<script>alert('Uspesno obrisan oglas i smanjen TF');</script>");
                Response.Redirect("Market.aspx");



                con.Close();
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Došlo je do greške');</script>");
                throw;
            }
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            //obrisi i ban
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }



                SqlCommand cmd = new SqlCommand("DELETE from tblOglas WHERE OglasID=" + Session["BuyOglasID"].ToString(), con);






                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("SELECT TrustFactor FROM tblProfil WHERE ProfilID=" + Session["BuyProfilID"].ToString(), con);
                SqlDataReader dr = cmd1.ExecuteReader();
                double trustFactor = 0;
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string TF = dr.GetValue(0).ToString();
                        trustFactor = Convert.ToDouble(TF);
                        if (trustFactor <= 5)
                        {
                            trustFactor = 0;
                        }



                    }
                    dr.Close();

                }
                else
                {
                    Response.Write("<script>alert('Doslo je do greske');</script>");
                }
                SqlCommand cmd2 = new SqlCommand("UPDATE tblProfil SET TrustFactor=" + trustFactor.ToString() + ", Banned=1 WHERE ProfilID=" + Session["BuyProfilID"].ToString(), con);
                cmd2.ExecuteNonQuery();


                Response.Write("<script>alert('Uspesno obrisan oglas i smanjen TF i Banovan korinsik');</script>");
                Response.Redirect("Market.aspx");


                con.Close();
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Došlo je do greške');</script>");
                throw;
            }
        
    }
    }
}
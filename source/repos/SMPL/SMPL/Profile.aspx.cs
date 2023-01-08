using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMPL
{
    public partial class Profile : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            tbxInfo.Width=300;
            tbxInfo.Height = 150;
            lblInfo.Text = Session["Info"].ToString();
            lblUsername.Text = Session["Username"].ToString();
            lblTF.Text = Session["TF"].ToString();
            if (Session["Admin"].ToString() != "True")
            {
                lblAdmin.Visible = false;
            }
            string ban = Session["Banned"] as string;
            lblBan.Style.Add("color", "red");
            if (ban=="False")
            {
                lblBan.Visible = false;
            }
            else
            {
                lblBan.Visible=true;
            }
        }

        protected void btnIzmeniUsername_Click(object sender, EventArgs e)
        {
            if (tbxIzmeniUsername.Text.Length < 6)
            {
                Response.Write("<script>alert('Username treba da je duzi od 6 karaktera');</script>");

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

                    SqlCommand cmd1 = new SqlCommand("SELECT * FROM tblProfil WHERE Username='" + tbxIzmeniUsername.Text.ToString()+"'", con);
                    SqlCommand cmd2 = new SqlCommand("UPDATE tblProfil SET Username='"+tbxIzmeniUsername.Text.ToString()+"' WHERE ProfilID=" + Session["ID"].ToString() ,con);
                    
                    SqlDataReader dr = cmd1.ExecuteReader();
                    if (dr.HasRows)
                    {
                        Response.Write("<script>alert('Postoji korisnik sa tim imenom');</script>");
                        
                    }
                    else
                    {
                        dr.Close();
                        cmd2.ExecuteNonQuery();
                        lblUsername.Text = tbxIzmeniUsername.Text.ToString();
                        Response.Write("<script>alert('Uspesno promenjen username');</script>");
                    }



                }
                catch (Exception)
                {
                    throw;
                }
            }
        } 
        protected void btnIzmeniPassword_Click(object sender, EventArgs e)
        {
            if (tbxIzmeniPassword.Text.Length < 6)
            {
                Response.Write("<script>alert('Sifra treba da je duza od 6 karaktera');</script>");

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

                    
                    SqlCommand cmd2 = new SqlCommand("UPDATE tblProfil SET Password='" + tbxIzmeniPassword.Text.ToString() + "' WHERE ProfilID=" + Session["ID"].ToString(), con);

                    
                    
                        
                        cmd2.ExecuteNonQuery();
                        Response.Write("<script>alert('Uspesno promenjena sifra');</script>");
                    



                }
                catch (Exception)
                {
                    throw;
                }
            }

        }

        protected void btnIzmeniInfo_Click(object sender, EventArgs e)
        {
            if (tbxIzmeniUsername.Text.Length > 49)
            {
                Response.Write("<script>alert('Info treba da je kraci od 50 karaktera');</script>");

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


                    SqlCommand cmd2 = new SqlCommand("UPDATE tblProfil SET Info='" + tbxInfo.Text.ToString() + "' WHERE ProfilID=" + Session["ID"].ToString(), con);




                    Session["Info"] = tbxInfo.Text.ToString();
                    lblInfo.Text = tbxInfo.Text.ToString();
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script>alert('Uspesno promenjen info');</script>");




                }
                catch (Exception)
                {
                    throw;
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string aaa = GridView1.SelectedValue.ToString();
                string bbb = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;

                Session["BuyOglasID"] = aaa;
                Session["BuyProfilID"] = bbb;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }



                SqlCommand cmd = new SqlCommand("DELETE from tblOglas WHERE OglasID=" + Session["BuyOglasID"].ToString(), con);






                cmd.ExecuteNonQuery();


                Response.Write("<script>alert('Uspesno obrisan oglas');</script>");



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
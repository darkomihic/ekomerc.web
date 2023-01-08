using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace ProjekatDarkoMihicIT692020
{
    public partial class NapraviNalog : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            if (tbxNewUsername.Text.Length > 5)
            {
                if(tbxNewEMail.Text.Length != 0)
                {
                    if(tbxNewPassword.Text.Length > 5)
                    {
                        if(tbxNewPassword.Text==tbxConfirmPassword.Text)
                        {
                            if(cbTerms.Checked!=false){

                                if (checkNewMember())
                                {

                                    Response.Write("<script>alert('Korisnik sa tim Username vec postoji');</script>");
                                }
                                else
                                {
                                    signUpNewMember();  
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('Morate prihvatiti Terms and Conditions');</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Šifre se ne poklapaju');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Šifra mora biti duža od 5 karaktera');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Molim vas unesite mejl');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Username mora biti duži od 5 karaktera');</script>");
            }
        }

        bool checkNewMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tblProfil where Username='" + tbxNewUsername.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

                con.Close();
                Response.Write("<script>alert('Uspesno ste napravili profil');</script>");
                Response.Redirect("UserLogIn.aspx");

            }
            catch (Exception ex)
            {

                throw;
            }
        }


        protected void signUpNewMember()
        {

            string ID = Session["ID"] as string;

            if (string.IsNullOrEmpty(ID))
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT into tblProfil(Username, Password, EMail, TrustFactor, Admin, Banned, Info) values(@username, @password, @EMail, @TrustFactor, @Admin, @Banned, @info)", con);

                    cmd.Parameters.AddWithValue("@username", tbxNewUsername.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", tbxNewPassword.Text.Trim());
                    cmd.Parameters.AddWithValue("@EMail", tbxNewEMail.Text.Trim());
                    cmd.Parameters.AddWithValue("@TrustFactor", 2.5);

                    cmd.Parameters.AddWithValue("@Admin", false);
                    cmd.Parameters.AddWithValue("@Banned", false);
                    cmd.Parameters.AddWithValue("@info", "Korisnik jos nije uneo info");

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Uspesno ste napravili profil');</script>");

                    Response.Redirect("UserLogIn.aspx");

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
    }
        
}   


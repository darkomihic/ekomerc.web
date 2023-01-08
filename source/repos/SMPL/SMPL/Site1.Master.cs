using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjekatDarkoMihicIT692020
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string sessionUserID = Session["Admin"] as string;
            try
            {
                string ID = Session["Banned"] as string;
                if (ID=="True")
                {
                    LinkButton1.Visible = false;
                    LinkButton3.Visible = true;
                    LinkButton7.Visible = false;
                    LinkButton6.Visible = false;
                    LinkButton11.Visible = true;
                    LinkButton12.Visible = true;
                    LinkButton4.Visible = true;
                    LinkButton8.Visible = true;
                    LinkButton9.Visible = true;
                    LinkButton10.Visible = true;
                    LinkButton2.Visible = false;
                    LinkButton99.Visible = true;
                }
                else
                {
                    if (string.IsNullOrEmpty(sessionUserID))
                    {
                        LinkButton1.Visible = true;
                        LinkButton3.Visible = false;
                        LinkButton7.Visible = true;
                        LinkButton6.Visible = true;
                        LinkButton11.Visible = true;
                        LinkButton12.Visible = true;
                        LinkButton4.Visible = true;
                        LinkButton8.Visible = true;
                        LinkButton9.Visible = true;
                        LinkButton10.Visible = true;
                        LinkButton2.Visible = false;
                        LinkButton99.Visible = false;
                    }
                    else if (Session["Admin"].Equals("True"))
                    {
                        LinkButton1.Visible = false;
                        LinkButton3.Visible = true;
                        LinkButton7.Visible = false;
                        LinkButton6.Visible = false;
                        LinkButton11.Visible = true;
                        LinkButton12.Visible = true;
                        LinkButton4.Visible = true;
                        LinkButton8.Visible = true;
                        LinkButton9.Visible = true;
                        LinkButton10.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton99.Visible = true;
                    }
                    else if (Session["Admin"].Equals("False"))
                    {
                        LinkButton1.Visible = false;
                        LinkButton3.Visible = true;
                        LinkButton7.Visible = false;
                        LinkButton6.Visible = false;
                        LinkButton11.Visible = true;
                        LinkButton12.Visible = true;
                        LinkButton4.Visible = true;
                        LinkButton8.Visible = true;
                        LinkButton9.Visible = true;
                        LinkButton10.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton99.Visible = true;
                    }
                }
             
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogIn.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NapraviOglas.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["Admin"] = "";
            Session["Info"] = "";
            Session["ID"] = "";
            Session["Username"] = "";
            Session["BuyProfilID"] = "";
            Session["BuyOglasID"] = "";
            Session["TF"] = "";
            Session["Banned"] = "";
            Response.Redirect("Home.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("NapraviNalog.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("TermsAndConditions.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.instagram.com/darko.mihic/");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("TermsAndConditions.aspx");
        }

        protected void LinkButton99_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjekatDarkoMihicIT692020
{
    public partial class Market : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            string sessionUserID = Session["Admin"] as string;
            try
            {
                if (string.IsNullOrEmpty(sessionUserID))
                {
                    GridView1.AutoGenerateSelectButton = false;
                    lblStart.Text = "Ulogujte se ili napravite nalog da biste poručili sa oglasa";
                }
               
            }
            catch (Exception ex)
            {

                throw;
            }

        }


        protected void btnPoruci_Click(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string aaa = GridView1.SelectedValue.ToString();
            string bbb = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;

            Session["BuyOglasID"] = aaa;
            Session["BuyProfilID"] = bbb;

            Response.Write("<script>alert('"+aaa+"  "+bbb+"');</script>");
            Response.Redirect("Narudzbina.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}
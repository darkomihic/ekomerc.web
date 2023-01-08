using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjekatDarkoMihicIT692020
{
    public partial class NapraviOglas : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void UploadFile(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/slikezaOglas/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            //Display the Picture in Image control.
           
        }

        protected void btnObjavi_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile == false)
            {
                Response.Write("<script>alert('Mora da sadrzi sliku oglas');</script>");
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
                    SqlCommand cmd = new SqlCommand("INSERT INTO tblOglas (ProfilID, Model, Brand, Size, Condition, Verified, Image, Price) values (@profilid, @model, @brand, @size, @condition, @verified, @image, @price)", con);

                    string filepath = "~/slikezaOglas/slika.jpg";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(Server.MapPath("slikezaOglas/" + filename));
                    filepath = "~/slikezaOglas/" + filename;


                    cmd.Parameters.AddWithValue("@profilid", Session["ID"].ToString());
                    cmd.Parameters.AddWithValue("@model", tbxModel.Text.Trim());
                    cmd.Parameters.AddWithValue("@brand", DDLBrend.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@size", ddlSize.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@condition", DDLStanje.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@verified", cbVerifikovano.Checked);
                    cmd.Parameters.AddWithValue("@image", filepath);
                    cmd.Parameters.AddWithValue("@price", tbxCena.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("Profile.aspx");





                }
                catch (Exception)
                {
                    Response.Write("<script>alert('Niste dobro uneli podatke');</script>");
                    throw;
                }
            }
        }
    }
}
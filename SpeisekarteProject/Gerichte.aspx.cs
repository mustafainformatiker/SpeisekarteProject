using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpeisekarteProject
{
    public partial class Gerichte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                Controller objController = new Controller("speisekartedb");

                objController.AddGericht("gerichte", new Gericht
                {
                    name = txtName.Text.ToString(),
                    kurzschreibung = txtKurzschreibung.Text.ToString(),
                    preis = txtPreis.Text.ToString(),
                    hauptkategorie = ddlHauptkategorie.SelectedValue.ToString(),
                    zeitgesteuert = ddlZeitgesteuert.SelectedValue.ToString(),
                    status = ddlStatus.SelectedValue.ToString(),
                    wartezeit = txtWartezeit.Text.ToString()

                });

                string script = "alert(\"Gericht wurde hinzugefügt!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);

                txtName.Text = string.Empty;
                txtKurzschreibung.Text = string.Empty;
                txtPreis.Text = string.Empty;
                ddlStatus.Text = string.Empty;
                txtWartezeit.Text = string.Empty;
            }
            catch (Exception)
            {
                throw;
            }
            
        }

    }
}
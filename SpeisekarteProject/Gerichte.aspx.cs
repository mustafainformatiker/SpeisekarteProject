using System;
using System.Collections.Generic;
using System.Linq;
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
            Controller objController = new Controller("speisekartedb");

            objController.AddGericht("gerichte", new Gericht { name = txtName.Text.ToString() ,
                                                                kurzschreibung = txtKurzschreibung.Text.ToString(),
                                                                preis = txtPreis.Text.ToString(),
                                                                hauptkategorie = txtHauptkategorie.Text.ToString(),
                                                                zeitgesteuert = txtZeitgesteuert.Text.ToString(),
                                                                status = txtStatus.Text.ToString(),
                                                                wartezeit = txtWartezeit.Text.ToString()

            }); 
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            Controller objController = new Controller("speisekartedb");

            var alleGerichte = objController.selectAlleGerichte<Gericht>("gerichte");
        }
    }
}
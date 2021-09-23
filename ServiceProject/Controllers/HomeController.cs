using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;

namespace ServiceProject.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View();
        }

        public IHttpActionResult showme()
        {
            List<string> lsttest = new List<string>();

            lsttest.Add("Mustafa");
            lsttest.Add("Alhelo");

            return (IHttpActionResult)lsttest;
        }
    }
}

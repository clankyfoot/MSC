using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MinneapolisSkiClub.Controllers
{
    public class MSCController : Controller
    {
        /// <summary>
        /// Home Page
        /// </summary>
        /// <returns></returns>
        public ViewResult Index()
        {
            return View();
        }
    }
}

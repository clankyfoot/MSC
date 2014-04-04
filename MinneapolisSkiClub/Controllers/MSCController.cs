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
        /// <summary>
        /// Schedule Page
        /// </summary>
        /// <returns></returns>
        public ViewResult Schedule()
        {
            return View();
        }
        /// <summary>
        /// Getting started Page
        /// </summary>
        /// <returns></returns>
        public ViewResult GettingStarted()
        {
            return View();
        }
        /// <summary>
        /// Contact us page
        /// </summary>
        /// <returns></returns>
        public ViewResult Contact()
        {
            return View();
        }
        /// <summary>
        /// About us Page
        /// </summary>
        /// <returns></returns>
        public ViewResult About()
        {
            return View();
        }
        /// <summary>
        /// Frequently asked questions
        /// </summary>
        /// <returns></returns>
        public ViewResult Faq()
        {
            return View();
        }

    }
}

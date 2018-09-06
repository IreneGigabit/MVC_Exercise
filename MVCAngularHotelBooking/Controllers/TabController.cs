﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCAngularHotelBooking.Controllers
{
    public class TabController : Controller
    {
        // GET: Tab
        public ActionResult Index() {
            return View();
        }

        [HttpGet]
        public ActionResult getCust(string CustArea, int CustSeq) {

            List<custz> cust = new List<custz>();

            using (HotelDBEntities db = new HotelDBEntities()) {
                cust = db.custzs.Where(a => a.cust_area == CustArea && a.cust_seq == CustSeq).ToList();

            }

            return new JsonResult { Data = cust, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }
    }
}
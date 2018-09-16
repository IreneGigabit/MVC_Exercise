using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

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

            List<vcustlist> vcust = new List<vcustlist>();

            using (HotelDBEntities db = new HotelDBEntities()) {
                vcust = db.vcustlists.Where(a => a.cust_area == CustArea && a.cust_seq == CustSeq).ToList();
                //foreach (var x in cust) {
                //    x.con_term = x.con_term.Value.ToLocalTime();
                //}
            }

            //return Json(cust, JsonRequestBehavior.AllowGet);
            return new JsonResult { Data = vcust, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        [HttpGet]
        public ActionResult getCountryOpt(string SQL) {
            using (HotelDBEntities db = new HotelDBEntities()) {
                var sqlData = db.countries.SqlQuery(SQL).ToList();
                return new JsonResult { Data = sqlData, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            }

        }

        [HttpGet]
        public ActionResult getSQLData(string SQL) {
            string connStr = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (DBHelper conn = new DBHelper(connStr)) {
                DataTable dt = new DataTable();
                conn.DataTable(SQL, dt);
                return Content(JsonConvert.SerializeObject(dt, Formatting.Indented), "application/json");
            }

        }
    }
}
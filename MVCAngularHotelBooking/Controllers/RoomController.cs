using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json.Linq;

namespace MVCAngularHotelBooking.Controllers
{
    public class RoomController : Controller
    {
        // GET: Room
        public ActionResult Index()
        {
            return View();
        }

        // To select Hotel Details
        [HttpGet]
        public ActionResult getHotelRooms(string RoomNo) {

            List<HotelMaster> room = new List<HotelMaster>();

            using (HotelDBEntities db = new HotelDBEntities()) {
                if (RoomNo != "") {
                    room = db.HotelMasters.Where(a => a.RoomNo == RoomNo).ToList().Select(z => new HotelMaster
                    {
                        RoomID = z.RoomID,
                        RoomNo = z.RoomNo,
                        RoomType = z.RoomType,
                        Prize = z.Prize.ToUnicode(),
                        Flag = z.Flag
                    }).ToList();
                } else {
                    room = db.HotelMasters.ToList().Select(z => new HotelMaster
                    {
                        RoomID = z.RoomID,
                        RoomNo = z.RoomNo,
                        RoomType = z.RoomType,
                        Prize = z.Prize.ToUnicode(),
                        Flag = z.Flag
                    }).ToList();
                }
            }

            return new JsonResult { Data = room, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        [HttpPost]
        public ActionResult modifyHotelRoom(int RoomID, string RoomNo, string RoomType, string Prize) {
            string msg = "";
            using (HotelDBEntities db = new HotelDBEntities()) {
                var r = db.HotelMasters.Where(a => a.RoomNo == RoomNo && a.RoomID != RoomID).FirstOrDefault();
                if (r != null) {
                    msg = "Error - 已有此房號!!";
                } else {
                    if (RoomID == 0) {
                        //Insert
                        var Room = new HotelMaster();
                        Room.RoomNo = RoomNo;
                        Room.RoomType = RoomType;
                        Room.Prize = Prize.ToBig5();
                        Room.Flag = "A";
                        db.HotelMasters.Add(Room);
                        msg = "新增完成!!";
                    } else {
                        //Update
                        var v = db.HotelMasters.Where(a => a.RoomID == RoomID).FirstOrDefault();
                        if (v != null) {
                            v.RoomNo = RoomNo;
                            v.RoomType = RoomType;
                            v.Prize = Prize.ToBig5();
                            v.Flag = "U";
                            msg = "更新完成!!";
                        } else {
                            msg = "Error - 查無此ID!!";
                        }
                    }
                    db.SaveChanges();
                }
            }

            return Json(new string[] { msg }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult deleteHotelRoom(int RoomID) {
            //string json = new System.IO.StreamReader(Request.InputStream).ReadToEnd();
            //JObject jObject = JObject.Parse(json);
            //int RoomID = Convert.ToInt32(jObject["RoomID"] ?? 0);

            string msg = "";
            using (HotelDBEntities db = new HotelDBEntities()) {
                HotelMaster room = db.HotelMasters.Where(a => a.RoomID == RoomID).FirstOrDefault();

                if (room != null) {
                    room.Flag = "D";
                    msg = "刪除完成!!";
                    db.SaveChanges();
                } else {
                    msg = "Error - 查無此ID!!";
                }
            }

            //return Content(msg, "application/json");
            //return new JsonResult { Data = new string[] { msg }, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            return Json(new string[] { msg }, JsonRequestBehavior.AllowGet);
        }

    }
}
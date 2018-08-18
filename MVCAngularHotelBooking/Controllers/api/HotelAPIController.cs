using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Newtonsoft.Json.Linq;

namespace MVCAngularHotelBooking.Controllers
{
    public class HotelAPIController : ApiController
    {
        /*
        Get 用於請求數據。 (Select)
        Post 用於建立數據。 (Insert)
        Put 用於更新數據。
        Delete 用於刪除數據。
        */
        HotelDBEntities db = new HotelDBEntities();

        // To select Hotel Details
        [HttpGet]
        public IEnumerable<USP_HotelMaster_Select_Result> getHotelRooms(string RoomNo) {
            if (RoomNo == null)
                RoomNo = "";
            return db.USP_HotelMaster_Select(RoomNo).AsEnumerable();
        }

        // To insert Hotel Room Details
        [HttpGet]
        public IEnumerable<string> insertHotelRoom(string RoomID, string RoomNo, string RoomType, string Prize) {
            if (RoomNo == null)
                RoomNo = "";

            if (RoomType == null)
                RoomType = "";

            if (Prize == null)
                Prize = "";

            return db.USP_Hotel_Insert(Convert.ToInt32(RoomID), RoomNo, RoomType, Prize).AsEnumerable();
        }

        [HttpPost]
        public IEnumerable<string> insertHotelRoom(JObject jObject) {
            int RoomID = Convert.ToInt32(jObject["RoomID"] ?? 0);
            string RoomNo = (jObject["RoomNo"] ?? "").ToString();
            string RoomType = (jObject["RoomType"] ?? "").ToString();
            string Prize = (jObject["Prize"] ?? "").ToString();

            return db.USP_Hotel_Insert(RoomID, RoomNo, RoomType, Prize).AsEnumerable();
        }

        // to Search all Room Booking Details
        [HttpGet]
        public IEnumerable<USP_RoomBooking_SelectALL_Result> getRoomBookingDetails(string RoomID) {
            if (RoomID == null)
                RoomID = "";

            return db.USP_RoomBooking_SelectALL(RoomID).AsEnumerable();
        }


        // to Search all Room Dashbard Details
        [HttpGet]
        public IEnumerable<USP_HotelStatus_Select_Result> getRoomDashboardDetails(string RoomNo) {
            if (RoomNo == null)
                RoomNo = "";

            return db.USP_HotelStatus_Select(RoomNo).AsEnumerable();
        }

        // To Insert /Update Room Booking
        [HttpGet]
        public IEnumerable<string> insertRoomBooking(string BookingID, string RoomID, string BookedDateFR, string BookedDateTO, string BookingStatus, string PaymentStatus, string AdvancePayed, string TotalAmountPayed) {
            if (BookingID == null)
                BookingID = "0";

            if (RoomID == null)
                RoomID = "0";

            if (BookedDateFR == null) {
                BookedDateFR = "";
            } else {
                BookedDateFR = BookedDateFR.Substring(0, 10);
            }

            if (BookedDateTO == null) {
                BookedDateTO = "";
            } else {
                BookedDateTO = BookedDateTO.Substring(0, 10);
            }

            if (BookingStatus == null)
                BookingStatus = "";

            if (PaymentStatus == null)
                PaymentStatus = "";

            if (AdvancePayed == null)
                AdvancePayed = "";

            if (TotalAmountPayed == null)
                TotalAmountPayed = "";

            return db.USP_RoomBooking_Insert(BookingID, RoomID, BookedDateFR, BookedDateTO, BookingStatus, PaymentStatus, AdvancePayed, TotalAmountPayed).AsEnumerable();

        }
        // To Delete Music Details
        [HttpGet]
        public IEnumerable<string> deleteRoomBooking(string BookingID) {
            if (BookingID == null)
                BookingID = "0";

            return db.USP_RoomBooking_Delete(BookingID).AsEnumerable();

        }
    }
}

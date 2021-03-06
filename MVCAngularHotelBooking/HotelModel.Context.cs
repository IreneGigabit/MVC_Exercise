﻿//------------------------------------------------------------------------------
// <auto-generated>
//     這個程式碼是由範本產生。
//
//     對這個檔案進行手動變更可能導致您的應用程式產生未預期的行為。
//     如果重新產生程式碼，將會覆寫對這個檔案的手動變更。
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVCAngularHotelBooking
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class HotelDBEntities : DbContext
    {
        public HotelDBEntities()
            : base("name=HotelDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<HotelMaster> HotelMasters { get; set; }
        public virtual DbSet<RoomBooking> RoomBookings { get; set; }
        public virtual DbSet<ValueSet> ValueSets { get; set; }
        public virtual DbSet<ValueSetKind> ValueSetKinds { get; set; }
        public virtual DbSet<apcust> apcusts { get; set; }
        public virtual DbSet<custz> custzs { get; set; }
        public virtual DbSet<country> countries { get; set; }
        public virtual DbSet<Cust_code> Cust_code { get; set; }
        public virtual DbSet<custz_att> custz_att { get; set; }
        public virtual DbSet<scode> scodes { get; set; }
        public virtual DbSet<vcustlist> vcustlists { get; set; }
    
        public virtual ObjectResult<USP_HotelStatus_Select_Result> USP_HotelStatus_Select(string roomNo)
        {
            var roomNoParameter = roomNo != null ?
                new ObjectParameter("RoomNo", roomNo) :
                new ObjectParameter("RoomNo", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<USP_HotelStatus_Select_Result>("USP_HotelStatus_Select", roomNoParameter);
        }
    
        public virtual ObjectResult<string> USP_RoomBooking_Delete(string bookingID)
        {
            var bookingIDParameter = bookingID != null ?
                new ObjectParameter("BookingID", bookingID) :
                new ObjectParameter("BookingID", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("USP_RoomBooking_Delete", bookingIDParameter);
        }
    
        public virtual ObjectResult<string> USP_RoomBooking_Insert(string bookingID, string roomID, string bookedDateFR, string bookedDateTO, string bookingStatus, string paymentStatus, string advancePayed, string totalAmountPayed)
        {
            var bookingIDParameter = bookingID != null ?
                new ObjectParameter("BookingID", bookingID) :
                new ObjectParameter("BookingID", typeof(string));
    
            var roomIDParameter = roomID != null ?
                new ObjectParameter("RoomID", roomID) :
                new ObjectParameter("RoomID", typeof(string));
    
            var bookedDateFRParameter = bookedDateFR != null ?
                new ObjectParameter("BookedDateFR", bookedDateFR) :
                new ObjectParameter("BookedDateFR", typeof(string));
    
            var bookedDateTOParameter = bookedDateTO != null ?
                new ObjectParameter("BookedDateTO", bookedDateTO) :
                new ObjectParameter("BookedDateTO", typeof(string));
    
            var bookingStatusParameter = bookingStatus != null ?
                new ObjectParameter("BookingStatus", bookingStatus) :
                new ObjectParameter("BookingStatus", typeof(string));
    
            var paymentStatusParameter = paymentStatus != null ?
                new ObjectParameter("PaymentStatus", paymentStatus) :
                new ObjectParameter("PaymentStatus", typeof(string));
    
            var advancePayedParameter = advancePayed != null ?
                new ObjectParameter("AdvancePayed", advancePayed) :
                new ObjectParameter("AdvancePayed", typeof(string));
    
            var totalAmountPayedParameter = totalAmountPayed != null ?
                new ObjectParameter("TotalAmountPayed", totalAmountPayed) :
                new ObjectParameter("TotalAmountPayed", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("USP_RoomBooking_Insert", bookingIDParameter, roomIDParameter, bookedDateFRParameter, bookedDateTOParameter, bookingStatusParameter, paymentStatusParameter, advancePayedParameter, totalAmountPayedParameter);
        }
    
        public virtual ObjectResult<USP_RoomBooking_SelectALL_Result> USP_RoomBooking_SelectALL(string roomID)
        {
            var roomIDParameter = roomID != null ?
                new ObjectParameter("RoomID", roomID) :
                new ObjectParameter("RoomID", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<USP_RoomBooking_SelectALL_Result>("USP_RoomBooking_SelectALL", roomIDParameter);
        }
    
        public virtual ObjectResult<string> USP_Hotel_Delete(Nullable<int> roomID)
        {
            var roomIDParameter = roomID.HasValue ?
                new ObjectParameter("RoomID", roomID) :
                new ObjectParameter("RoomID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("USP_Hotel_Delete", roomIDParameter);
        }
    
        public virtual ObjectResult<string> USP_Hotel_Insert(Nullable<int> roomID, string roomNo, string roomType, string prize)
        {
            var roomIDParameter = roomID.HasValue ?
                new ObjectParameter("RoomID", roomID) :
                new ObjectParameter("RoomID", typeof(int));
    
            var roomNoParameter = roomNo != null ?
                new ObjectParameter("RoomNo", roomNo) :
                new ObjectParameter("RoomNo", typeof(string));
    
            var roomTypeParameter = roomType != null ?
                new ObjectParameter("RoomType", roomType) :
                new ObjectParameter("RoomType", typeof(string));
    
            var prizeParameter = prize != null ?
                new ObjectParameter("Prize", prize) :
                new ObjectParameter("Prize", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("USP_Hotel_Insert", roomIDParameter, roomNoParameter, roomTypeParameter, prizeParameter);
        }
    
        public virtual ObjectResult<USP_HotelMaster_Select_Result> USP_HotelMaster_Select(string roomNo)
        {
            var roomNoParameter = roomNo != null ?
                new ObjectParameter("RoomNo", roomNo) :
                new ObjectParameter("RoomNo", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<USP_HotelMaster_Select_Result>("USP_HotelMaster_Select", roomNoParameter);
        }
    }
}

--新建數據庫默認排序規則為：SQL_Latin1_General_CP1_CI_AS，如果使用中文會出現亂碼，顯示問號

--修改數據庫為單用戶模式
alter database [C:\USERS\ICAT\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\MVC_EXERCISE\MVCANGULARHOTELBOOKING\APP_DATA\HOTELDB.MDF] set single_user with rollback  immediate ;
go

--修改排序規則（這裡為中文--拼音--不區分大小寫）
alter database [C:\USERS\ICAT\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\MVC_EXERCISE\MVCANGULARHOTELBOOKING\APP_DATA\HOTELDB.MDF] collate Chinese_Taiwan_Stroke_CI_AS ;
go

--重新設置為多用戶模式
alter database [C:\USERS\ICAT\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\MVC_EXERCISE\MVCANGULARHOTELBOOKING\APP_DATA\HOTELDB.MDF]  set multi_user;

--新建數據庫默認排序規則為：SQL_Latin1_General_CP1_CI_AS，如果使用中文會出現亂碼，顯示問號

-- 目前資料庫定序（DB名稱為MAS_Mobile_OpenGIP）
SELECT DATABASEPROPERTYEX ('C:\USERS\ITOY\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\MVC_EXERCISE\MVCANGULARHOTELBOOKING\APP_DATA\HOTELDB.MDF' ,'Collation' )


--修改數據庫為單用戶模式
alter database [C:\USERS\ICAT\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\MVC_EXERCISE\MVCANGULARHOTELBOOKING\APP_DATA\HOTELDB.MDF] set single_user with rollback  immediate ;
go

--修改排序規則（這裡為中文--拼音--不區分大小寫）
alter database [C:\USERS\ICAT\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\MVC_EXERCISE\MVCANGULARHOTELBOOKING\APP_DATA\HOTELDB.MDF] collate Chinese_Taiwan_Stroke_CI_AS ;
go

--重新設置為多用戶模式
alter database [C:\USERS\ICAT\DOCUMENTS\VISUAL STUDIO 2015\PROJECTS\MVC_EXERCISE\MVCANGULARHOTELBOOKING\APP_DATA\HOTELDB.MDF]  set multi_user;


--產生欄位定序修改的語法(這邊以SQL_Latin1_General_CP1_CI_AS修改為Chinese_Taiwan_Stroke_CI_AS為例)
SELECT * from (
    SELECT ('ALTER TABLE ' + quotename(TABLE_NAME) +
    ' ALTER COLUMN ' + quotename(COLUMN_NAME) + ' ' +       quotename(DATA_TYPE) +
    CASE WHEN CHARACTER_MAXIMUM_LENGTH = -1 then '(max)'
    WHEN DATA_TYPE in ('text','ntext') then ''
    WHEN CHARACTER_MAXIMUM_LENGTH IS NOT NULL 
    THEN '('+(CONVERT(VARCHAR,CHARACTER_MAXIMUM_LENGTH)+')' )
    ELSE isnull(CONVERT(VARCHAR,CHARACTER_MAXIMUM_LENGTH),' ') END 
    +'COLLATE Chinese_Taiwan_Stroke_CI_AS ' + CASE IS_NULLABLE
    WHEN 'YES' THEN 'NULL'
    ELSE 'NOT NULL'
    END) AS script
    from INFORMATION_SCHEMA.COLUMNS
    WHERE collation_name='SQL_Latin1_General_CP1_CI_AS'
) as Test
WHERE script != 'NULL'

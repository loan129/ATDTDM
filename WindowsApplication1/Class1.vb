﻿Imports System.Data.SqlClient
Imports System.Data
Public Class Class1
    Public Function Loadkhachang() As DataSet
        Dim chuoiketnoi As String = "workstation id=chuongtrinhVB3.mssql.somee.com;packet size=4096;user id=truyenshani_SQLLogin_1;pwd=abc123456789;data source=chuongtrinhVB3.mssql.somee.com;persist security info=False;initial catalog=chuongtrinhVB3"
        Dim conn As SqlConnection = New SqlConnection(chuoiketnoi)
        Dim LoadKH As New SqlDataAdapter("select makh as 'Mã KH' ,hoten as 'Tên Khách Hàng', diachi as 'Địa chỉ', sodt as 'SĐT' from KHACHANG", conn)
        Dim db As New DataSet
        conn.Open()
        LoadKH.Fill(db)
        conn.Close()
        Return db
    End Function
    Public Function Loadsanpham() As DataSet
        Dim chuoiketnoi As String = "workstation id=chuongtrinhVB3.mssql.somee.com;packet size=4096;user id=truyenshani_SQLLogin_1;pwd=abc123456789;data source=chuongtrinhVB3.mssql.somee.com;persist security info=False;initial catalog=chuongtrinhVB3"
        Dim conn As SqlConnection = New SqlConnection(chuoiketnoi)
        Dim LoadSP As New SqlDataAdapter("select SANPHAM.masp as 'Mã sản phẩm',SANPHAM.tensp as 'Tên sản phẩm', SANPHAM.maloai as 'Mã Loại', LOAISANPHAM.tenloai as 'Tên Loại', gia as 'Gía Tiền' from SANPHAM inner join LOAISANPHAM on SANPHAM.MASP = LOAISANPHAM.maloai", conn)
        Dim db As New DataSet
        conn.Open()
        LoadSP.Fill(db)
        conn.Close()
        Return db
    End Function
End Class
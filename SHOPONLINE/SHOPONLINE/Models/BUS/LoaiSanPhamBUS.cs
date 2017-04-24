using MiniShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SHOPONLINE.Models.BUS
{
    public class LoaiSanPhamBUS
    {
        public static IEnumerable<LOAISANPHAM> DanhSach()
        {
            var db = new MiniShopConnectionDB();
            return db.Query<LOAISANPHAM>("select * from LOAISANPHAM where TinhTrang = 0");
        }
        public static IEnumerable<SANPHAM> ChiTiet(String id)
        {
            var db = new MiniShopConnectionDB();
            return db.Query<SANPHAM>("select * from SANPHAM where MaLoaiSanPham = '"+id+"'");
        }
        //--------------------------------------------------
        public static IEnumerable<LOAISANPHAM> LoaiSanPhamAdmin()
        {
            var db = new MiniShopConnectionDB();
            return db.Query<LOAISANPHAM>("select * from LOAISANPHAM");
        }
        public static void InsertLSP(LOAISANPHAM lsp)
        {
            var db = new MiniShopConnectionDB();
            db.Insert(lsp); 
        }
        public static LOAISANPHAM ChiTietLoaiSanPhamAdmin(String id)
        {
            var db = new MiniShopConnectionDB();
            return db.SingleOrDefault<LOAISANPHAM>("select * from LOAISANPHAM where MaLoaiSanPham = '" + id + "'");
        }
        public static void EditLoaiSanPham(String id,LOAISANPHAM lsp)
        {
            var db = new MiniShopConnectionDB();
            db.Update(lsp, id);
        }
    }

}
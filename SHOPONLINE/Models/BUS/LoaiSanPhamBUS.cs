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
    }
}
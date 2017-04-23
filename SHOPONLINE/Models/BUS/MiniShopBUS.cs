using MiniShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SHOPONLINE.Models.BUS
{
    public class MiniShopBUS
    {
        public static IEnumerable<SANPHAM> DanhSach()
            {
                var db = new MiniShopConnectionDB();
                return db.Query<SANPHAM>("select * from SANPHAM where TinhTrang = 0");
            }
        public static SANPHAM ChiTiet(String a)
        {
            var db = new MiniShopConnectionDB();
            return db.SingleOrDefault<SANPHAM>("select * from SANPHAM where MaSanPham = @0",a);
        }
    }
}
using MiniShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SHOPONLINE.Models.BUS
{
    public class NhaSanXuatBUS
    {
        public static IEnumerable<NHASANXUAT> DanhSach()
        {
            var db = new MiniShopConnectionDB();
            return db.Query<NHASANXUAT>("select * from NHASANXUAT where TinhTrang = 0");
        }
        public static IEnumerable<SANPHAM> ChiTiet(String id)
        {
            var db = new MiniShopConnectionDB();
            return db.Query<SANPHAM>("select * from SANPHAM where MaNhaSanXuat = '"+ id + "'");

        }
    }
}
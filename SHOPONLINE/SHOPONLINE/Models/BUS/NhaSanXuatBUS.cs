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
            return db.Query<SANPHAM>("select * from SANPHAM where MaNhaSanXuat = '" + id + "'");

        }
        //----------------------------------------------------------

        public static void ThemNSX(NHASANXUAT nsx)
        {
            var db = new MiniShopConnectionDB();
            db.Insert(nsx);

        }
        public static IEnumerable<NHASANXUAT> DanhSachAdmin()
        {
            var db = new MiniShopConnectionDB();
            return db.Query<NHASANXUAT>("select * from NHASANXUAT ");
        }
        public static NHASANXUAT ChiTietAdmin(String id)
        {
            var db = new MiniShopConnectionDB();
            return db.SingleOrDefault<NHASANXUAT>("select * from NHASANXUAT where MaNhaSanXuat = '" + id + "'");
        }
        public static void UpdateNSX(String id,NHASANXUAT nsx)
        {
            var db = new MiniShopConnectionDB();
            db.Update(nsx, id);
        }
    }
}
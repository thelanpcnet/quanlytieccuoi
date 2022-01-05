using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using QuanLyTiecCuoi.Model;
namespace QuanLyTiecCuoi.ViewModel
{
    class LoginViewModel:BaseViewModel
    {
        private string _Username;
        public string Username { get => _Username; set { OnPropertyChanged(); _Username = value; OnPropertyChanged(); } }
        private string _Password;
        public string Password { get => _Password; set { _Password = value; OnPropertyChanged(); } }

        public static string TenNguoiDung;

        public static bool XemSanh;
        public static bool ThayDoiSanh;

        public static bool XemTiec;
        public static bool ThayDoiTiec;

        public static bool XemHoaDon;
        public static bool ThayDoiHoaDon;

        public static bool XemDoanhThu;
        public static bool ThayDoiDoanhThu;

        public static bool XemDichVu;
        public static bool ThayDoiDichVu;

        public static bool XemMonAn;
        public static bool ThayDoiMonAn;

        public static bool XemQuiDinh;
        public static bool ThayDoiQuiDinh;

        public static bool XemPhanQuyen;
        public static bool ThayDoiPhanQuyen;

        public ICommand LoginCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        private bool Enable()
        {
            if (String.IsNullOrEmpty(Username) || String.IsNullOrEmpty(Password))
                return false;
            return true;
        }
        public LoginViewModel()
        {
            Username = Properties.Settings.Default.TenDangNhap;
            Password = Properties.Settings.Default.MatKhau;
            LoginCommand = new RelayCommand<Window>((p) => { return Enable(); }, (p) => {Login(p); });
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) => 
            {
                Password = p.Password;
            });
        }

        void Login(Window p)
        {
            if (p == null)
                return;
            
            var accCount = DataProvider.Ins.DataBase.NGUOIDUNGs.Where(x => x.Username == Username && x.Password == Password).Count();
            if (accCount > 0)
            {
                TenNguoiDung = DataProvider.Ins.DataBase.NGUOIDUNGs.Where(x => x.Username == Username && x.Password == Password).SingleOrDefault().TenNguoiDung;
                XemSanh = XemTiec = XemHoaDon = XemDichVu = XemPhanQuyen = XemDoanhThu = XemMonAn = XemQuiDinh = false;
                ThayDoiSanh = ThayDoiTiec = ThayDoiHoaDon = ThayDoiDichVu = ThayDoiPhanQuyen = ThayDoiDoanhThu = ThayDoiMonAn = ThayDoiQuiDinh = false;
                NGUOIDUNG user = DataProvider.Ins.DataBase.NGUOIDUNGs.Where(x => x.Username == Username).SingleOrDefault();
                ObservableCollection<PHANQUYEN> ListPhanQuyen = new ObservableCollection<PHANQUYEN>(DataProvider.Ins.DataBase.PHANQUYENs.Where(x => x.MaNhomNguoiDung == user.MaNhomNguoiDung));
                foreach (PHANQUYEN item in ListPhanQuyen)
                {
                    if (item.CHUCNANG.TenChucNang == "Xem Sảnh")
                    {
                        XemSanh = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Xem Tiệc")
                    {
                        XemTiec = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Xem Hóa Đơn")
                    {
                        XemHoaDon = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Xem Doanh Thu")
                    {
                        XemDoanhThu = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Xem Dịch Vụ")
                    {
                        XemDichVu = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Xem Món Ăn")
                    {
                        XemMonAn = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Xem Qui Định")
                    {
                        XemQuiDinh = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Xem Phân Quyền")
                    {
                        XemPhanQuyen = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Thay Đổi Sảnh")
                    {
                        ThayDoiSanh = XemSanh = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Thay Đổi Tiệc")
                    {
                        ThayDoiTiec = XemTiec = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Thay Đổi Hóa Đơn")
                    {
                        ThayDoiHoaDon = XemHoaDon = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Thay Đổi Doanh Thu")
                    {
                        ThayDoiDoanhThu = XemDoanhThu = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Thay Đổi Dịch Vụ")
                    {
                        ThayDoiDichVu = XemDichVu = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Thay Đổi Món Ăn")
                    {
                        ThayDoiMonAn = XemMonAn = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Thay Đổi Qui Định")
                    {
                        ThayDoiQuiDinh = XemQuiDinh = true;
                    }
                    if (item.CHUCNANG.TenChucNang == "Thay Đổi Phân Quyền")
                    {
                        ThayDoiPhanQuyen = XemPhanQuyen = true;
                    }

                }
                MainWindow wd = new MainWindow();
                p.Close();
                wd.ShowDialog();
            }
            else
            {
                MessageBox.Show("Sai tài khoản hoặc mật khẩu!");
            }
        }
    }
}

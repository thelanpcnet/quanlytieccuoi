using QuanLyTiecCuoi.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Navigation;

namespace QuanLyTiecCuoi.ViewModel
{
    class MainViewModel:BaseViewModel
    {

        public static bool IsReload = false;
        private bool _XemSanh = false;

        private bool _XemTiec = false;

        private bool _XemHoaDon = false;

        private bool _XemDoanhThu = false;

        private bool _XemDichVu = false;

        private bool _XemMonAn = false;

        private bool _XemQuiDinh = false;

        private bool _XemPhanQuyen = false;

        public bool XemSanh { get => _XemSanh; set { _XemSanh = value; OnPropertyChanged(); } }

        public bool XemTiec { get => _XemTiec; set { _XemTiec = value; OnPropertyChanged(); } }

        public bool XemHoaDon { get => _XemHoaDon; set { _XemHoaDon = value; OnPropertyChanged(); } }

        public bool XemDoanhThu { get => _XemDoanhThu; set { _XemDoanhThu = value; OnPropertyChanged(); } }

        public bool XemDichVu { get => _XemDichVu; set { _XemDichVu = value; OnPropertyChanged(); } }

        public bool XemMonAn { get => _XemMonAn; set { _XemMonAn = value; OnPropertyChanged(); } }

        public bool XemQuiDinh { get => _XemQuiDinh; set { _XemQuiDinh = value; OnPropertyChanged(); } }

        public bool XemPhanQuyen { get => _XemPhanQuyen; set { _XemPhanQuyen = value; OnPropertyChanged(); } }

        public ICommand LogoutCommand { get; set; }
        public MainViewModel()
        {
            XemSanh = LoginViewModel.XemSanh;
            XemTiec = LoginViewModel.XemTiec;
            XemHoaDon = LoginViewModel.XemHoaDon;
            XemDoanhThu = LoginViewModel.XemDoanhThu;
            XemDichVu = LoginViewModel.XemDichVu;
            XemMonAn = LoginViewModel.XemMonAn;
            XemQuiDinh = LoginViewModel.XemQuiDinh;
            XemPhanQuyen = LoginViewModel.XemPhanQuyen;

            LogoutCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                if(p != null)
                {
                    //
                }
            });
        }
    }
}

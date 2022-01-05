using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using System.Windows.Input;
using QuanLyTiecCuoi.Model;

namespace QuanLyTiecCuoi.ViewModel
{
    class PhanQuyenViewModel : BaseViewModel
    {
        private bool _IsEnable;
        public bool IsEnable { get => _IsEnable; set { _IsEnable = value; OnPropertyChanged(); } }
        private bool _IsReadOnly;
        public bool IsReadOnly { get => _IsReadOnly; set { _IsReadOnly = value; IsEnable = !_IsReadOnly; OnPropertyChanged(); } }
        private ObservableCollection<CHUCNANG> _ListChucNang;
        public ObservableCollection<CHUCNANG> ListChucNang { get => _ListChucNang; set { _ListChucNang = value; OnPropertyChanged(); } }

        private ObservableCollection<NHOMNGUOIDUNG> _ListNhomNguoiDung;
        public ObservableCollection<NHOMNGUOIDUNG> ListNhomNguoiDung { get => _ListNhomNguoiDung; set { _ListNhomNguoiDung = value; OnPropertyChanged(); } }

        private ObservableCollection<PHANQUYEN> _ListPhanQuyen;
        public ObservableCollection<PHANQUYEN> ListPhanQuyen { get => _ListPhanQuyen; set { _ListPhanQuyen = value; OnPropertyChanged(); } }


        private NHOMNGUOIDUNG _SelectedNhomNguoiDung;
        public NHOMNGUOIDUNG SelectedNhomNguoiDung
        {
            get => _SelectedNhomNguoiDung;
            set
            {
                _SelectedNhomNguoiDung = value;
                ListPhanQuyen = new ObservableCollection<PHANQUYEN>(DataProvider.Ins.DataBase.PHANQUYENs.Where(x => x.MaNhomNguoiDung == SelectedNhomNguoiDung.MaNhomNguoiDung));
                ListChucNang = new ObservableCollection<CHUCNANG>(DataProvider.Ins.DataBase.CHUCNANGs.Where(x=>x.PHANQUYENs.Where(y => y.MaChucNang == x.MaChucNang && y.MaNhomNguoiDung == SelectedNhomNguoiDung.MaNhomNguoiDung).Count() == 0));
                OnPropertyChanged();
            }
        }

        private CHUCNANG _SelectedChucNang;
        public CHUCNANG SelectedChucNang
        {
            get => _SelectedChucNang;
            set
            {
                _SelectedChucNang = value;
                OnPropertyChanged();
            }
        }

        private PHANQUYEN _SelectedPhanQuyen;
        public PHANQUYEN SelectedPhanQuyen
        {
            get => _SelectedPhanQuyen;
            set
            {
                _SelectedPhanQuyen = value;
                OnPropertyChanged();
            }
        }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public PhanQuyenViewModel()
        {
            IsReadOnly = !LoginViewModel.ThayDoiPhanQuyen;
            ListNhomNguoiDung = new ObservableCollection<NHOMNGUOIDUNG>(DataProvider.Ins.DataBase.NHOMNGUOIDUNGs);
            AddCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedChucNang == null)
                    return false;
                return true;

            }, (p) =>
            {
                var PhanQuyen = new PHANQUYEN()
                {
                    MaChucNang = SelectedChucNang.MaChucNang,
                    MaNhomNguoiDung = SelectedNhomNguoiDung.MaNhomNguoiDung
                };
                DataProvider.Ins.DataBase.PHANQUYENs.Add(PhanQuyen);
                DataProvider.Ins.DataBase.SaveChanges();
                ListPhanQuyen.Add(PhanQuyen);
                ListChucNang.Remove(SelectedChucNang);
            });
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedPhanQuyen == null)
                    return false;
                return true;

            }, (p) =>
            {
                var ChucNang = new CHUCNANG()
                {
                    MaChucNang = SelectedPhanQuyen.MaChucNang,
                    TenChucNang = SelectedPhanQuyen.CHUCNANG.TenChucNang,
                    TenManHinhDuocLoad = SelectedPhanQuyen.CHUCNANG.TenManHinhDuocLoad
                };
                DataProvider.Ins.DataBase.PHANQUYENs.Remove(SelectedPhanQuyen);
                DataProvider.Ins.DataBase.SaveChanges();
                ListPhanQuyen.Remove(SelectedPhanQuyen);
                ListChucNang.Add(ChucNang);
            });
        }

    }
}

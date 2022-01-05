using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using QuanLyTiecCuoi.Model;
using System.Collections.ObjectModel;
using System.Windows;
using System.Data.Entity.Migrations.Model;
using Microsoft.Office.Interop.Excel;
using System.ComponentModel;
using System.Windows.Data;

namespace QuanLyTiecCuoi.ViewModel
{
    class PhieuDatDichVuViewModel:BaseViewModel
    {
        private bool _IsEnable;
        public bool IsEnable { get => _IsEnable; set { _IsEnable = value; OnPropertyChanged(); } }
        private bool _IsReadOnly;
        public bool IsReadOnly { get => _IsReadOnly; set { _IsReadOnly = value; IsEnable = !_IsReadOnly; OnPropertyChanged(); } }
        private static ObservableCollection<PHIEUDATDICHVU> _ListPhieuDatDichVu;
        public static ObservableCollection<PHIEUDATDICHVU> ListPhieuDatDichVu { get => _ListPhieuDatDichVu; set { _ListPhieuDatDichVu = value; } }
        private static ObservableCollection<DICHVU> _ListDichVu;
        public static ObservableCollection<DICHVU> ListDichVu { get => _ListDichVu; set { _ListDichVu = value; } }
        private static int _CurrentMaTiecCuoi;
        public static int CurrentMaTiecCuoi { get => _CurrentMaTiecCuoi; set =>_CurrentMaTiecCuoi = value;}
        private PHIEUDATDICHVU _SelectedPDDV;
        public PHIEUDATDICHVU SelectedPDDV
        {
            get => _SelectedPDDV;
            set
            {
                _SelectedPDDV = value;
                OnPropertyChanged();
                if (SelectedPDDV != null)
                {
                    MaDichVu = SelectedPDDV.MaDichVu;
                    PDDV_SoLuong = SelectedPDDV.SoLuong;
                    PDDV_ThanhTien = SelectedPDDV.ThanhTien;
                    PDDV_GhiChu = SelectedPDDV.GhiChu;
                    //MessageBox.Show("cc");
                }
            }
        }
        private DICHVU _SelectedDV;
        public DICHVU SelectedDV
        {
            get => _SelectedDV;
            set
            {
                _SelectedDV = value;
                OnPropertyChanged();
                if(SelectedDV != null)
                {
                    MaDichVu = SelectedDV.MaDichVu;
                }
                DV_SoLuong = 0;
                DV_ThanhTien = 0;
                DV_GhiChu = String.Empty;
            }
        }
        private int _MaDichVu;
        public int MaDichVu { get => _MaDichVu; set { _MaDichVu = value; OnPropertyChanged(); } }
        private string _PDDV_GhiChu;
        public string PDDV_GhiChu { get => _PDDV_GhiChu; set { _PDDV_GhiChu = value; OnPropertyChanged(); } }
        private int _PDDV_SoLuong = 0;
        public int PDDV_SoLuong
        { get => _PDDV_SoLuong; 
            set { 
                if(SelectedPDDV !=null) _PDDV_SoLuong = value;
                OnPropertyChanged();
                if (_PDDV_SoLuong < 1)
                {
                    _PDDV_SoLuong = 1;
                    MessageBox.Show("Số lượng phải lớn hơn 0","Lưu ý", MessageBoxButton.OK);
                }
                if (SelectedPDDV != null) PDDV_ThanhTien = PDDV_SoLuong * SelectedPDDV.DICHVU.DonGia;
            } 
        }

        private decimal _PDDV_ThanhTien;
        public decimal PDDV_ThanhTien { get => _PDDV_ThanhTien; set { _PDDV_ThanhTien = value; OnPropertyChanged(); } }

        private string _DV_GhiChu;
        public string DV_GhiChu { get => _DV_GhiChu; set { _DV_GhiChu = value; OnPropertyChanged(); } }
        private int _DV_SoLuong = 0;
        public int DV_SoLuong
        {
            get => _DV_SoLuong; set
            {
                if (SelectedDV != null) _DV_SoLuong = value;
                if (_DV_SoLuong <0)
                {
                    _DV_SoLuong = 0;
                    MessageBox.Show("Số lượng không được âm", "Lưu ý", MessageBoxButton.OK);
                }
                OnPropertyChanged();
                if (SelectedDV != null) DV_ThanhTien = DV_SoLuong * SelectedDV.DonGia;
            }
        }
        private decimal _DV_ThanhTien;
        public decimal DV_ThanhTien { get => _DV_ThanhTien; set { _DV_ThanhTien = value; OnPropertyChanged(); } }
        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand LoadedCommand { get; set; }
        public PhieuDatDichVuViewModel()
        {
            ListDichVu = new ObservableCollection<DICHVU>(DataProvider.Ins.DataBase.DICHVUs);
            ListPhieuDatDichVu = new ObservableCollection<PHIEUDATDICHVU>(DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Where(x => x.MaTiecCuoi == CurrentMaTiecCuoi));

            DataGridCollection = CollectionViewSource.GetDefaultView(ListDichVu);
            DataGridCollection.Filter = new Predicate<object>(Filter);

            AddCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedDV == null)
                    return false;
                var CheckExist = DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Where(x => x.MaDichVu == SelectedDV.MaDichVu && x.MaTiecCuoi == CurrentMaTiecCuoi).FirstOrDefault();
                if (CheckExist != null)
                    return false;
                return true;
            }, (p) =>
            {
                if (DV_SoLuong == 0)
                    MessageBox.Show("Số lượng phải lớn hơn 0", "Lưu ý", MessageBoxButton.OK);
                else
                {
                    try
                    {
                        var PhieuDatDichVu = new PHIEUDATDICHVU()
                        {
                            MaTiecCuoi = CurrentMaTiecCuoi,
                            MaDichVu = MaDichVu,
                            SoLuong = DV_SoLuong,
                            ThanhTien = DV_ThanhTien,
                            GhiChu = DV_GhiChu,
                        };
                        DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Add(PhieuDatDichVu);
                        DataProvider.Ins.DataBase.SaveChanges();
                        ListPhieuDatDichVu.Add(PhieuDatDichVu);
                        SelectedPDDV = PhieuDatDichVu;
                        MessageBox.Show("Thêm phiếu đặt dịch vụ thành công", "Thông báo", MessageBoxButton.OK);
                    }
                    catch (Exception e)
                    {
                        MessageBox.Show("Thêm phiếu đặt dịch vụ không thành công\n", "Thông báo", MessageBoxButton.OK);
                    }
                }
            });
            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedPDDV == null || (PDDV_SoLuong == SelectedPDDV.SoLuong && PDDV_GhiChu == SelectedPDDV.GhiChu))
                    return false;
                var displayList = DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Where(x => x.MaDichVu == SelectedPDDV.MaDichVu && x.MaTiecCuoi == SelectedPDDV.MaTiecCuoi);
                if (displayList != null && displayList.Count() != 0)
                    return true;
                return false;
            }, (p) =>
            {
                try
                {
                    var PhieuDatDichVu = DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Where(x => x.MaDichVu == SelectedPDDV.MaDichVu && x.MaTiecCuoi == SelectedPDDV.MaTiecCuoi).SingleOrDefault();
                    PhieuDatDichVu.MaDichVu = SelectedPDDV.MaDichVu;
                    PhieuDatDichVu.MaTiecCuoi = SelectedPDDV.MaTiecCuoi;
                    PhieuDatDichVu.SoLuong = PDDV_SoLuong;
                    PhieuDatDichVu.ThanhTien = PDDV_ThanhTien;
                    PhieuDatDichVu.GhiChu = PDDV_GhiChu;
                    DataProvider.Ins.DataBase.SaveChanges();
                    MessageBox.Show("Sửa phiếu đặt dịch vụ thành công", "Thông báo", MessageBoxButton.OK);
                    //Cập nhật thông tin
                    CollectionViewSource.GetDefaultView(ListPhieuDatDichVu).Refresh();
                }
                catch (Exception e)
                {
                    MessageBox.Show("Sửa phiếu đặt dịch vụ không thành công\n" + e.ToString(), "Thông báo", MessageBoxButton.OK);
                }
            });
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                try
                {
                    var PhieuDatDichVu = DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Where(x => x.MaDichVu == SelectedPDDV.MaDichVu && x.MaTiecCuoi == SelectedPDDV.MaTiecCuoi).First();
                    DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Remove(PhieuDatDichVu);
                    DataProvider.Ins.DataBase.SaveChanges();
                    ListPhieuDatDichVu.Remove(PhieuDatDichVu);
                    MessageBox.Show("Xóa phiếu đặt dịch vụ thành công", "Thông báo", MessageBoxButton.OK);
                }
                catch (Exception e)
                {
                    MessageBox.Show("Xóa phiếu đặt dịch vụ không thành công\n" + e.ToString(), "Thông báo", MessageBoxButton.OK);
                }
                //refresh nhap
            });
            LoadedCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                IsReadOnly = !LoginViewModel.ThayDoiTiec;
                if (IsReadOnly == false)
                {
                    int temp = DataProvider.Ins.DataBase.HOADONs.Where(x => x.MaTiecCuoi == CurrentMaTiecCuoi).Count();
                    if (temp > 0)
                        IsReadOnly = true;
                }
            });
        }
        //search
        private ICollectionView _dataGridCollection;
        private string _filterString;
        public ICollectionView DataGridCollection
        {
            get { return _dataGridCollection; }
            set { _dataGridCollection = value; OnPropertyChanged("DataGridCollection"); }
        }
        public string FilterString
        {
            get { return _filterString; }
            set
            {
                _filterString = value;
                OnPropertyChanged("FilterString");
                FilterCollection();
            }
        }
        private void FilterCollection()
        {
            if (_dataGridCollection != null)
            {
                _dataGridCollection.Refresh();
            }
        }
        public bool Filter(object obj)
        {
            var data = obj as DICHVU;
            if (data != null)
            {
                if (!string.IsNullOrEmpty(_filterString))
                {
                    return data.TenDichVu.ToLower().Contains(_filterString.ToLower());
                }
                return true;
            }
            return false;
        }
    }
}

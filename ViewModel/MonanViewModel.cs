using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Controls;
using QuanLyTiecCuoi.Model;
using Microsoft.Win32;

namespace QuanLyTiecCuoi.ViewModel
{
    class MonanViewModel : BaseViewModel
    {
        private bool _IsEnable;
        public bool IsEnable { get => _IsEnable; set { _IsEnable = value; OnPropertyChanged(); } }
        private bool _IsReadOnly;
        public bool IsReadOnly { get => _IsReadOnly; set { _IsReadOnly = value; IsEnable = !_IsReadOnly; OnPropertyChanged(); } }
        private ObservableCollection<MONAN> _List;
        public ObservableCollection<MONAN> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private MONAN _SelectedItem;
        public MONAN SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();

                // click vô bảng sẽ hiển thị trên textbox
                if (SelectedItem != null)
                {
                    TenMonAn = SelectedItem.TenMonAn;
                    DonGia = SelectedItem.DonGia;
                    MoTa = SelectedItem.MoTa;
                    GhiChu = SelectedItem.GhiChu;
                    HinhAnh = SelectedItem.HinhAnh;
                }
            }
        }

        //biến bên trang 
        private int _MaMonAn { get; set; }
        public int MaMonAn { get => _MaMonAn; set { OnPropertyChanged(); _MaMonAn = value; OnPropertyChanged(); } }
        private string _TenMonAn { get; set; }
        public string TenMonAn { get => _TenMonAn; set { OnPropertyChanged(); _TenMonAn = value; OnPropertyChanged(); } }
        private decimal _DonGia { get; set; }
        public decimal DonGia { get => _DonGia; set { OnPropertyChanged(); _DonGia = value; OnPropertyChanged(); } }
        private string _MoTa { get; set; }
        public string MoTa { get => _MoTa; set { OnPropertyChanged(); _MoTa = value; OnPropertyChanged(); } }
        private string _HinhAnh { get; set; }
        public string HinhAnh { get => _HinhAnh; set { OnPropertyChanged(); _HinhAnh = value; OnPropertyChanged(); } }
        private string _GhiChu { get; set; }
        public string GhiChu { get => _GhiChu; set { OnPropertyChanged(); _GhiChu = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand AddImageCommand { get; set; }
        public ICommand DeleteImageCommand { get; set; }
        public ICommand ClickCommand { get; set; }
        public ICommand RefreshCommand { get; set; }
        
        public MonanViewModel()
        {
            IsReadOnly = !LoginViewModel.ThayDoiMonAn;
            List = new ObservableCollection<MONAN>(DataProvider.Ins.DataBase.MONANs);
            DataGridCollection = CollectionViewSource.GetDefaultView(List);
            DataGridCollection.Filter = new Predicate<object>(Filter);
            AddCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrWhiteSpace(TenMonAn) ||
                    string.IsNullOrWhiteSpace(MoTa) ||
                    string.IsNullOrWhiteSpace(DonGia.ToString()))
                    return false;
                return true;

            }, (p) =>
            {
                try
                {
                    SelectedItem = new MONAN()
                    {
                        TenMonAn = TenMonAn,
                        DonGia = DonGia,
                        MoTa = MoTa,
                        HinhAnh = HinhAnh,
                        GhiChu = GhiChu
                    };
                    DataProvider.Ins.DataBase.MONANs.Add(SelectedItem);
                    DataProvider.Ins.DataBase.SaveChanges();
                    List.Add(SelectedItem);
                    if (CT_PhieuDatBanViewModel.ListMonAn != null)
                        CT_PhieuDatBanViewModel.ListMonAn.Add(SelectedItem);
                    // 
                    //
                    MessageBox.Show("Thêm món ăn thành công!");
                }
                catch (Exception e)
                {
                    MessageBox.Show("Thêm món ăn không thành công\n", "Thông báo", MessageBoxButton.OK);
                }
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null || String.IsNullOrEmpty(TenMonAn) || string.IsNullOrEmpty(MoTa))
                    return false;
                if (SelectedItem.TenMonAn == TenMonAn &&
                SelectedItem.MoTa == MoTa &&
                SelectedItem.GhiChu == GhiChu &&
                SelectedItem.HinhAnh == HinhAnh
                && SelectedItem.DonGia == DonGia)
                    return false;
                return true;
            }, (p) =>
            {
                try
                {
                    var MonAn = DataProvider.Ins.DataBase.MONANs.Where(x => x.MaMonAn == SelectedItem.MaMonAn).SingleOrDefault();
                    MonAn.TenMonAn = TenMonAn;
                    MonAn.DonGia = DonGia;
                    MonAn.MoTa = MoTa;
                    MonAn.GhiChu = GhiChu;
                    MonAn.HinhAnh = HinhAnh;
                    DataProvider.Ins.DataBase.SaveChanges();

                    
                    //Cập nhật thông tin
                    List = new ObservableCollection<MONAN>(DataProvider.Ins.DataBase.MONANs);
                    DataGridCollection = CollectionViewSource.GetDefaultView(List);
                    DataGridCollection.Filter = new Predicate<object>(Filter);
                    AddCommand = new RelayCommand<object>((p1) =>
                    {
                        if (string.IsNullOrWhiteSpace(TenMonAn) ||
                            string.IsNullOrWhiteSpace(MoTa) ||
                            string.IsNullOrWhiteSpace(DonGia.ToString()))
                            return false;
                        return true;

                    }, (p1) =>
                    {
                        try
                        {
                            SelectedItem = new MONAN()
                            {
                                TenMonAn = TenMonAn,
                                DonGia = DonGia,
                                MoTa = MoTa,
                                HinhAnh = HinhAnh,
                                GhiChu = GhiChu
                            };
                            DataProvider.Ins.DataBase.MONANs.Add(SelectedItem);
                            DataProvider.Ins.DataBase.SaveChanges();
                            List.Add(SelectedItem);
                            if (CT_PhieuDatBanViewModel.ListMonAn != null)
                                CT_PhieuDatBanViewModel.ListMonAn.Add(SelectedItem);
                            // 
                            //
                            MessageBox.Show("Sửa thông tin món ăn thành công!");
                        }
                        catch (Exception e)
                        {
                            MessageBox.Show("Sửa thông tin món ăn không thành công\n", "Thông báo", MessageBoxButton.OK);
                        }
                    });

                    EditCommand = new RelayCommand<object>((p2) =>
                    {
                        if (SelectedItem == null || String.IsNullOrEmpty(TenMonAn) || string.IsNullOrEmpty(MoTa))
                            return false;
                        if (SelectedItem.TenMonAn == TenMonAn &&
                        SelectedItem.MoTa == MoTa &&
                        SelectedItem.GhiChu == GhiChu &&
                        SelectedItem.HinhAnh == HinhAnh
                        && SelectedItem.DonGia == DonGia)
                            return false;
                        return true;
                    }, (p2) =>
                    {
                        try
                        {
                            var MonAn1 = DataProvider.Ins.DataBase.MONANs.Where(x => x.MaMonAn == SelectedItem.MaMonAn).SingleOrDefault();
                            MonAn1.TenMonAn = TenMonAn;
                            MonAn1.DonGia = DonGia;
                            MonAn1.MoTa = MoTa;
                            MonAn1.GhiChu = GhiChu;
                            MonAn1.HinhAnh = HinhAnh;
                            DataProvider.Ins.DataBase.SaveChanges();

                            MessageBox.Show("Sửa thông tin món ăn thành công!");
                        }
                        catch (Exception e)
                        {
                            MessageBox.Show("Sửa thông tin món ăn không thành công\n", "Thông báo", MessageBoxButton.OK);
                        }
                    });
                    MessageBox.Show("Sửa thông tin món ăn thành công!");
                }
                catch (Exception e)
                {
                    MessageBox.Show("Sửa thông tin món ăn không thành công\n", "Thông báo", MessageBoxButton.OK);
                }
            });
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;
                return true;
            }, (p) =>
            {
                var MonAn = DataProvider.Ins.DataBase.MONANs.Where(x => x.MaMonAn == SelectedItem.MaMonAn).First();
                var CT_PhieuDatBan = DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaMonAn == SelectedItem.MaMonAn);
                if (CT_PhieuDatBan.Count() != 0)
                {
                    MessageBox.Show("Không thể xóa vì có tồn tại món ăn này trong Chi tiết đặt bàn!");
                    return;
                }
                try
                {
                    DataProvider.Ins.DataBase.MONANs.Remove(MonAn);
                    DataProvider.Ins.DataBase.SaveChanges();
                    List.Remove(MonAn);
                    MessageBox.Show("Xóa món ăn thành công!");
                    if (CT_PhieuDatBanViewModel.ListMonAn != null)
                        CT_PhieuDatBanViewModel.ListMonAn.Remove(MonAn);
                    TenMonAn = "";
                    DonGia = 0;
                    MoTa = "";
                    GhiChu = "";
                    HinhAnh = string.Empty;
                }
                catch (Exception e)
                {
                    MessageBox.Show("Xóa món ăn không thành công\n", "Thông báo", MessageBoxButton.OK);
                }
            });
            AddImageCommand = new RelayCommand<Image>((p) =>
            {
                return true;
            }, (p) =>
            {
                OpenFileDialog open = new OpenFileDialog();
                open.Filter = "Image Files(*.jpg; *.png)|*.jpg; *.png";
                if (open.ShowDialog() == true)
                {
                    HinhAnh = open.FileName;
                };
            });
            DeleteImageCommand = new RelayCommand<Image>((p) =>
            {
                if (string.IsNullOrEmpty(HinhAnh))
                    return false;
                if (SelectedItem == null)
                    return false;
                return true;
            }, (p) =>
            {
                HinhAnh = string.Empty;
            });
            RefreshCommand = new RelayCommand<Image>((p) =>
            {
                return true;
            }, (p) =>
            {
                TenMonAn = "";
                DonGia = 0;
                MoTa = "";
                GhiChu = "";
                HinhAnh = string.Empty;
            });
        }

        // Search DataGrid
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
            var data = obj as MONAN;
            if (data != null)
            {
                if (!string.IsNullOrEmpty(_filterString))
                {
                    return data.TenMonAn.ToLower().Contains(_filterString.ToLower());
                }
                return true;
            }
            return false;
        }

    }
}

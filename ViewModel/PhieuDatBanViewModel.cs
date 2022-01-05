using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data.Entity.ModelConfiguration.Configuration;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.Windows.Input;
using Microsoft.Office.Interop.Excel;
using QuanLyTiecCuoi.Model;
namespace QuanLyTiecCuoi.ViewModel
{
    class PhieuDatBanViewModel : BaseViewModel
    {
        private bool _IsEnable;
        public bool IsEnable { get => _IsEnable; set { _IsEnable = value; OnPropertyChanged(); } }
        private bool _IsReadOnly;
        public bool IsReadOnly { get => _IsReadOnly; set { _IsReadOnly = value; IsEnable = !_IsReadOnly; OnPropertyChanged(); } }
        private static int _CurrentMaTiecCuoi;
        public static int CurrentMaTiecCuoi { get => _CurrentMaTiecCuoi; set { _CurrentMaTiecCuoi = value; } }

        private static ObservableCollection<PHIEUDATBAN> _ListPhieuDatBan;
        public static ObservableCollection<PHIEUDATBAN> ListPhieuDatBan { get => _ListPhieuDatBan; set => _ListPhieuDatBan = value; }
        private static decimal _DonGiaBanToiThieu;
        public static decimal DonGiaBanToiThieu { get => _DonGiaBanToiThieu; set { _DonGiaBanToiThieu = value; } }
        private static int _SoLuongBanToiDa;
        public static int SoLuongBanToiDa { get => _SoLuongBanToiDa; set { _SoLuongBanToiDa = value; } }
        private PHIEUDATBAN _SelectedPDB;
        public PHIEUDATBAN SelectedPDB
        {
            get => _SelectedPDB;
            set
            {
                _SelectedPDB = value;
                OnPropertyChanged();
                if (SelectedPDB != null)
                {
                    MaPhieuDatBan = CT_PhieuDatBanViewModel.CurrentMaPDB = SelectedPDB.MaPhieuDatBan;
                    SoLuong = SelectedPDB.SoLuong;
                    LoaiBan = SelectedPDB.LoaiBan;
                    SoLuongDuTru = SelectedPDB.SoLuongDuTru;
                    DonGiaBan = SelectedPDB.DonGiaBan;
                    GhiChu = SelectedPDB.GhiChu;
                }
            }
        }
        private int _MaPhieuDatBan;
        private int _SoLuong;
        private int _SoLuongDuTru;
        private decimal _DonGiaBan;
        private string _GhiChu;
        private string _LoaiBan;
        private int _TongSoLuongBan = 0;
        public int MaPhieuDatBan { get => _MaPhieuDatBan; set { _MaPhieuDatBan = value; OnPropertyChanged(); } }
        public string LoaiBan { get => _LoaiBan; set { _LoaiBan = value; OnPropertyChanged(); } }
        public int SoLuong { get => _SoLuong; 
            set { 
                if(value < 0)
                {
                    MessageBox.Show("Số lượng không được âm", "Lưu ý");
                    _SoLuong = 0;
                }
                else
                    _SoLuong = value;
                OnPropertyChanged(); 
            } }
        public int TongSoLuongBan { get => _TongSoLuongBan; set { _TongSoLuongBan = value; OnPropertyChanged(); } }
        public int SoLuongDuTru { get => _SoLuongDuTru; set { _SoLuongDuTru = value; OnPropertyChanged(); } }
        public decimal DonGiaBan { get => _DonGiaBan; set { _DonGiaBan = value; OnPropertyChanged(); } }
        public string GhiChu { get => _GhiChu; set { _GhiChu = value; OnPropertyChanged(); } }
        public ICommand AddCommand { get; set; }
        public ICommand CT_PhieuDatBanCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand LoadedCommand { get; set; }
        bool Enable()
        {
            if (LoaiBan != SelectedPDB.LoaiBan)
                return true;
            if (SoLuong != SelectedPDB.SoLuong)
                return true;
            if (SoLuongDuTru != SelectedPDB.SoLuongDuTru)
                return true;
            if (GhiChu != SelectedPDB.GhiChu)
                return true;
            return false;
        }
        bool Addable()
        {
            if (String.IsNullOrEmpty(LoaiBan))
                return false;
            if (SoLuong == 0)
                return false;
            return true;
        }
        public PhieuDatBanViewModel()
        {
            var ccc = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == CurrentMaTiecCuoi).Count();
            if (ccc > 0)
                TongSoLuongBan = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == CurrentMaTiecCuoi).Sum(slb => slb.SoLuong);
            else
                TongSoLuongBan = 0;
            DataGridCollection = CollectionViewSource.GetDefaultView(ListPhieuDatBan);
            DataGridCollection.Filter = new Predicate<object>(Filter);
            AddCommand = new RelayCommand<object>((p) =>
            {
                return Addable();

            }, (p) =>
            {
                try
                {  
                    var temp = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == CurrentMaTiecCuoi).Count();
                    if (temp > 0)
                        TongSoLuongBan = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == CurrentMaTiecCuoi).Sum(slb => slb.SoLuong);
                    else
                        TongSoLuongBan = 0;
                    if(TongSoLuongBan + SoLuong > SoLuongBanToiDa)
                    {
                        MessageBox.Show("Tổng số lượng bàn lớn hơn số lượng bàn tối đa", "Thông báo");
                        return;
                    }
                    DonGiaBan = DonGiaBanToiThieu;
                    var PhieuDatBan = new PHIEUDATBAN()
                    {
                        MaTiecCuoi = CurrentMaTiecCuoi,
                        LoaiBan = LoaiBan,
                        SoLuong = Convert.ToInt32(SoLuong),
                        SoLuongDuTru = Convert.ToInt32(SoLuongDuTru),
                        DonGiaBan = DonGiaBan,
                        GhiChu = GhiChu
                    };
                    //MessageBox.Show(PhieuDatBan.MaTiecCuoi + " " + PhieuDatBan.LoaiBan+ " " + PhieuDatBan.SoLuong + " " + PhieuDatBan.SoLuongDuTru + " " + PhieuDatBan.DonGiaBan);
                    DataProvider.Ins.DataBase.PHIEUDATBANs.Add(PhieuDatBan);
                    DataProvider.Ins.DataBase.SaveChanges();
                    ListPhieuDatBan.Add(PhieuDatBan);
                    SelectedPDB = PhieuDatBan;
                    TongSoLuongBan += SoLuong;
                    MessageBox.Show("Thêm phiếu đặt bàn thành công", "Thông báo", MessageBoxButton.OK);
                    
                }
                catch (Exception e)
                {
                    MessageBox.Show("Thêm phiếu đặt bàn không thành công\n", "Thông báo", MessageBoxButton.OK);
                }
            });
            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedPDB == null)
                    return false;
                var displayList = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan);
                if (displayList != null && displayList.Count() != 0 && Addable() && Enable())
                    return true;
                return false;
            }, (p) =>
            {
                if (SoLuong == 0)
                    MessageBox.Show("Số lượng phải lớn hơn 0", "Lưu ý");
                else
                    try
                    {
                        int temp = TongSoLuongBan + SoLuong - SelectedPDB.SoLuong;
                        if (temp > SoLuongBanToiDa)
                        {
                            MessageBox.Show("Tổng số lượng bàn lớn hơn số lượng bàn tối đa", "Thông báo");
                            return;
                        }
                        var PhieuDatBan = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan).SingleOrDefault();
                        PhieuDatBan.MaPhieuDatBan = SelectedPDB.MaPhieuDatBan;
                        PhieuDatBan.MaTiecCuoi = CurrentMaTiecCuoi;
                        PhieuDatBan.LoaiBan = LoaiBan;
                        PhieuDatBan.SoLuong = SoLuong;
                        PhieuDatBan.SoLuongDuTru = SoLuongDuTru;
                        PhieuDatBan.DonGiaBan = DonGiaBan;
                        PhieuDatBan.GhiChu = GhiChu;
                        DataProvider.Ins.DataBase.SaveChanges();
                        TongSoLuongBan = temp;
                        
                        //Cập nhật lại thông tin
                        var ccc1 = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == CurrentMaTiecCuoi).Count();
                        if (ccc1 > 0)
                            TongSoLuongBan = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == CurrentMaTiecCuoi).Sum(slb => slb.SoLuong);
                        else
                            TongSoLuongBan = 0;
                        DataGridCollection = CollectionViewSource.GetDefaultView(ListPhieuDatBan);
                        DataGridCollection.Filter = new Predicate<object>(Filter);
                        AddCommand = new RelayCommand<object>((p1) =>
                        {
                            return Addable();

                        }, (p1) =>
                        {
                            try
                            {
                                var temp1 = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == CurrentMaTiecCuoi).Count();
                                if (temp1 > 0)
                                    TongSoLuongBan = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == CurrentMaTiecCuoi).Sum(slb => slb.SoLuong);
                                else
                                    TongSoLuongBan = 0;
                                if (TongSoLuongBan + SoLuong > SoLuongBanToiDa)
                                {
                                    MessageBox.Show("Tổng số lượng bàn lớn hơn số lượng bàn tối đa", "Thông báo");
                                    return;
                                }
                                DonGiaBan = DonGiaBanToiThieu;
                                var PhieuDatBan1 = new PHIEUDATBAN()
                                {
                                    MaTiecCuoi = CurrentMaTiecCuoi,
                                    LoaiBan = LoaiBan,
                                    SoLuong = Convert.ToInt32(SoLuong),
                                    SoLuongDuTru = Convert.ToInt32(SoLuongDuTru),
                                    DonGiaBan = DonGiaBan,
                                    GhiChu = GhiChu
                                };
                                //MessageBox.Show(PhieuDatBan.MaTiecCuoi + " " + PhieuDatBan.LoaiBan+ " " + PhieuDatBan.SoLuong + " " + PhieuDatBan.SoLuongDuTru + " " + PhieuDatBan.DonGiaBan);
                                DataProvider.Ins.DataBase.PHIEUDATBANs.Add(PhieuDatBan1);
                                DataProvider.Ins.DataBase.SaveChanges();
                                ListPhieuDatBan.Add(PhieuDatBan1);
                                SelectedPDB = PhieuDatBan1;
                                TongSoLuongBan += SoLuong;
                                MessageBox.Show("Sửa phiếu đặt bàn thành công", "Thông báo", MessageBoxButton.OK);

                            }
                            catch (Exception e)
                            {
                                MessageBox.Show("Sửa phiếu đặt bàn không thành công\n", "Thông báo", MessageBoxButton.OK);
                            }
                        });
                        EditCommand = new RelayCommand<object>((p2) =>
                        {
                            if (SelectedPDB == null)
                                return false;
                            var displayList = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan);
                            if (displayList != null && displayList.Count() != 0 && Addable() && Enable())
                                return true;
                            return false;
                        }, (p2) =>
                        {
                            if (SoLuong == 0)
                                MessageBox.Show("Số lượng phải lớn hơn 0", "Lưu ý");
                            else
                                try
                                {
                                    int temp2 = TongSoLuongBan + SoLuong - SelectedPDB.SoLuong;
                                    if (temp2 > SoLuongBanToiDa)
                                    {
                                        MessageBox.Show("Tổng số lượng bàn lớn hơn số lượng bàn tối đa", "Thông báo");
                                        return;
                                    }
                                    var PhieuDatBan2 = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan).SingleOrDefault();
                                    PhieuDatBan2.MaPhieuDatBan = SelectedPDB.MaPhieuDatBan;
                                    PhieuDatBan2.MaTiecCuoi = CurrentMaTiecCuoi;
                                    PhieuDatBan2.LoaiBan = LoaiBan;
                                    PhieuDatBan2.SoLuong = SoLuong;
                                    PhieuDatBan2.SoLuongDuTru = SoLuongDuTru;
                                    PhieuDatBan2.DonGiaBan = DonGiaBan;
                                    PhieuDatBan2.GhiChu = GhiChu;
                                    DataProvider.Ins.DataBase.SaveChanges();
                                    TongSoLuongBan = temp2;

                                    
                                    //Cập nhật lại thông tin


                                }
                                catch (Exception e)
                                {
                                    MessageBox.Show("Sửa phiếu đặt bàn không thành công\n" + e.ToString(), "Thông báo", MessageBoxButton.OK);
                                }
                        });

                        MessageBox.Show("Sửa phiếu đặt bàn thành công", "Thông báo", MessageBoxButton.OK);
                    }
                    catch (Exception e)
                    {
                        MessageBox.Show("Sửa phiếu đặt bàn không thành công\n", "Thông báo", MessageBoxButton.OK);
                    }
            });
            CT_PhieuDatBanCommand = new RelayCommand<object>((p) => 
            {
                if (SelectedPDB == null)
                    return false;
                return !Enable(); 
            }, (p) => {
                CT_PhieuDatBanViewModel.CurrentMaPDB = SelectedPDB.MaPhieuDatBan;
                CT_PhieuDatBanViewModel.ListCTPhieuDatBan = new ObservableCollection<CT_PHIEUDATBAN>(DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan));
                CT_PhieuDatBanWindow wd = new CT_PhieuDatBanWindow();
                wd.ShowDialog();
                int count = DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaPhieuDatBan == MaPhieuDatBan).Count();
                if (count != 0)
                    DonGiaBan = DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaPhieuDatBan == MaPhieuDatBan).Sum(ct => ct.ThanhTien);
                var PhieuDatBan = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan).SingleOrDefault();
                PhieuDatBan.DonGiaBan = DonGiaBan;
                DataProvider.Ins.DataBase.SaveChanges();
                while (DonGiaBan < DonGiaBanToiThieu)
                {
                    MessageBoxResult result = MessageBox.Show("Đơn giá bàn thấp hơn đơn giá bàn tối thiểu !!!\n" +
                        "Đơn giá bàn sẽ được thay đổi giá trị bằng đơn giá bàn tối thiểu", "Cảnh báo", MessageBoxButton.YesNo);
                    if(result == MessageBoxResult.Yes)
                    {
                        DonGiaBan = DonGiaBanToiThieu;
                        try
                        {
                            var DichVu = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan).SingleOrDefault();
                            DichVu.DonGiaBan = DonGiaBan;
                            DataProvider.Ins.DataBase.SaveChanges();
                            MessageBox.Show("Đơn giá bàn đã được thay đổi giá trị bằng đơn giá bàn tối thiểu", "Thông báo", MessageBoxButton.OK);
                        }
                        catch (Exception e)
                        {
                            MessageBox.Show("Thay đổi phiếu đặt bàn không thành công\n" + e.ToString(), "Thông báo", MessageBoxButton.OK);
                        }
                        break;
                    }
                    else
                    {
                        MessageBox.Show("Xin thay đổi chi tiết đặt bàn cho đến khi Đơn giá bàn lớn hơn hoặc bằng Đơn giá bàn tối thiểu", "Thông báo", MessageBoxButton.OK);
                        CT_PhieuDatBanWindow ct = new CT_PhieuDatBanWindow();
                        ct.ShowDialog();
                    }
                    int cc = DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaPhieuDatBan == MaPhieuDatBan).Count();
                    if (cc != 0)
                        DonGiaBan = DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaPhieuDatBan == MaPhieuDatBan).Sum(ct => ct.ThanhTien);
                    else
                        DonGiaBan = 0;
                    if (DonGiaBan >= DonGiaBanToiThieu)
                    {
                        var temp = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan).SingleOrDefault();
                        temp.DonGiaBan = DonGiaBan;
                      //  MessageBox.Show(PhieuDatBan.DonGiaBan.ToString());
                        DataProvider.Ins.DataBase.SaveChanges();
                    }
                }

            });
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedPDB == null)
                    return false;
                return true;
            }, (p) =>
            {
                MessageBoxResult result = MessageBox.Show("Bạn có chắc muốn xóa \n Phiếu đặt bàn này không", "Cảnh báo", MessageBoxButton.YesNo);
                if (result == MessageBoxResult.Yes)
                {
                    try
                    {
                        
                        int count = DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan).Count();
                        int temptong = TongSoLuongBan - SelectedPDB.SoLuong;
                        for (int i =0; i< count; i++)
                        {
                            CT_PHIEUDATBAN temp = DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan).First();
                            DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Remove(temp);
                            DataProvider.Ins.DataBase.SaveChanges();
                        }
                        var PhieuDatBan = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaPhieuDatBan == SelectedPDB.MaPhieuDatBan).First();
                        DataProvider.Ins.DataBase.PHIEUDATBANs.Remove(PhieuDatBan);
                        DataProvider.Ins.DataBase.SaveChanges();
                        ListPhieuDatBan.Remove(PhieuDatBan);
                        // Refresh
                        TongSoLuongBan = temptong;
                        LoaiBan = GhiChu =  String.Empty;
                        SoLuong = SoLuongDuTru = 0;
                        DonGiaBan = DonGiaBanToiThieu;
                        MessageBox.Show("Xóa phiếu đặt bàn thành công", "Thông báo", MessageBoxButton.OK);
                    }
                    catch (Exception e)
                    {
                        MessageBox.Show("Xóa phiếu đặt bàn không thành công\n" + e.ToString(), "Thông báo", MessageBoxButton.OK);
                    }
                }
                
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
        private ICollectionView _dataGridCollection;
        private string _filterString;
        public ICollectionView DataGridCollection
        {
            get { return _dataGridCollection; }
            set { OnPropertyChanged(); _dataGridCollection = value; OnPropertyChanged("DataGridCollection"); }
        }
        public string FilterString
        {
            get { return _filterString; }
            set
            {
                if (value != _filterString)
                    OnPropertyChanged("FilterString");
                _filterString = value;
                OnPropertyChanged("FilterString");
                FilterCollection();
            }
        }
        private void FilterCollection()
        {
            if (_dataGridCollection != null)
            {
                //   OnPropertyChanged();
                _dataGridCollection.Refresh();
            }
        }
        public bool Filter(object obj)
        {
            var data = obj as PHIEUDATBAN;
            if (data != null)
            {
                if (!string.IsNullOrEmpty(_filterString))
                {
                    return data.LoaiBan.ToLower().Contains(_filterString.ToLower());
                }
                return true;
            }
            return false;
        }

    }
}

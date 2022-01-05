using System;
using QuanLyTiecCuoi.Model;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;
using System.Windows.Controls;
using System.ComponentModel;
using System.Windows.Data;

namespace QuanLyTiecCuoi.ViewModel
{
    class HoaDonViewModel : BaseViewModel
    {
        private bool _IsEnable;
        public bool IsEnable { get => _IsEnable; set { _IsEnable = value; OnPropertyChanged(); } }
        private bool _IsReadOnly;
        public bool IsReadOnly { get => _IsReadOnly; set { _IsReadOnly = value; IsEnable = !_IsReadOnly; OnPropertyChanged(); } }

        private HOADON _SelectedItem;

        public HOADON SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    TongTienBan = SelectedItem.TongTienBan;
                    TongTienDichVu = SelectedItem.TongTienDichVu;
                    TongTienHoaDon = SelectedItem.TongTienHoaDon;
                    ConLai = SelectedItem.ConLai;
                    NgayThanhToan = SelectedItem.NgayThanhToan;
                }
            }
        }
        // Bien
        #region
        private decimal _TongTienBan;
        public decimal TongTienBan { get => _TongTienBan; set { _TongTienBan = value; OnPropertyChanged(); } }


        private decimal _TongTienDichVu;
        public decimal TongTienDichVu { get => _TongTienDichVu; set { _TongTienDichVu = value; OnPropertyChanged(); } }


        private decimal _TongTienHoaDon;
        public decimal TongTienHoaDon { get => _TongTienHoaDon; set { _TongTienHoaDon = value; OnPropertyChanged(); } }


        private decimal _ConLai;
        public decimal ConLai { get => _ConLai; set { _ConLai = value; OnPropertyChanged(); } }


        private DateTime _NgayThanhToan = DateTime.Now;
        public DateTime NgayThanhToan { get => _NgayThanhToan;
            set 
            {
                if (value < NgayDaiTiec)
                {
                    MessageBox.Show("Ngay thanh toán phải cùng hoặc sau ngày đãi tiệc");
                    _NgayThanhToan = DateTime.Now;
                }
                else
                    if (value != _NgayThanhToan)
                    {
                        OnPropertyChanged();
                        _NgayThanhToan = value;
                        TimeSpan da = NgayThanhToan.Subtract(NgayDaiTiec);
                        TienPhat = TongTienHoaDon * (decimal)IsPhat * (decimal)TiLePhat * (decimal)Math.Abs((int)da.TotalDays);// * (decimal)(DateTime.Now.Subtract(NgayDaiTiec).TotalDays);                                                                                                                   //MessageBox.Show(TienPhat.ToString());
                        ConLai = TongTienHoaDon + TienPhat - Convert.ToDecimal(TienDatCoc);
                    }
                OnPropertyChanged();
            }
        }
        #endregion

        // Icommand
        #region
        public ICommand DoubleClickCommand_HoaDon { get; set; }
        public ICommand DoubleClickCommand_Tiec { get; set; }
        public ICommand LapHoaDonCommand { get; set; }
        public ICommand LuuHoaDon { get; set; }
        public ICommand InHoaDon { get; set; }
        public ICommand DoubleClickCommandCT_Phieu { get; set; }
        public ICommand GetBaoCaoThangVM { get; set; }
        #endregion

        // ObservableCollection
        #region
        private static ObservableCollection<TIECCUOI> _ListTiecCuoi;
        public static ObservableCollection<TIECCUOI> ListTiecCuoi { get => _ListTiecCuoi; set { _ListTiecCuoi = value; } }

        public ObservableCollection<TIECCUOI> _ListTiecCuoi2;
        public ObservableCollection<TIECCUOI> ListTiecCuoi2 { get => _ListTiecCuoi2; set { _ListTiecCuoi2 = value; OnPropertyChanged(); } }

        public ObservableCollection<PHIEUDATBAN> _ListPhieuDatBan;
        public ObservableCollection<PHIEUDATBAN> ListPhieuDatBan { get => _ListPhieuDatBan; set { _ListPhieuDatBan = value; OnPropertyChanged(); } }

        public ObservableCollection<PHIEUDATDICHVU> _ListPhieuDatDichVu;
        public ObservableCollection<PHIEUDATDICHVU> ListPhieuDatDichVu { get => _ListPhieuDatDichVu; set { _ListPhieuDatDichVu = value; OnPropertyChanged(); } }

        public ObservableCollection<CT_PHIEUDATBAN> _ListCT_PhieuDatBan;
        public ObservableCollection<CT_PHIEUDATBAN> ListCT_PhieuDatBan { get => _ListCT_PhieuDatBan; set { _ListCT_PhieuDatBan = value; OnPropertyChanged(); } }

        public ObservableCollection<THAMSO> _ListThamSo;
        public ObservableCollection<THAMSO> ListThamSo { get => _ListThamSo; set { _ListThamSo = value; OnPropertyChanged(); } }

        private static ObservableCollection<HOADON> _List;
        public static ObservableCollection<HOADON> List { get => _List; set { _List = value; } }
        BaoCaoThangViewModel baoCaoThangViewModel;
        #endregion

        // Cac bien
        #region
        public int idTiecCuoi = 0;
        public int id = 0;

        private decimal _TongSoBan;
        public decimal TongSoBan { get => _TongSoBan; set { _TongSoBan = value; OnPropertyChanged(); } }
       
        private string _TenChuRe;
        public string TenChuRe { get => _TenChuRe; set { _TenChuRe = value; } }

        private string _TenCoDau;
        public string TenCoDau { get => _TenCoDau; set { _TenCoDau = value; OnPropertyChanged(); } }
        private string _SoDienThoai;
        public string SoDienThoai
        {
            get => _SoDienThoai; set
            {
                if (value != _SoDienThoai) OnPropertyChanged(); _SoDienThoai = value; OnPropertyChanged();
            }
        }
        private string _NguoiLapHoaDon;
        public string NguoiLapHoaDon { get => _NguoiLapHoaDon; set { _NguoiLapHoaDon = value; OnPropertyChanged(); } }

        private System.DateTime _NgayDaiTiec;// = DateTime.Now;
        public System.DateTime NgayDaiTiec { get => _NgayDaiTiec; set { _NgayDaiTiec = value; OnPropertyChanged();  } }

        private int _SoLuong;
        private int _SoLuongDuTru;
        private decimal _DonGiaBan;

        public int SoLuong { get => _SoLuong; set { _SoLuong = value; OnPropertyChanged(); } }
        public int SoLuongDuTru { get => _SoLuongDuTru; set { _SoLuongDuTru = value; OnPropertyChanged(); } }
        public decimal DonGiaBan { get => _DonGiaBan; set { _DonGiaBan = value; OnPropertyChanged(); } }

        private string _TienDatCoc;
        public string TienDatCoc { get => _TienDatCoc; set { _TienDatCoc = value; OnPropertyChanged(); } }

        //private int _MaDichVu;
        public int MaDichVu { get; set; }
        //private string _TenDichVu;
        public string TenDichVu { get; set; }
        //private decimal _DonGia;
        public decimal DonGia { get; set; }

        private int _MaTiecCuoi;
        public int MaTiecCuoi { get => _MaTiecCuoi; set { _MaTiecCuoi = value; OnPropertyChanged(); } }
        private decimal _ThanhTien;
        public decimal ThanhTien { get => _ThanhTien; set { _ThanhTien = value; OnPropertyChanged(); } }

        //private string _TenMonAn;
        public string TenMonAn { get; set; }
        //private string _DonGiaMonAn;
        public string DonGiaMonAn { get; set; }

        private string _SoLuongMon;
        public string SoLuongMon { get => _SoLuongMon; set { _SoLuongMon = value; OnPropertyChanged(); } }

        private decimal _TienPhat;
        public decimal TienPhat { get => _TienPhat; set { _TienPhat = value; OnPropertyChanged(); } }
        public double TiLePhat = 0.0d;
        public int IsPhat = 0;
        public TIECCUOI item;
        public int idIn = 0;
        #endregion  
        public HoaDonViewModel()
        {
            IsReadOnly = !LoginViewModel.ThayDoiHoaDon;

            ListTiecCuoi = new ObservableCollection<TIECCUOI>(DataProvider.Ins.DataBase.TIECCUOIs.Where(x => x.HOADONs.Count() == 0));
            List = new ObservableCollection<HOADON>(DataProvider.Ins.DataBase.HOADONs);
            DataProvider.Ins.DataBase.SaveChanges();

            // Filter
            DataGridCollection = CollectionViewSource.GetDefaultView(List);
            DataGridCollection.Filter = new Predicate<object>(Filter);


            DoubleClickCommand_HoaDon = new RelayCommand<DataGrid>((p) => { return true; },
                (p) =>
                {
                    idTiecCuoi = getMaTiecCuoi_HoaDon(p);
                    if (DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == idTiecCuoi).Count() == 0)
                    {
                        MessageBox.Show("Tiệc cưới chưa hoàn thành thông tin, vui lòng kiểm tra lại");
                    }
                    else
                    {
                        HoaDon hd = new HoaDon();
                        Loaddata();
                        hd.ShowDialog();
                    }
                });

            DoubleClickCommand_Tiec = new RelayCommand<DataGrid>((p) => { return true; },
                (p) =>
                {
                    idTiecCuoi = idIn = getMaTiecCuoi_Tiec(p);
                    var a = DataProvider.Ins.DataBase.TIECCUOIs.Where(x => x.MaTiecCuoi == idTiecCuoi);
                    if (a.Count() != 0)
                    {
                        if(a.ToList()[0].NgayDaiTiec > DateTime.Now)
                        {
                            MessageBox.Show("Chưa đến ngày thanh toán");
                            return;
                        }
                    }
                    if (DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == idTiecCuoi).Count() == 0)
                    {
                        MessageBox.Show("Tiệc cưới chưa hoàn thành thông tin, vui lòng kiểm tra lại");
                    }
                    else
                    {
                        var check = ListTiecCuoi2;
                        HoaDon hd = new HoaDon();
                        Loaddata();
                        hd.ShowDialog();
                        
                    }
                });

            LuuHoaDon = new RelayCommand<HoaDon>((p) =>
            {
                var hoadon = DataProvider.Ins.DataBase.HOADONs.Where(x => x.MaTiecCuoi == idTiecCuoi);
                if (NgayThanhToan < NgayDaiTiec)
                {          
                    return false;
                }
                if (hoadon == null || hoadon.Count() != 0)
                    return false;
                return true;

            },
                (p) =>
                {
                    var hoadon = new HOADON()
                    {
                        MaTiecCuoi = idTiecCuoi,
                        TongTienBan = TongTienBan,
                        NgayThanhToan = NgayThanhToan,
                        ConLai = ConLai,
                        TongTienDichVu = TongTienDichVu,
                        TongTienHoaDon = TongTienHoaDon
                    };
                    DataProvider.Ins.DataBase.HOADONs.Add(hoadon);
                    DataProvider.Ins.DataBase.SaveChanges();
                    MessageBox.Show("Đã thêm hóa đơn");
                    List.Add(hoadon);
                    ListTiecCuoi.Remove(item);
                    TinhLaiBaoCaoThang();
                    TinhLaiBaoCaoNgay();
                    UpdateTiLe();

                });

            InHoaDon = new RelayCommand<object>((p) =>
            {
                return true;
            }, 
            (p) =>
            {
 
                var inHoaDon = new InHoaDon();
                inHoaDon.ShowDialog();
            });


            DoubleClickCommandCT_Phieu = new RelayCommand<DataGrid>((p) => { return true; },
                (p) =>
                {
                    id = getMaPhieuDatBan(p);
                    CT_PhieuDatBanxaml ct_Phieu = new CT_PhieuDatBanxaml();
                    ListCT_PhieuDatBan = new ObservableCollection<CT_PHIEUDATBAN>(DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaPhieuDatBan == id));
                    DataProvider.Ins.DataBase.SaveChanges();
                    if (ListCT_PhieuDatBan == null || ListCT_PhieuDatBan.Count() == 0) { return; }
                    ct_Phieu.DataContext = ListCT_PhieuDatBan;
                    ct_Phieu.ShowDialog();
                });

            LapHoaDonCommand = new RelayCommand<Button>((p) => { return true; },
                (p) =>
                {
                    DSTiecChuaThanhToan dSTiecChuaThanhToan = new DSTiecChuaThanhToan();
                    dSTiecChuaThanhToan.ShowDialog();
                });
            GetBaoCaoThangVM = new RelayCommand<Grid>((p) => { return true; },
                (p) =>
                {
                    
                    baoCaoThangViewModel= p.DataContext as BaoCaoThangViewModel;
                });

        }


        // Search box
        #region
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
            var data = obj as HOADON;
            if (data != null)
            {
                if (!string.IsNullOrEmpty(_filterString))
                {
                    return data.TIECCUOI.SoDienThoai.Contains(_filterString) 
                        || data.TIECCUOI.TenChuRe.ToLower().Contains(_filterString.ToLower()) 
                        || data.TIECCUOI.TenCoDau.ToLower().Contains(_filterString.ToLower());
                }
                return true;
            }
            return false;
        }
        #endregion

        //function
        private void Loaddata()
        {
            try
            {
                if (ListPhieuDatDichVu != null) ListPhieuDatDichVu.ToList().Clear();
                ListPhieuDatDichVu = new ObservableCollection<PHIEUDATDICHVU>(DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Where(x => x.MaTiecCuoi == idTiecCuoi));
                DataProvider.Ins.DataBase.SaveChanges();

                if (ListPhieuDatDichVu == null || ListPhieuDatDichVu.Count() == 0) return;

                if (ListPhieuDatDichVu != null)
                {
                    SoLuong = ListPhieuDatDichVu.FirstOrDefault().SoLuong;
                    DonGia = ListPhieuDatDichVu.FirstOrDefault().ThanhTien;
                    ThanhTien = SoLuong * DonGia;
                    TongTienDichVu = ListPhieuDatDichVu.Sum(x => x.ThanhTien);
                }

                if (ListTiecCuoi2 != null) ListTiecCuoi2.ToList().Clear();
                ListTiecCuoi2 = new ObservableCollection<TIECCUOI>(DataProvider.Ins.DataBase.TIECCUOIs.Where(x => x.MaTiecCuoi == idTiecCuoi));
                DataProvider.Ins.DataBase.SaveChanges();
                if (ListTiecCuoi2 == null || ListTiecCuoi2.Count() == 0) return;
                if (ListTiecCuoi2 != null)
                {
                    TenChuRe = ListTiecCuoi2.SingleOrDefault().TenChuRe;
                    TenCoDau = ListTiecCuoi2.SingleOrDefault().TenCoDau;
                    NgayDaiTiec = ListTiecCuoi2.SingleOrDefault().NgayDaiTiec; //Ngay thanh toan trung ngay dai tiec, qua han tinh phat (Neu co)
                    TienDatCoc = Convert.ToString(ListTiecCuoi2.SingleOrDefault().TienDatCoc);
                    NgayThanhToan = DateTime.Now;
                    SoDienThoai = ListTiecCuoi2.Single().SoDienThoai;
                }

                if (ListPhieuDatBan != null) ListPhieuDatBan.ToList().Clear();
                ListPhieuDatBan = new ObservableCollection<PHIEUDATBAN>(DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == idTiecCuoi));
                DataProvider.Ins.DataBase.SaveChanges();
                if (ListPhieuDatBan == null || ListPhieuDatBan.Count() == 0) return;
                if (ListPhieuDatBan != null)
                {
                    TongTienBan = ListPhieuDatBan.Sum(x => x.DonGiaBan);
                    DonGiaBan = ListPhieuDatBan.FirstOrDefault().DonGiaBan;
                    TongSoBan = ListPhieuDatBan.Sum(x => x.SoLuong) + ListPhieuDatBan.Sum(x => x.SoLuongDuTru);
                }

                if (ListThamSo != null) ListThamSo.ToList().Clear();
                ListThamSo = new ObservableCollection<THAMSO>(DataProvider.Ins.DataBase.THAMSOes.ToList());
                DataProvider.Ins.DataBase.SaveChanges();

                if (ListThamSo == null || ListThamSo.Count() == 0) return;
                if (ListThamSo != null)
                {
                    IsPhat = (int)ListThamSo[0].GiaTri;
                    TiLePhat = ListThamSo[1].GiaTri;
                }
                TongTienHoaDon = TongTienBan + TongTienDichVu;

                NguoiLapHoaDon = LoginViewModel.TenNguoiDung;
            }
            catch(Exception e)
            {
                MessageBox.Show("Lỗi truy xuất dữ liệu!\n");
            }
        }

        public int getMaTiecCuoi_HoaDon(DataGrid dataGrid)
        {
            if (dataGrid.SelectedItem != null)
            {
                HOADON IdTiecCuoi = dataGrid.SelectedItem as HOADON;
                return IdTiecCuoi.MaTiecCuoi;
            }
            else
            {
                return -1;
            }
        }

        public int getMaTiecCuoi_Tiec(DataGrid dataGrid)
        {
            item = dataGrid.SelectedItem as TIECCUOI;
            if (dataGrid.SelectedItem != null)
            {
                TIECCUOI IdTiecCuoi = dataGrid.SelectedItem as TIECCUOI;
                return IdTiecCuoi.MaTiecCuoi;
            }
            else
            {
                return -1;
            }
        }

        public int getMaPhieuDatBan(DataGrid dataGrid)
        {
            if (dataGrid.SelectedItem != null)
            {
                PHIEUDATBAN MaPhieu = dataGrid.SelectedItem as PHIEUDATBAN;
                return MaPhieu.MaPhieuDatBan;
            }
            else
            {
                MessageBox.Show("Lỗi");
                return -1;
            }
        }

        private void TinhLaiBaoCaoThang()
        {
            try
            {
                var BaoCaoThang = DataProvider.Ins.DataBase.BAOCAOTHANGs.Where(x => x.Thang == NgayDaiTiec.Month && x.Nam == NgayDaiTiec.Year).ToList();
                if (BaoCaoThang.Count() != 0)
                {
                    BaoCaoThang[0].TongDoanhThu += TongTienHoaDon;
                    DataProvider.Ins.DataBase.SaveChanges();
                }
                else
                {
                    var item = new BAOCAOTHANG()
                    {
                        Thang = NgayDaiTiec.Month,
                        Nam = NgayDaiTiec.Year,
                        TongDoanhThu = TongTienHoaDon
                    };
                    DataProvider.Ins.DataBase.BAOCAOTHANGs.Add(item);
                    DataProvider.Ins.DataBase.SaveChanges();
                }
                baoCaoThangViewModel.List = new ObservableCollection<BAOCAOTHANG>();
                baoCaoThangViewModel.List = new ObservableCollection<BAOCAOTHANG>(DataProvider.Ins.DataBase.BAOCAOTHANGs);
            }
            catch(Exception e)
            {
                MessageBox.Show("Lỗi tính báo cáo tháng!\n");
            }
        }

        private void TinhLaiBaoCaoNgay()
        {
            try
            {
                var BaoCaoThang = DataProvider.Ins.DataBase.BAOCAOTHANGs.Where(x => x.Thang == NgayDaiTiec.Month && x.Nam == NgayDaiTiec.Year).ToList();
                if (BaoCaoThang.Count() != 0)
                {
                    int id = BaoCaoThang[0].MaBaoCaoThang;
                    var BaoCaoNgay = DataProvider.Ins.DataBase.BAOCAONGAYs.Where(x => x.MaBaoCaoThang == id && x.Ngay == NgayDaiTiec.Day).ToList();
                    if (BaoCaoNgay.Count() != 0)
                    {
                        BaoCaoNgay[0].SoLuongTiecCuoi += 1;
                        BaoCaoNgay[0].DoanhThu += TongTienHoaDon;
                        BaoCaoNgay[0].TiLe = Convert.ToDouble(BaoCaoNgay[0].DoanhThu) / Convert.ToDouble(BaoCaoThang[0].TongDoanhThu);
                    }
                    else
                    {
                        DataProvider.Ins.DataBase.BAOCAONGAYs.Add(new BAOCAONGAY()
                        {
                            MaBaoCaoThang = id,
                            Ngay = NgayDaiTiec.Day,
                            SoLuongTiecCuoi = 1,
                            DoanhThu = TongTienHoaDon,
                            TiLe = 1
                        });
                        DataProvider.Ins.DataBase.SaveChanges();
                    }
                }
                else
                    return;
            }
            catch(Exception e)
            {
                MessageBox.Show("Lỗi tính báo cáo ngày\n");
            }
        }
        private void UpdateTiLe()
        {
            try
            {
                var BaoCaoThang = DataProvider.Ins.DataBase.BAOCAOTHANGs.Where(x => x.Thang == NgayDaiTiec.Month && x.Nam == NgayDaiTiec.Year).ToList();
                if (BaoCaoThang.Count() != 0)
                {
                    int id = BaoCaoThang[0].MaBaoCaoThang;
                    var TongTienThang = BaoCaoThang[0].TongDoanhThu;
                    var ListBaoCaoNgay = DataProvider.Ins.DataBase.BAOCAONGAYs.Where(x => x.MaBaoCaoThang == id).ToList();
                    foreach (var item in ListBaoCaoNgay)
                    {
                        item.TiLe = Convert.ToDouble(item.DoanhThu) / Convert.ToDouble(TongTienThang);

                        DataProvider.Ins.DataBase.SaveChanges();
                    }
                }
            }
            catch(Exception e)
            {
                MessageBox.Show("Lỗi cập nhật tỷ lệ!\n");
            }
        }
    }
}

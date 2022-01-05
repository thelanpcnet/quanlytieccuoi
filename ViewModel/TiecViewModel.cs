using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows;
using System.Windows.Input;
using QuanLyTiecCuoi.Model;
using System.Windows.Controls;
using System.Data;
using System.Security.AccessControl;
using MaterialDesignThemes.Wpf;

namespace QuanLyTiecCuoi.ViewModel
{
    class TiecViewModel : BaseViewModel
    {
        private string _LoaiTimKiem = "Tìm kiếm theo Tên Chú Rể";
        public string LoaiTimKiem { get => _LoaiTimKiem; set { _LoaiTimKiem = value; OnPropertyChanged(); } }
        private string _Time;
        public string Time { get => _Time; set { _Time = value; OnPropertyChanged(); } }
        private bool _IsEnable;
        public bool IsEnable { get => _IsEnable; set { _IsEnable = value; OnPropertyChanged(); } }
        private bool _IsReadOnly;
        public bool IsReadOnly { get => _IsReadOnly; set { _IsReadOnly = value; IsEnable = !_IsReadOnly; OnPropertyChanged(); } }
        private static int _CurrentMaTiecCuoi;
        public static int CurrentMaTiecCuoi { get => _CurrentMaTiecCuoi; set => _CurrentMaTiecCuoi = value; }
        private ObservableCollection<TIECCUOI> _ListTiecCuoi;
        public ObservableCollection<TIECCUOI> ListTiecCuoi { get => _ListTiecCuoi; set { _ListTiecCuoi = value; OnPropertyChanged(); } }
        private static ObservableCollection<CA> _ListCa;
        public static ObservableCollection<CA> ListCa { get => _ListCa; set { _ListCa = value; } }
        private ObservableCollection<SANH> _ListSanh;
        public ObservableCollection<SANH> ListSanh { get => _ListSanh; set { _ListSanh = value; OnPropertyChanged(); } }

        private CA _SelectedCa;
        public CA SelectedCa { get => _SelectedCa; 
            set { 
                _SelectedCa = value; 
                if(SelectedCa!= null)
                {
                    MaCa = _SelectedCa.MaCa;
                    Time = "Giờ bắt đầu: " + SelectedCa.BatDau + "  Giờ kết thúc: " + SelectedCa.KetThuc;
                }
                
                OnPropertyChanged(); 
            } }
        private SANH _SelectedSanh;
        public SANH SelectedSanh { get => _SelectedSanh; set { _SelectedSanh = value; if (SelectedSanh != null) MaSanh = _SelectedSanh.MaSanh; OnPropertyChanged(); } }
        private TIECCUOI _SelectedTiecCuoi;
        public TIECCUOI SelectedTiecCuoi
        {
            get => _SelectedTiecCuoi;
            set
            {
                _SelectedTiecCuoi = value;
                OnPropertyChanged();
                if (SelectedTiecCuoi != null)
                {
                    MaTiecCuoi = Convert.ToInt32(SelectedTiecCuoi.MaTiecCuoi);
                    TenChuRe = SelectedTiecCuoi.TenChuRe;
                    TenCoDau = SelectedTiecCuoi.TenCoDau;
                    SoDienThoai = SelectedTiecCuoi.SoDienThoai;
                    NgayDatTiec = DateTime.MinValue;
                    NgayDaiTiec = SelectedTiecCuoi.NgayDaiTiec;
                    NgayDatTiec = SelectedTiecCuoi.NgayDatTiec;
                    TienDatCoc = SelectedTiecCuoi.TienDatCoc;
                    GhiChu = SelectedTiecCuoi.GhiChu;
                    MaSanh = SelectedTiecCuoi.MaSanh;
                    MaCa = SelectedTiecCuoi.MaCa;
                    SANH temp = DataProvider.Ins.DataBase.SANHs.Where(x => x.MaSanh == MaSanh).SingleOrDefault();
                    SelectedSanh = temp;

                }
            }
        }

        private bool IsSelected = false;
        private int _MaTiecCuoi;
        public int MaTiecCuoi { get => _MaTiecCuoi; set { _MaTiecCuoi = value; OnPropertyChanged(); } }
        private int _TongSoBan;
        public int TongSoBan { get => _TongSoBan; set { _TongSoBan = value; OnPropertyChanged(); } }
        private string _TenChuRe;
        public string TenChuRe { get => _TenChuRe; set { if(value != _TenChuRe) OnPropertyChanged(); _TenChuRe = value; OnPropertyChanged(); } }
        private string _TenCoDau;
        public string TenCoDau { get => _TenCoDau; set { if (value != _TenCoDau) OnPropertyChanged(); _TenCoDau = value; OnPropertyChanged(); } }
        private string _SoDienThoai;
        public string SoDienThoai { get => _SoDienThoai; set { if (value != _SoDienThoai) OnPropertyChanged(); _SoDienThoai = value; OnPropertyChanged(); } }
        private System.DateTime _NgayDatTiec = DateTime.Now;
        public System.DateTime NgayDatTiec { get => _NgayDatTiec; 
            set {
                if (value >= NgayDaiTiec)
                {
                    MessageBox.Show("Ngày đặt tiệc phải sớm hơn Ngày đãi tiệc", "Lỗi");
                    _NgayDatTiec = NgayDaiTiec.AddDays(-1);
                    OnPropertyChanged();
                    return;
                }
                _NgayDatTiec = value;
                //if(SelectedTiecCuoi!=null)MessageBox.Show(SelectedTiecCuoi.NgayDatTiec + "");
                OnPropertyChanged();
            }
        }
        private System.DateTime _NgayDaiTiec = DateTime.Now.AddDays(1);
        public System.DateTime NgayDaiTiec { get => _NgayDaiTiec; 
            set {
                if (value <= NgayDatTiec)
                {
                    OnPropertyChanged();

                    MessageBox.Show("Ngày đặt tiệc phải sớm hơn Ngày đãi tiệc", "Lỗi");
                    _NgayDaiTiec = NgayDatTiec.AddDays(1);
                }
                else
                    if (value != _NgayDaiTiec)
                    {
                        OnPropertyChanged();
                        _NgayDaiTiec = value;
                    }
                OnPropertyChanged(); 
            } 
        }
        private decimal _TienDatCoc;
        public decimal TienDatCoc { get => _TienDatCoc; 
            set {
                if (value != _TienDatCoc) 
                    OnPropertyChanged();
                _TienDatCoc = value;
                if(_TienDatCoc < 0)
                {
                    _TienDatCoc = 0;
                    MessageBox.Show("Tiền đặt cọc không thể bé hơn 0");
                }    
                OnPropertyChanged(); 
            } 
        }
        private string _GhiChu = "";
        public string GhiChu { get => _GhiChu; set { if (value != _GhiChu) OnPropertyChanged(); _GhiChu = value; OnPropertyChanged(); } }
        private int? _MaSanh;
        public int? MaSanh { get => _MaSanh; set { _MaSanh = value; OnPropertyChanged(); } }
        private int? _MaCa;
        public int? MaCa { get => _MaCa; set { _MaCa = value; OnPropertyChanged(); } }
        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand PrintCommand { get; set; }
        public ICommand ClearCommand { get; set; }
        public ICommand DatBanvaDichVuCommand { get; set; }
        public ICommand LapHoaDonCommand { get; set; }
        public ICommand LoadPopupCommand { get; set; }
        public ICommand SelectSanhCommand { get; set; }
        public ICommand ClosePopupCommand { get; set; }
        bool Addable()
        {
            if (String.IsNullOrEmpty(TenChuRe))
                return false;
            if (String.IsNullOrEmpty(TenCoDau))
                return false;
            if (String.IsNullOrEmpty(SoDienThoai))
                return false;
            if (String.IsNullOrEmpty(NgayDaiTiec.ToString()))
                return false;
            if (String.IsNullOrEmpty(NgayDatTiec.ToString()))
                return false;
            if (MaSanh == null)
                return false;
            if (MaCa == null)
                return false;
            int temp = DataProvider.Ins.DataBase.TIECCUOIs.Where(x => x.MaCa == MaCa && x.MaSanh == MaSanh && x.NgayDaiTiec == NgayDaiTiec).Count();
            if (temp > 0)
                return false;
            return true;           
        }
        bool Enable()
        {
            int temp = DataProvider.Ins.DataBase.TIECCUOIs.Where(x => x.MaCa == MaCa && x.MaSanh == MaSanh && x.NgayDaiTiec == NgayDaiTiec).Count();
            if (temp > 0)
                return false;
            if (String.IsNullOrEmpty(TenChuRe))
                return false;
            if (String.IsNullOrEmpty(TenCoDau))
                return false;
            if (String.IsNullOrEmpty(SoDienThoai))
                return false;
            if (String.IsNullOrEmpty(NgayDaiTiec.ToString()))
                return false;
            if (String.IsNullOrEmpty(NgayDatTiec.ToString()))
                return false;
            if (MaSanh == null)
                return false;
            if (MaCa == null)
                return false;
            return true;
        }
        bool Disable()
        {
            if (SelectedTiecCuoi == null)
                return false;
            if (TenChuRe != SelectedTiecCuoi.TenChuRe)
                return false;
            if (TenCoDau != SelectedTiecCuoi.TenCoDau)
                return false;
            if (SoDienThoai != SelectedTiecCuoi.SoDienThoai)
                return false;
            if (NgayDatTiec != SelectedTiecCuoi.NgayDatTiec)
                return false;
            if (NgayDaiTiec != SelectedTiecCuoi.NgayDaiTiec)
                return false;
            if (TienDatCoc != SelectedTiecCuoi.TienDatCoc)
                return false;
            if (GhiChu != SelectedTiecCuoi.GhiChu)
                return false;
            if (MaSanh != SelectedTiecCuoi.MaSanh)
                return false;
            if (MaCa != SelectedTiecCuoi.MaCa)
                return false;
            return true;
        }
        void ClearAll()
        {
            TenChuRe = TenCoDau = SoDienThoai = GhiChu = String.Empty;
            NgayDatTiec = DateTime.MinValue;
            NgayDaiTiec = DateTime.Now.AddDays(1);
            NgayDatTiec = DateTime.Now;
            SelectedSanh = null;
            SelectedCa = null;
            TienDatCoc = 0;
            MaSanh = MaCa = null;
        }
        public TiecViewModel()
        {
            IsReadOnly = !LoginViewModel.ThayDoiTiec;
           // MessageBox.Show(IsReadOnly + "");
            ListTiecCuoi = new ObservableCollection<TIECCUOI>(DataProvider.Ins.DataBase.TIECCUOIs);
            ListCa = new ObservableCollection<CA>(DataProvider.Ins.DataBase.CAs);

            DataGridCollection = CollectionViewSource.GetDefaultView(ListTiecCuoi);
            DataGridCollection.Filter = new Predicate<object>(Filter);

            AddCommand = new RelayCommand<object>((p) => Addable() , (p) =>
            {
                SelectedTiecCuoi = new TIECCUOI()
                {
                    TenChuRe = TenChuRe,
                    TenCoDau = TenCoDau,
                    SoDienThoai = SoDienThoai,
                    NgayDatTiec = NgayDatTiec,
                    NgayDaiTiec = NgayDaiTiec,
                    TienDatCoc = TienDatCoc,
                    GhiChu = GhiChu,
                    MaSanh = SelectedSanh.MaSanh,
                    MaCa = SelectedCa.MaCa
                };
                try
                {
                    if (SelectedTiecCuoi.SoDienThoai.Length != 10)
                    {
                        MessageBox.Show("Số điện thoại không hợp lệ");
                    }
                    else
                    {
                        DataProvider.Ins.DataBase.TIECCUOIs.Add(SelectedTiecCuoi);
                        DataProvider.Ins.DataBase.SaveChanges();
                        ListTiecCuoi.Add(SelectedTiecCuoi);
                        HoaDonViewModel.ListTiecCuoi.Add(SelectedTiecCuoi);
                        MessageBox.Show("Thêm tiệc cưới thành công", "Thông báo", MessageBoxButton.OK);
                    }

                }
                catch (Exception e)
                {
                    MessageBox.Show("Thêm tiệc cưới không thành công\n" + e.ToString(), "Thông báo", MessageBoxButton.OK);
                }

            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedTiecCuoi == null)
                    return false;
                var displayList = DataProvider.Ins.DataBase.TIECCUOIs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi);
                if (displayList != null && displayList.Count() != 0 && !Disable() && Enable())
                    return true;
                return false;
            }, (p) =>
            {
                var ccc = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi).Count();
                if (ccc > 0)
                {
                    int TongSoBan = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi).Sum(slb => slb.SoLuong);
                    if(TongSoBan > SelectedSanh.SoLuongBanToiDa)
                    {
                        MessageBox.Show("Số lượng bàn vượt qua số lượng bàn tối đa của sảnh", "Thông báo");
                        SANH tempsanh = DataProvider.Ins.DataBase.SANHs.Where(x => x.MaSanh == SelectedTiecCuoi.MaSanh).SingleOrDefault();
                        SelectedSanh = tempsanh;
                        return;
                    }
                }
                var check = DataProvider.Ins.DataBase.HOADONs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi);
                if (check != null && check.Count() > 0)
                {
                    MessageBox.Show("Không thể chỉnh sửa vì Tiệc cưới này đã được lập hóa đơn", "Lưu ý");
                        return;
                }
                else
                {
                    int temp = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == MaTiecCuoi).Count();
                    if (temp > 0 && SelectedTiecCuoi.SANH.LOAISANH.DonGiaBanToiThieu != SelectedSanh.LOAISANH.DonGiaBanToiThieu)
                    {
                        MessageBoxResult result = MessageBox.Show("Bạn đã đổi qua loại sảnh với đơn giá bàn tối thiểu khác \n Xác nhận đổi các đơn giá bàn bé hơn thành Đơn giá bàn tối thiểu mới? \n" +
                            "(Nếu chọn không sẽ không sửa thông tin tiệc cưới)", "Thông báo", MessageBoxButton.YesNo);
                        if (result == MessageBoxResult.Yes)
                        {
                            PhieuDatBanViewModel.DonGiaBanToiThieu = SelectedSanh.LOAISANH.DonGiaBanToiThieu;
                            PhieuDatBanViewModel.SoLuongBanToiDa = SelectedSanh.SoLuongBanToiDa;
                            try
                            {
                                temp = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == MaTiecCuoi && x.DonGiaBan < SelectedSanh.LOAISANH.DonGiaBanToiThieu).Count();
                                for (int i = 0; i < temp; i++)
                                {
                                    var PhieuDatBan = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi && x.DonGiaBan < SelectedSanh.LOAISANH.DonGiaBanToiThieu).SingleOrDefault();
                                    PhieuDatBan.DonGiaBan = SelectedSanh.LOAISANH.DonGiaBanToiThieu;
                                    DataProvider.Ins.DataBase.SaveChanges();
                                }
                                MessageBox.Show("Sửa đơn giá bàn thành công", "Thông báo", MessageBoxButton.OK);
                            }
                            catch(Exception e)
                            {
                                MessageBox.Show("Sửa đơn giá bàn không thành công\n", "Thông báo", MessageBoxButton.OK);
                            }

                        }
                        else
                        {
                            SANH tempsanh = DataProvider.Ins.DataBase.SANHs.Where(x => x.MaSanh == SelectedTiecCuoi.MaSanh).SingleOrDefault();
                            SelectedSanh = tempsanh;
                            return;
                        }    
                    }
                    try
                    {
                        var TiecCuoi = DataProvider.Ins.DataBase.TIECCUOIs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi).SingleOrDefault();
                        TiecCuoi.TenChuRe = TenChuRe;
                        TiecCuoi.TenCoDau = TenCoDau;
                        TiecCuoi.SoDienThoai = SoDienThoai;
                        TiecCuoi.NgayDatTiec = NgayDatTiec;
                        TiecCuoi.NgayDaiTiec = NgayDaiTiec;
                        TiecCuoi.TienDatCoc = TienDatCoc;
                        TiecCuoi.GhiChu = GhiChu;
                        TiecCuoi.MaSanh = SelectedSanh.MaSanh;
                        TiecCuoi.MaCa = SelectedCa.MaCa;
                        DataProvider.Ins.DataBase.SaveChanges();
                        ListTiecCuoi.Remove(SelectedTiecCuoi);
                        ListTiecCuoi.Add(TiecCuoi);
                        HoaDonViewModel.ListTiecCuoi.Add(SelectedTiecCuoi);
                        
                        //Cập nhật lại thông tin trên giao diện
                        ListTiecCuoi = new ObservableCollection<TIECCUOI>(DataProvider.Ins.DataBase.TIECCUOIs);
                        ListCa = new ObservableCollection<CA>(DataProvider.Ins.DataBase.CAs);

                        DataGridCollection = CollectionViewSource.GetDefaultView(ListTiecCuoi);
                        DataGridCollection.Filter = new Predicate<object>(Filter);

                        AddCommand = new RelayCommand<object>((p1) => Addable(), (p1) =>
                        {
                            SelectedTiecCuoi = new TIECCUOI()
                            {
                                TenChuRe = TenChuRe,
                                TenCoDau = TenCoDau,
                                SoDienThoai = SoDienThoai,
                                NgayDatTiec = NgayDatTiec,
                                NgayDaiTiec = NgayDaiTiec,
                                TienDatCoc = TienDatCoc,
                                GhiChu = GhiChu,
                                MaSanh = SelectedSanh.MaSanh,
                                MaCa = SelectedCa.MaCa
                            };
                            try
                            {
                                if (SelectedTiecCuoi.SoDienThoai.Length != 10)
                                {
                                    MessageBox.Show("Số điện thoại không hợp lệ");
                                }
                                else
                                {
                                    DataProvider.Ins.DataBase.TIECCUOIs.Add(SelectedTiecCuoi);
                                    DataProvider.Ins.DataBase.SaveChanges();
                                    ListTiecCuoi.Add(SelectedTiecCuoi);
                                    HoaDonViewModel.ListTiecCuoi.Add(SelectedTiecCuoi);
                                    MessageBox.Show("Sửa tiệc cưới thành công", "Thông báo", MessageBoxButton.OK);
                                }

                            }
                            catch (Exception e)
                            {
                                MessageBox.Show("Sửa tiệc cưới không thành công\n", "Thông báo", MessageBoxButton.OK);
                            }

                        });
                        MessageBox.Show("Sửa tiệc cưới thành công", "Thông báo", MessageBoxButton.OK);
                    }
                    catch (Exception e)
                    {
                        MessageBox.Show("Sửa tiệc cưới không thành công\n", "Thông báo", MessageBoxButton.OK);
                    }
                }

            });
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedTiecCuoi == null)
                    return false;
                return true;
            }, (p) =>
            {
                MessageBoxResult result;
                var check = DataProvider.Ins.DataBase.HOADONs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi);
                if(check == null || check.Count() == 0)
                {
                    result = MessageBox.Show("Tiệc cưới này chưa được lập hóa đơn \nBạn có chắc muốn xóa tiệc cưới này không", "Cảnh báo", MessageBoxButton.YesNo);
                    if (result == MessageBoxResult.Yes)
                    {
                        try
                        {
                            int count_PDB = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi).Count();
                            for (int i = 0; i < count_PDB; i++)
                            {
                                PHIEUDATBAN temp = DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi).First();
                                int count_CTPDB = DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaPhieuDatBan == temp.MaPhieuDatBan).Count();
                                for (int j = 0; j < count_CTPDB; j++)
                                {
                                    CT_PHIEUDATBAN ctpdb = DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Where(x => x.MaPhieuDatBan == temp.MaPhieuDatBan).First();
                                    DataProvider.Ins.DataBase.CT_PHIEUDATBAN.Remove(ctpdb);
                                    DataProvider.Ins.DataBase.SaveChanges();
                                }
                                DataProvider.Ins.DataBase.PHIEUDATBANs.Remove(temp);
                                DataProvider.Ins.DataBase.SaveChanges();
                            }
                            int count_PDDV = DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi).Count();
                            for (int j = 0; j < count_PDDV; j ++)
                            {
                                PHIEUDATDICHVU ctpddv = DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi).First();
                                DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Remove(ctpddv);
                                DataProvider.Ins.DataBase.SaveChanges();
                            }
                            DataProvider.Ins.DataBase.TIECCUOIs.Remove(SelectedTiecCuoi);
                            DataProvider.Ins.DataBase.SaveChanges();
                            HoaDonViewModel.ListTiecCuoi.Remove(SelectedTiecCuoi);
                            ListTiecCuoi.Remove(SelectedTiecCuoi);
                            // Refresh
                            ClearAll();
                            MessageBox.Show("Xóa tiệc cưới thành công", "Thông báo", MessageBoxButton.OK);
                            
                        }
                        catch (Exception e)
                        {
                            MessageBox.Show("Xóa tiệc cưới không thành công\n", "Thông báo", MessageBoxButton.OK);
                        }

                    }
                }           
                else
                    MessageBox.Show("Không thể xóa tiệc cưới vì đang có hóa đơn tham chiếu đến", "Thông báo", MessageBoxButton.YesNo);              
            });
            DatBanvaDichVuCommand = new RelayCommand<object>((p) => { return Disable(); }, (p) => {
                PhieuDatDichVuViewModel.CurrentMaTiecCuoi = SelectedTiecCuoi.MaTiecCuoi;
                PhieuDatDichVuViewModel.ListPhieuDatDichVu = new ObservableCollection<PHIEUDATDICHVU>(DataProvider.Ins.DataBase.PHIEUDATDICHVUs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi));
                PhieuDatBanViewModel.DonGiaBanToiThieu = SelectedSanh.LOAISANH.DonGiaBanToiThieu;
                PhieuDatBanViewModel.CurrentMaTiecCuoi = SelectedTiecCuoi.MaTiecCuoi;
                PhieuDatBanViewModel.SoLuongBanToiDa = SelectedSanh.SoLuongBanToiDa;
                PhieuDatBanViewModel.ListPhieuDatBan = new ObservableCollection<PHIEUDATBAN>(DataProvider.Ins.DataBase.PHIEUDATBANs.Where(x => x.MaTiecCuoi == SelectedTiecCuoi.MaTiecCuoi));
                DatBanvaDichVuWindow wd = new DatBanvaDichVuWindow();
                wd.ShowDialog();
            });
            LapHoaDonCommand = new RelayCommand<object>((p) => { return true; }, (p) => { HoaDon wd = new HoaDon(); wd.ShowDialog(); });
            ClearCommand = new RelayCommand<object>((p) => { return true; }, (p) => ClearAll());
            LoadPopupCommand = new RelayCommand<object>((p) => 
            {
                if (SelectedCa == null)
                    return false;
                return true;
            }, (p) => 
            {
                SelectedSanh = null;
                IsSelected = false;
                ListSanh = new ObservableCollection<SANH>(DataProvider.Ins.DataBase.SANHs.Where(x => x.TIECCUOIs.Where(y => y.NgayDaiTiec == NgayDaiTiec && y.MaSanh == x.MaSanh && y.MaCa == SelectedCa.MaCa).Count() == 0));
            });
            SelectSanhCommand = new RelayCommand<PopupBox>((p) =>
            {
                if (SelectedSanh == null)
                    return false;
                return true;
            }, (p) =>
            {
                    IsSelected = true;
                    p.IsPopupOpen = false;
            });
            ClosePopupCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                if(IsSelected == false)
                {
                    if (SelectedTiecCuoi == null)
                        SelectedSanh = null;
                    else
                    {
                        SANH temp = DataProvider.Ins.DataBase.SANHs.Where(x => x.MaSanh == SelectedTiecCuoi.MaSanh).SingleOrDefault();
                        SelectedSanh = temp;
                    }
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
            var data = obj as TIECCUOI;
            if (data != null)
            {
                if (!string.IsNullOrEmpty(_filterString))
                {
                    if (LoaiTimKiem == "Tìm kiếm theo Tên Chú Rể")
                        return data.TenChuRe.ToLower().Contains(_filterString.ToLower());
                    if (LoaiTimKiem == "Tìm kiếm theo Tên Cô Dâu")
                        return data.TenCoDau.ToLower().Contains(_filterString.ToLower());
                    if (LoaiTimKiem == "Tìm kiếm theo Số Điện Thoại")
                        return data.SoDienThoai.Contains(_filterString);
                }
                return true;
            }
            return false;
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyTiecCuoi.Model;
using System.Windows.Input;
using System.Collections.ObjectModel;
using System.Windows;

namespace QuanLyTiecCuoi.ViewModel
{
    class CaViewModel:BaseViewModel
    {
        private bool _IsEnable;
        public bool IsEnable { get => _IsEnable; set { _IsEnable = value; OnPropertyChanged(); } }
        private bool _IsReadOnly;
        public bool IsReadOnly { get => _IsReadOnly; set { _IsReadOnly = value; IsEnable = !_IsReadOnly; OnPropertyChanged(); } }
        private ObservableCollection<CA> _ListCa;
        public ObservableCollection<CA> ListCa { get => _ListCa; set { _ListCa = value; OnPropertyChanged(); } }

        private CA _SelectedItem;
        public CA SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    TenCa = SelectedItem.TenCa;
                    MaCa = SelectedItem.MaCa;
                    BatDau = SelectedItem.BatDau;
                    KetThuc = SelectedItem.KetThuc;
                }
            }
        }
      
        private string _TenCa;
        public string TenCa { get => _TenCa; set { _TenCa = value; OnPropertyChanged(); } }
        private string t="00:00:00";
        public string tt { get => t; set { tt = value; OnPropertyChanged(); MessageBox.Show(tt); } }
        private System.TimeSpan _BatDau;
        public System.TimeSpan BatDau { get => _BatDau; set { _BatDau = value; OnPropertyChanged(); } }
        private System.TimeSpan _KetThuc;
        public System.TimeSpan KetThuc { get => _KetThuc; set { _KetThuc = value; OnPropertyChanged(); } }
        private int _MaCa;
        public int MaCa { get => _MaCa; set { _MaCa = value; OnPropertyChanged(); } }
        private bool _ApDungQuiDinhPhat { get; set; }
        private double _TiLePhat { get; set; }
        public bool ApDungQuiDinhPhat { get => _ApDungQuiDinhPhat; set { _ApDungQuiDinhPhat = value; OnPropertyChanged(); } }
        public double TiLePhat { get => _TiLePhat; set { _TiLePhat = value; OnPropertyChanged(); } }
        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand RefreshCommand { get; set; }
        public ICommand EditQuiDinhCommand { get; set; }
        

        public void ThayDoiApDungQuiDinh()
        {
            var ApDungQD = DataProvider.Ins.DataBase.THAMSOes.Where(x => x.TenThamSo == "ApDungQuiDinhPhat").First();
            if (ApDungQuiDinhPhat)
                ApDungQD.GiaTri = 1;
            else
                ApDungQD.GiaTri = 0;
            DataProvider.Ins.DataBase.SaveChanges();
        }

        public void ThayDoiTiLePhat()
        {
            var TiLeP = DataProvider.Ins.DataBase.THAMSOes.Where(x => x.TenThamSo == "TiLePhat").First();
            TiLeP.GiaTri = TiLePhat / 100;
            DataProvider.Ins.DataBase.SaveChanges();

        }
        public CaViewModel()
        {
            IsReadOnly = !LoginViewModel.ThayDoiQuiDinh;
            ListCa = new ObservableCollection<CA>(DataProvider.Ins.DataBase.CAs);
            //load tỉ lệ phạt lên từ database
            var TLPhat = DataProvider.Ins.DataBase.THAMSOes.Where(x => x.TenThamSo == "TiLePhat").First();
            TiLePhat = TLPhat.GiaTri*100;
            //load áp dụng qui định hay không từ database
            var ADQDP = DataProvider.Ins.DataBase.THAMSOes.Where(x => x.TenThamSo == "ApDungQuiDinhPhat").First();
            if (ADQDP.GiaTri == 1)
                ApDungQuiDinhPhat = true;
            else
                ApDungQuiDinhPhat = false;
            /////////////////////////////////////////
            AddCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(TenCa) )
                    return false;
                return true;
            }, (p) =>
            {
                try
                {
                    var Ca = new CA()
                    {
                        TenCa = TenCa,
                        MaCa = MaCa,
                        BatDau = BatDau,
                        KetThuc = KetThuc,
                    };
                    DataProvider.Ins.DataBase.CAs.Add(Ca);
                    DataProvider.Ins.DataBase.SaveChanges();
                    ListCa.Add(Ca);
                    MessageBox.Show("Thêm ca thành công !");
                    SelectedItem = Ca;
                }
                catch(Exception e)
                {
                    MessageBox.Show("Thêm ca không thành công\n", "Thông báo", MessageBoxButton.OK);
                }
                
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;
                var displayList = DataProvider.Ins.DataBase.CAs.Where(x => x.MaCa == SelectedItem.MaCa);
                if (displayList.Count() == 0 && displayList == null  )
                    return false;
                if (SelectedItem.TenCa == TenCa && SelectedItem.BatDau == BatDau && SelectedItem.KetThuc == KetThuc)
                    return false;
                return true;
            }, (p) =>
            {
                try
                {
                    var Ca = DataProvider.Ins.DataBase.CAs.Where(x => x.MaCa == SelectedItem.MaCa).SingleOrDefault();
                    Ca.TenCa = SelectedItem.TenCa;
                    Ca.BatDau = SelectedItem.BatDau;
                    Ca.KetThuc = SelectedItem.KetThuc;
                    DataProvider.Ins.DataBase.SaveChanges();
                    SelectedItem.TenCa = TenCa;
                    SelectedItem.BatDau = BatDau;
                    SelectedItem.KetThuc = KetThuc;
                    SelectedItem.MaCa = MaCa;
                    
                    //Cập nhật thông tin trên giao diện
                    ListCa = new ObservableCollection<CA>(DataProvider.Ins.DataBase.CAs);
                    //load tỉ lệ phạt lên từ database
                    var TLPhat1 = DataProvider.Ins.DataBase.THAMSOes.Where(x => x.TenThamSo == "TiLePhat").First();
                    TiLePhat = TLPhat1.GiaTri * 100;
                    //load áp dụng qui định hay không từ database
                    var ADQDP1 = DataProvider.Ins.DataBase.THAMSOes.Where(x => x.TenThamSo == "ApDungQuiDinhPhat").First();
                    if (ADQDP1.GiaTri == 1)
                        ApDungQuiDinhPhat = true;
                    else
                        ApDungQuiDinhPhat = false;
                    /////////////////////////////////////////
                    AddCommand = new RelayCommand<object>((p1) =>
                    {
                        if (string.IsNullOrEmpty(TenCa))
                            return false;
                        return true;
                    }, (p1) =>
                    {
                        try
                        {
                            var Ca1 = new CA()
                            {
                                TenCa = TenCa,
                                MaCa = MaCa,
                                BatDau = BatDau,
                                KetThuc = KetThuc,
                            };
                            DataProvider.Ins.DataBase.CAs.Add(Ca1);
                            DataProvider.Ins.DataBase.SaveChanges();
                            ListCa.Add(Ca1);
                            MessageBox.Show("Sửa ca thành công !");
                            SelectedItem = Ca1;
                        }
                        catch (Exception e)
                        {
                            MessageBox.Show("Sửa ca không thành công\n", "Thông báo", MessageBoxButton.OK);
                        }

                    });

                    EditCommand = new RelayCommand<object>((p2) =>
                    {
                        if (SelectedItem == null)
                            return false;
                        var displayList = DataProvider.Ins.DataBase.CAs.Where(x => x.MaCa == SelectedItem.MaCa);
                        if (displayList.Count() == 0 && displayList == null)
                            return false;
                        if (SelectedItem.TenCa == TenCa && SelectedItem.BatDau == BatDau && SelectedItem.KetThuc == KetThuc)
                            return false;
                        return true;
                    }, (p2) =>
                    {
                        try
                        {
                            var Ca2 = DataProvider.Ins.DataBase.CAs.Where(x => x.MaCa == SelectedItem.MaCa).SingleOrDefault();
                            Ca2.TenCa = SelectedItem.TenCa;
                            Ca2.BatDau = SelectedItem.BatDau;
                            Ca2.KetThuc = SelectedItem.KetThuc;
                            DataProvider.Ins.DataBase.SaveChanges();
                            SelectedItem.TenCa = TenCa;
                            SelectedItem.BatDau = BatDau;
                            SelectedItem.KetThuc = KetThuc;
                            SelectedItem.MaCa = MaCa;
                            MessageBox.Show("Sửa thông tin ca thành công !");
                        }
                        catch (Exception e)
                        {
                            MessageBox.Show("Sửa thông tin ca không thành công\n", "Thông báo", MessageBoxButton.OK);
                        }
                    });
                    MessageBox.Show("Sửa thông tin ca thành công !");
                }
                catch(Exception e)
                {
                    MessageBox.Show("Sửa thông tin ca không thành công\n", "Thông báo", MessageBoxButton.OK);
                }
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;
                return true;
            }, (p) =>
            {
                var Ca = DataProvider.Ins.DataBase.CAs.Where(x => x.MaCa == SelectedItem.MaCa).First();
                var TiecCuoi = DataProvider.Ins.DataBase.TIECCUOIs.Where(x => x.MaCa == SelectedItem.MaCa);
                if (TiecCuoi.Count() != 0)
                {
                    MessageBox.Show("Không thể xóa vì có tồn tại tiệc cưới được đặt ở ca này !");
                    return;
                }
                try
                {
                    DataProvider.Ins.DataBase.CAs.Remove(Ca);
                    DataProvider.Ins.DataBase.SaveChanges();
                    ListCa.Remove(Ca);
                    MessageBox.Show("Xóa ca thành công !");
                    //refresh nhap
                    TenCa = "";
                    BatDau = TimeSpan.Zero;
                    KetThuc = TimeSpan.Zero;
                }
                catch(Exception e)
                {
                    MessageBox.Show("Xóa ca không thành công\n", "Thông báo", MessageBoxButton.OK);
                }
                
            });

            RefreshCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                TenCa = "";
                BatDau = TimeSpan.Zero;
                KetThuc = TimeSpan.Zero;
            });

            EditQuiDinhCommand = new RelayCommand<object>((p) =>
            {
                var ApDungQDP = DataProvider.Ins.DataBase.THAMSOes.Where(x => x.TenThamSo == "ApDungQuiDinhPhat").First();
                var TLP = DataProvider.Ins.DataBase.THAMSOes.Where(x => x.TenThamSo == "TiLePhat").First();
                bool test = true;
                if (ApDungQDP.GiaTri == 0)
                    test = false;
                if (test == ApDungQuiDinhPhat && TLP.GiaTri == TiLePhat/100)
                    return false;
                return true;
            }, (p) =>
            {
                try
                {
                    ThayDoiApDungQuiDinh();
                    ThayDoiTiLePhat();
                    MessageBox.Show("Sửa qui định thành công !");
                }
                catch(Exception e)
                {
                    MessageBox.Show("Sửa qui định không thành công\n", "Thông báo", MessageBoxButton.OK);
                }
            });
        }
    }
}

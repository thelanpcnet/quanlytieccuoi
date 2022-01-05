using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using MahApps.Metro.Controls;
using System.Windows.Shapes;
using QuanLyTiecCuoi.Model;
using QuanLyTiecCuoi.ViewModel;

namespace QuanLyTiecCuoi
{
    /// <summary>
    /// Interaction logic for PhieuDatBanWindow.xaml
    /// </summary>
    public partial class DatBanvaDichVuWindow : MetroWindow
    {
        public DatBanvaDichVuWindow()
        {
            InitializeComponent();
            SetAllNull();
        }

        private void SetAllNull()
        {
            //dtg_DanhSachDatBan.SelectedItem = dtg_DanhSachDatDichVu.SelectedItem = dtg_DanhSachDatMonAn.SelectedItem = null;
            nbr_PDB_SoLuong.Value = nbr_PDB_SoLuongDuTru.Value = nbr_DV_SoLuong.Value = 0;
            tbx_PDB_LoaiBan.Text = tbx_PDB_GhiChu.Text = "";
            tbx_DV_ThanhTien.Text = "0";
            lbl_DonGiaBan.Content = PhieuDatBanViewModel.DonGiaBanToiThieu+"";
            dtg_DanhSachDatBan.SelectedItem = null;
            dtg_DanhSachDatDichVu.SelectedItem = null;
            dtg_DanhSachDichVu.SelectedItem = null;
        }
    }
}

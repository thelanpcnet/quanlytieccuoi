using System;
using System.Collections.Generic;
using System.IO;
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
using System.Windows.Shapes;
namespace QuanLyTiecCuoi
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
            tbx_TenDangNhap.Text = Properties.Settings.Default.TenDangNhap;
            pwb_MatKhau.Password = Properties.Settings.Default.MatKhau;
            Loading_Data();
        }
        private void Loading_Data()
        {
            if (String.IsNullOrEmpty(Properties.Settings.Default.TenDangNhap) && String.IsNullOrEmpty(Properties.Settings.Default.MatKhau))
                cbx_NhoMatKhau.IsChecked = false;
            else
            {
                cbx_NhoMatKhau.IsChecked = true;
            }
               
        }
        private void btn_Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
        private void cbx_NhoMatKhau_Checked(object sender, RoutedEventArgs e)
        {
            cbx_NhoMatKhau.FontWeight = FontWeights.Bold;
            Properties.Settings.Default.TenDangNhap = tbx_TenDangNhap.Text;
            Properties.Settings.Default.MatKhau = pwb_MatKhau.Password;
            Properties.Settings.Default.Save();
        }

        private void cbx_NhoMatKhau_Unchecked(object sender, RoutedEventArgs e)
        {
            cbx_NhoMatKhau.FontWeight = FontWeights.Normal;
            Properties.Settings.Default.TenDangNhap = "" ;
            Properties.Settings.Default.MatKhau = "";
            Properties.Settings.Default.Save();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if(cbx_NhoMatKhau.IsChecked == true)
            {
                Properties.Settings.Default.TenDangNhap = tbx_TenDangNhap.Text;
                Properties.Settings.Default.MatKhau = pwb_MatKhau.Password;
                Properties.Settings.Default.Save();
            }
        }
    }
}

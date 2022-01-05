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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuanLyTiecCuoi.UserControls
{
    /// <summary>
    /// Interaction logic for usc_Sanh.xaml
    /// </summary>
    public partial class usc_Sanh : UserControl
    {
        public usc_Sanh()
        {
            InitializeComponent();
        }

        private void Nud_SLBTD_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double?> e)
        {
            if (nud_SLBTD.Value.ToString() == "")
                nud_SLBTD.Value = 0;
        }

        private void Nud_DonGiaBanToiThieu_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double?> e)
        {
            if (nud_DonGiaBanToiThieu.Value.ToString() == "")
                nud_DonGiaBanToiThieu.Value = 0;
        }
    }
}

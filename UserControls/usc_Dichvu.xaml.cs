﻿using System;
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
    /// Interaction logic for usc_Dichvu.xaml
    /// </summary>
    public partial class usc_Dichvu : UserControl
    {
        public usc_Dichvu()
        {
            InitializeComponent();
        }

        private void Nud_DonGia_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double?> e)
        {
            if (nud_DonGia.Value.ToString() == "")
                nud_DonGia.Value = 0;
        }
    }
}

﻿using System;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using MahApps.Metro.Controls;
using QuanLyTiecCuoi.Model;

namespace QuanLyTiecCuoi
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void HamburgerMenuControl_OnItemClick(object sender, ItemClickEventArgs e)
        {
            this.HamburgerMenuControl.Content = e.ClickedItem;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
            Login f = new Login();
            f.Show();
        }
    }
}

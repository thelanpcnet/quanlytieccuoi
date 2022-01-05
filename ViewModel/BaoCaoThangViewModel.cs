using Microsoft.Office.Interop.Excel;
using QuanLyTiecCuoi.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;

namespace QuanLyTiecCuoi.ViewModel
{
    class BaoCaoThangViewModel : BaseViewModel, Microsoft.Office.Interop.Excel.Window
    {
        private bool _IsEnable;
        public bool IsEnable { get => _IsEnable; set { _IsEnable = value; OnPropertyChanged(); } }
        private bool _IsReadOnly;
        public bool IsReadOnly { get => _IsReadOnly; set { _IsReadOnly = value; IsEnable = !_IsReadOnly; OnPropertyChanged(); } }

        private  ObservableCollection<BAOCAOTHANG> _List;
        public  ObservableCollection<BAOCAOTHANG> List { get => _List; set { _List = value; OnPropertyChanged(); } }
        private BAOCAOTHANG _SelectedItem;
        public BAOCAOTHANG SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    Thang = SelectedItem.Thang;
                    Nam = SelectedItem.Nam;
                    TongDoanhThu = SelectedItem.TongDoanhThu;
                }
            }
        }

        private int _Thang;
        public int Thang { get => _Thang; set { _Thang = value; OnPropertyChanged(); } }


        private int _Nam;
        public int Nam { get => _Nam; set { _Nam = value; OnPropertyChanged();  } }

        private decimal _TongDoanhThu;
        public decimal TongDoanhThu { get => _TongDoanhThu; set { _TongDoanhThu = value; OnPropertyChanged();  } }

        public ICommand DoubleClickCommand { get; set; }
        public ICommand ExportToExcel { set; get; }

        private ObservableCollection<BAOCAONGAY> _ListBaoCaoNgay;
        public ObservableCollection<BAOCAONGAY> ListBaoCaoNgay { get => _ListBaoCaoNgay; set { _ListBaoCaoNgay = value; OnPropertyChanged(); } }

        private ObservableCollection<HOADON> _ListHoaDon;
        public ObservableCollection<HOADON> ListHoaDon { get => _ListHoaDon; set { _ListHoaDon = value; OnPropertyChanged(); } }

        public BaoCaoThangViewModel()
        {
            IsReadOnly = !LoginViewModel.ThayDoiDoanhThu;
            List = new ObservableCollection<BAOCAOTHANG>(DataProvider.Ins.DataBase.BAOCAOTHANGs);
            
            DataProvider.Ins.DataBase.SaveChanges();
            DataGridCollection = CollectionViewSource.GetDefaultView(List);
            DataGridCollection.Filter = new Predicate<object>(Filter);
            DoubleClickCommand = new RelayCommand<DataGrid>((p) =>
            {
                return true;
            }, (p) =>
            {
                int id = getMaBaoCaoThang(p);
                ListBaoCaoNgay = new ObservableCollection<BAOCAONGAY>(DataProvider.Ins.DataBase.BAOCAONGAYs.Where(x => x.MaBaoCaoThang == id));
                DataProvider.Ins.DataBase.SaveChanges();    
            });
            ExportToExcel = new RelayCommand<DataGrid>((p) => { return true; }, (p) => { Ex2Excel(p); });
        }


        // Search box
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
            var data = obj as BAOCAOTHANG;
            if (data != null)
            {
                if (!string.IsNullOrEmpty(_filterString))
                {
                    return data.Nam.ToString().Contains(_filterString);
                }
                return true;
            }
            return false;
        }
        public int getMaBaoCaoThang(DataGrid dataGrid)
        {
            if (dataGrid.SelectedItem != null)
            {
                BAOCAOTHANG IdBaoCaoThang = dataGrid.SelectedItem as BAOCAOTHANG;
                return IdBaoCaoThang.MaBaoCaoThang;
            }
            else
            {
                return -1;
            }
        }

        // Export to excel
        private void Ex2Excel(DataGrid dataGrid)
        {
            try
            {
                Microsoft.Office.Interop.Excel.Application excel = new Microsoft.Office.Interop.Excel.Application();
                excel.Visible = true;
                Workbook workbook = excel.Workbooks.Add(System.Reflection.Missing.Value);
                Worksheet sheet1 = (Worksheet)workbook.Sheets[1];

                for (int j = 0; j < dataGrid.Columns.Count; j++)
                {
                    Range myRange = (Range)sheet1.Cells[1, j + 1];
                    sheet1.Cells[1, j + 1].Font.Bold = true;
                    sheet1.Columns[j + 1].ColumnWidth = 15;
                    myRange.Value2 = dataGrid.Columns[j].Header;
                }
                for (int i = 0; i < dataGrid.Columns.Count; i++)
                {
                    for (int j = 0; j < dataGrid.Items.Count; j++)
                    {
                        TextBlock b = dataGrid.Columns[i].GetCellContent(dataGrid.Items[j]) as TextBlock;
                        Microsoft.Office.Interop.Excel.Range myRange = (Microsoft.Office.Interop.Excel.Range)sheet1.Cells[j + 2, i + 1];
                        myRange.Value2 = b.Text;
                    }
                }

            }
            catch(Exception e)
            {
                MessageBox.Show("Không thể xuất file excel!");
            }
        }

        public dynamic Activate()
        {
            throw new NotImplementedException();
        }

        public dynamic ActivateNext()
        {
            throw new NotImplementedException();
        }

        public dynamic ActivatePrevious()
        {
            throw new NotImplementedException();
        }

        public bool Close(object SaveChanges, object Filename, object RouteWorkbook)
        {
            throw new NotImplementedException();
        }

        public dynamic LargeScroll(object Down, object Up, object ToRight, object ToLeft)
        {
            throw new NotImplementedException();
        }

        public Microsoft.Office.Interop.Excel.Window NewWindow()
        {
            throw new NotImplementedException();
        }

        public dynamic _PrintOut(object From, object To, object Copies, object Preview, object ActivePrinter, object PrintToFile, object Collate, object PrToFileName)
        {
            throw new NotImplementedException();
        }

        public dynamic PrintPreview(object EnableChanges)
        {
            throw new NotImplementedException();
        }

        public dynamic ScrollWorkbookTabs(object Sheets, object Position)
        {
            throw new NotImplementedException();
        }

        public dynamic SmallScroll(object Down, object Up, object ToRight, object ToLeft)
        {
            throw new NotImplementedException();
        }

        public int PointsToScreenPixelsX(int Points)
        {
            throw new NotImplementedException();
        }

        public int PointsToScreenPixelsY(int Points)
        {
            throw new NotImplementedException();
        }

        public dynamic RangeFromPoint(int x, int y)
        {
            throw new NotImplementedException();
        }

        public void ScrollIntoView(int Left, int Top, int Width, int Height, object Start)
        {
            throw new NotImplementedException();
        }

        public dynamic PrintOut(object From, object To, object Copies, object Preview, object ActivePrinter, object PrintToFile, object Collate, object PrToFileName)
        {
            throw new NotImplementedException();
        }

        public Microsoft.Office.Interop.Excel.Application Application => throw new NotImplementedException();

        public XlCreator Creator => throw new NotImplementedException();

        public dynamic Parent => throw new NotImplementedException();

        public Range ActiveCell => throw new NotImplementedException();

        public Chart ActiveChart => throw new NotImplementedException();

        public Pane ActivePane => throw new NotImplementedException();

        public dynamic ActiveSheet => throw new NotImplementedException();

        public dynamic Caption { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool DisplayFormulas { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool DisplayGridlines { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool DisplayHeadings { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool DisplayHorizontalScrollBar { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool DisplayOutline { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool _DisplayRightToLeft { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool DisplayVerticalScrollBar { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool DisplayWorkbookTabs { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool DisplayZeros { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool EnableResize { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool FreezePanes { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public int GridlineColor { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public XlColorIndex GridlineColorIndex { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public double Height { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public int Index => throw new NotImplementedException();

        public double Left { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public string OnWindow { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public Panes Panes => throw new NotImplementedException();

        public Range RangeSelection => throw new NotImplementedException();

        public int ScrollColumn { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public int ScrollRow { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public Sheets SelectedSheets => throw new NotImplementedException();

        public dynamic Selection => throw new NotImplementedException();

        public bool Split { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public int SplitColumn { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public double SplitHorizontal { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public int SplitRow { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public double SplitVertical { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public double TabRatio { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public double Top { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public XlWindowType Type => throw new NotImplementedException();

        public double UsableHeight => throw new NotImplementedException();

        public double UsableWidth => throw new NotImplementedException();

        public bool Visible { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public Range VisibleRange => throw new NotImplementedException();

        public double Width { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public int WindowNumber => throw new NotImplementedException();

        public XlWindowState WindowState { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public dynamic Zoom { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public XlWindowView View { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool DisplayRightToLeft { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public SheetViews SheetViews => throw new NotImplementedException();

        public dynamic ActiveSheetView => throw new NotImplementedException();

        public bool DisplayRuler { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool AutoFilterDateGrouping { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public bool DisplayWhitespace { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public int Hwnd => throw new NotImplementedException();
    }
}

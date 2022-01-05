using QuanLyTiecCuoi.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Excel = Microsoft.Office.Interop.Excel;
using Microsoft.Office.Interop.Excel;
using System.Windows.Controls;


namespace QuanLyTiecCuoi.ViewModel
{
    class BaoCaoNgayViewModel : BaseViewModel, Excel.Window
    {
        private bool _IsEnable;
        public bool IsEnable { get => _IsEnable; set { _IsEnable = value; OnPropertyChanged(); } }
        private bool _IsReadOnly;
        public bool IsReadOnly { get => _IsReadOnly; set { _IsReadOnly = value; IsEnable = !_IsReadOnly; OnPropertyChanged(); } }
        private ObservableCollection<BAOCAONGAY> _List;
        public ObservableCollection<BAOCAONGAY> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private BAOCAONGAY _SelectedItem;

        public BAOCAONGAY SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    Ngay = SelectedItem.Ngay;
                    SoLuongTiecCuoi = SelectedItem.SoLuongTiecCuoi;
                    DoanhThu = SelectedItem.DoanhThu;
                    TiLe = SelectedItem.TiLe;
                }
            }
        }

        private int _Ngay;
        public int Ngay { get => _Ngay; set { _Ngay = value; OnPropertyChanged(); } }


        private int _SoLuongTiecCuoi;
        public int SoLuongTiecCuoi { get => _SoLuongTiecCuoi; set { _SoLuongTiecCuoi = value; OnPropertyChanged(); } }


        private decimal _DoanhThu;
        public decimal DoanhThu { get => _DoanhThu; set { _DoanhThu = value; OnPropertyChanged(); } }


        private double _TiLe;
        public double TiLe { get => _TiLe; set { _TiLe = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }

        public ICommand ExportToExcel { get; set; }

        private string tongdoanhthu;
        public string TongDoanhThu 
        {
            get { return tongdoanhthu; }
            set 
            {
                tongdoanhthu = value;
                OnPropertyChanged("TongDoanhThu");
            } 
        }

        public BaoCaoNgayViewModel()
        {
            IsReadOnly = !LoginViewModel.ThayDoiDoanhThu;
            List = new ObservableCollection<BAOCAONGAY>(DataProvider.Ins.DataBase.BAOCAONGAYs);
            tongdoanhthu = TinhTongDoanhThu().ToString();
            ExportToExcel = new RelayCommand<DataGrid>((p) => { return true; }, (p) => { Ex2Excel(p); });
        }

        private decimal TinhTongDoanhThu()
        {
            decimal sum = 0;
            sum = List.Sum(i => i.DoanhThu);
            return sum;
        }

        private void Ex2Excel(DataGrid dataGrid)
        {
            Excel.Application excel = new Excel.Application();
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

        public Window NewWindow()
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

        public Application Application => throw new NotImplementedException();

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

        Excel.Window Excel.Window.NewWindow()
        {
            throw new NotImplementedException();
        }

        Excel.Application Excel.Window.Application => throw new NotImplementedException();
    }
}

   M S B A M L   `   `   `  ���� T  PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls   QuanLyTiecCuoi*   $QuanLyTiecCuoi.UserControls.usc_Tiec   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     Pcontrols;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors   
  TiecVM  � DataContext#  [  .��� 
�������.+�]� ��. .+��� $��Quản Lý Tiệc Cưới��$��Center=�$	��Top=�$��32(����	#FF1F656C$��0,5,0,0q�$	��Top=�$��Medium"�� $��Bottom=� � ColumnDefinitions �� �� �� �� .+���   MaterialDesignRaisedButton#��[ $��0��$��10q� ^� ShowOnDisabled .  � ToolTip$ Làm mới vùng nhập�����	#FF2DB0AA
�������{��� *
IsEnable+���� *ClearCommand+.��
Làm mới�� #��[ $��1��$��10q� . $a [Thêm tiệc cưới
Nếu không tồn tại sảnh phù hợp sẽ không nhấn được�����	#FF2DB0AA
�������{��� *
IsEnable+���� *
AddCommand+.��Thêm tiệc cưới�� #��[ $��2��$��10q� . $k eSửa thông tin đặt Tiệc
Nếu Tiệc đã được lập hóa đơn sẽ không sửa được�����	#FF2DB0AA
�������{��� *
IsEnable+���� *EditCommand+.��Sửa tiệc cưới��  . #��[ $��3��$��10q�$# Xóa thông tin đặt Tiệc��
���<��
�������{��� *
IsEnable+���� *DeleteCommand+.��Xóa tiệc cưới#  MaterialDesignThemes.Wpf.Card  -     Name$ mdc_ThongTinDatTiec��$	��Top=�$��
10,10,10,5q�.��� .+��� $��Thông tin đặt tiệc��$��
10,5,10,10q�$��SemiBold"�.��� $��5,10,5,5q� �� �� .+�� $��0��$��0,0,20,0q� �� $
��0.8* ��� $��2* �.+��  � RowDefinitions �� �� �� �� �� .+��� $��0��$��Tên chú rể��$��SemiBold"��� $��1��$��Tên cô dâu��$��SemiBold"��� $��2��$��Điện thoại��$��SemiBold"��� $��3��$��Ngày đặt tiệc��$��SemiBold"��� $��4��$��Ghi chú��$��SemiBold"�� $��1��$��10,0,0,0q� �� �� �� �� �� .+��� -   $��0��$��2q�
���   �$��1q� �� 
IsReadOnly �� *
IsReadOnly+���� *
TenChuRe+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=��� -   $��1��$��2q�
���   �$��1q� �� *
IsReadOnly+���� *
TenCoDau+$ PropertyChanged=�$ TwoWay=��� -   $��2��$��2q�
���   �$��1q� �� *
IsReadOnly+���� *SoDienThoai+$ PropertyChanged=�$ TwoWay=�(  "System.Windows.Controls.DatePicker  -   $��dpk_NgayDatTiec��$��3��$��2q�
���   �$��1q�*   $MahApps.Metro.Controls.TextBoxHelper	   	Watermark$	 Hãy chọn ngày��{��� *
IsEnable+$ OneWay=�
   SelectedDate
 �� *NgayDatTiec+$ PropertyChanged=� �� StringFormat$ 
MM/dd/yyyy��$ TwoWay=��� $��4��$��2q�
���   �$��1q� �� *
IsReadOnly+���� *GhiChu+$ PropertyChanged=�$ TwoWay=�� $��1��$��20,0,0,0q� �� $
��0.8* ��� $��2* �.+��  �� �� �� �� �� .+��� $��0��$��Ngày đãi tiệc��$��SemiBold"��� $��1��$��Ca���� $��2��$��Sảnh���� $��3��$��Tiền đặt cọc���� $��4��$��
Chi tiết��� $��1��$��10,0,0,0q� �� �� �� �� �� .+�  -   $��dpk_NgayDaiTiec��$��0��$��2q�
���   �$��1q�$	 Hãy chọn ngày��{��� *
IsEnable+
 �� *NgayDaiTiec+$ TwoWay=�$ PropertyChanged=�$ 
MM/dd/yyyy���� $��1��$��2q�
���   �$��1q� �� DisplayMemberPath$ TenCa��{��� *
IsEnable+ �� Text �� *SelectedTiecCuoi.CA.TenCa+$ PropertyChanged=�$ OneWay=� �� *Time+ �� SelectedItem �� *
SelectedCa+$ TwoWay=�$ PropertyChanged=����� *ListCa+$ PropertyChanged=�$ OneWay=��� $��2��.������ .R�� #  [  .+���  . $��2q�
���   �$��1q����� *SelectedSanh.TenSanh+'  !MaterialDesignThemes.Wpf.PopupBox  $��popup��#  [  $��Right=�   PlacementMode$ BottomAndAlignRightEdges=�   	StaysOpen .    	PopupMode$ Click=�{��� *
IsEnable+   ToggleContent '  !MaterialDesignThemes.Wpf.PackIcon  $) #Hiện danh sách sảnh phù hợp��$	��5,2q�   Kind$ ChevronDoubleDown=�
���<��*  $Microsoft.Xaml.Behaviors.Interaction   Triggers +  %Microsoft.Xaml.Behaviors.EventTrigger     	EventName$ Opened��*  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 2	  ,Microsoft.Xaml.Behaviors.InvokeCommandAction	   	  Command �� *LoadPopupCommand+  $ Closed��. 	   �� *ClosePopupCommand+   PopupContent. ]� $	��550��$	��500����. .+��� $��Bottom=�#��[ $
��10,2q�$	��200��$��0q�$&  Chọn sảnh cho tiệc cưới�����	#FF0F5699
����������� *SelectSanhCommand+����  �� ElementName$ popup��.��Chọn Sảnh�� $"��Danh sách sảnh phù hợp��$��10q�.��&
   System.Windows.Controls.DataGrid
   
 Name$ dtg_Sanh�� 
  
IsReadOnly .  
  CanUserSortColumns .  
  CanUserAddRows .   
  SelectionUnit$ FullRow=� 
  AutoGenerateColumns .   �� *SelectedSanh+$ TwoWay=����� *
ListSanh+$ PropertyChanged=�  
  Columns  0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn!   Header$! Tên Sảnh��1  +System.Windows.Controls.DataGridBoundColumn"   Binding" �� *	TenSanh+  $&!  Số lượng bàn tối đa��" �� *SoLuongBanToiDa+  $! 	Ghi chú��" �� *GhiChu+  #   Width5  /System.Windows.Controls.DataGridLengthConverter$# * $#! Đơn giá bàn tối thiểu��" �� *LOAISANH.DonGiaBanToiThieu+.��*   $MahApps.Metro.Controls.NumericUpDown  -   $��nbr_TienDatCoc��$��3��$��2q�
���   �$��1q�$   TextAlignment$
$ Left=�%   Interval$% 100000Q�&   NumericInputMode$& Numbers=�'   
IsReadOnly' �� *
IsReadOnly+(   Value( �� *
TienDatCoc+$ PropertyChanged=�$ TwoWay=��� $��4�� . #��[ $��2q�$� �TÁC DỤNG: Mở phiếu đặt bàn và phiếu đặt dịch vụ
LƯU Ý 1: Nếu đang thêm tiệc cưới cần lưu lại tiệc cưới
LƯU Ý 2: Nếu đang chỉnh sửa tiệc cưới cần đảm bảo
dữ liệu trong Thông tin giống với trong Danh sách�����	#FF2DB0AA
����������� *DatBanvaDichVuCommand+.��" Mở Đặt bàn và Dịch vụ  -   $ mdc_DanhSachTiecCuoi��$��Bottom=�$��
10,5,10,10q�.��]� .+�� $	��Top=�$��	10,10,0,0q� �� �� $
��0.5* �.+�� $��0�� �� $	��10* ��� $
��160* �.+��� $��0,5,0,0q�$��32��$��32��$6��0/QuanLyTiecCuoi;component/photos/search_32px.png���� -	   ) ��Name$) 
tb_TimKiem��$��1��$��0,0,0,1q�
���   �$��15(�$��Center=�$
��10,5q�$��Center=����� *FilterString+$ PropertyChanged=�	 �� $ cbx_LoaiTimKiem��* �� Path$
* Text�$ OneWay=��� -
   $��cbx_LoaiTimKiem��#  [  $��1��$
��25,5q�
���<��$��SemiBold"� �� *LoaiTimKiem+$ TwoWay=�$ PropertyChanged=�.@��� $%��Tìm kiếm theo Tên Chú Rể��$��SemiBold"�+ �� 
IsSelected+ . �� $$��Tìm kiếm theo Tên Cô Dâu��$��SemiBold"��� $+��%Tìm kiếm theo Số Điện Thoại��$��SemiBold"��� $��Danh sách tiệc cưới��$��	10,0,0,10q�$��0��.��
  #  [   .   .  $��12(�+   %MahApps.Metro.Controls.DataGridHelper,   ColumnHeaderPadding$
, 10,0q�$��DemiBold"���. $
��Auto=�$
��Auto=����� *ListTiecCuoi+$ PropertyChanged=� �� *SelectedTiecCuoi+$ TwoWay=�    $! Tên Chú Rể��-   
IsReadOnly- . " �� *
TenChuRe+  $! Tên Cô Dâu��- . " �� *
TenCoDau+  $! Điện thoại��- . " �� *SoDienThoai+  $! Sảnh��- . " �� *SANH.TenSanh+  $! Ngày Đãi Tiệc��- . " �� *NgayDaiTiec+$ 
MM/dd/yyyy��  $! Ca��- . " �� *
CA.TenCa+  $! Ghi chú��- . $# * " �� *GhiChu+
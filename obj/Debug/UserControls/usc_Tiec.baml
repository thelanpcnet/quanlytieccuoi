   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5       QuanLyTiecCuoi*   $QuanLyTiecCuoi.UserControls.usc_Tiec   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Pcontrols;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  6W    
  TiecVM  � DataContext#  [  5	      .��5      � 
�������.+�5   
   ]� ��. .+�5      �� $��Quản Lý Tiệc Cưới��6   $��Center=�61   $	��Top=�5   $   $��32(�6<   ���	#FF1F656C$��0,5,0,0q�5   $   $	��Top=�65   $��Medium"�6J   � 5      $��Bottom=�6    � ColumnDefinitions 5      �� 5      �� 5      �� 5      �� 5      .+�5      ��   MaterialDesignRaisedButton#��[ 5      $��0��5      $��10q�6%    ^� ShowOnDisabled .  � ToolTip$ Làm mới vùng nhập��5      ���	#FF2DB0AA
�������{�5      �� *
IsEnable+��5      �� *ClearCommand+.��5   [   
Làm mới5      �� 5       #��[ 5#      $��1��5$      $��10q�6%    . $a [Thêm tiệc cưới
Nếu không tồn tại sảnh phù hợp sẽ không nhấn được��5&      ���	#FF2DB0AA
�������{�5!      �� *
IsEnable+��5"      �� *
AddCommand+.��5&   �   Thêm tiệc cưới5(      �� 5)      #��[ 5,      $��2��5-      $��10q�6%    . $k eSửa thông tin đặt Tiệc
Nếu Tiệc đã được lập hóa đơn sẽ không sửa được��5/      ���	#FF2DB0AA
�������{�5*      �� *
IsEnable+��5+      �� *EditCommand+.��5/   �   Sửa tiệc cưới51      �� 52       . #��[ 55      $��3��56      $��10q�6%   $# Xóa thông tin đặt Tiệc��58      
���<��
�������{�53      �� *
IsEnable+��57      �� *DeleteCommand+.��58   ^   Xóa tiệc cưới5:      5;      #  MaterialDesignThemes.Wpf.Card  5<      -   5          Name$ mdc_ThongTinDatTiec��5<   "   $	��Top=�6?   $��
10,10,10,5q�6T   .��5=      � .+�5>      �� $��Thông tin đặt tiệc��6   $��
10,5,10,10q�6;   $��SemiBold"�6O   .��5?      � $��5,10,5,5q�6    5@      �� 5A   "   65   �� 5B   "   65   .+�5D      � $��0��6#   $��0,0,20,0q�63    5E   "   �� 5F   &   $
��0.8* �67   6F   �� 5G   &   $��2* �67   6D   .+�5I   "   �  � RowDefinitions 5J   &   �� 5K   *   �� 5L   *   �� 5M   *   �� 5N   *   �� 5O   *   .+�5Q   &   �� $��0��6,   $��Tên chú rể��69   $��SemiBold"�6N   �� 5R   &   $��1��6,   $��Tên cô dâu��69   $��SemiBold"�6N   �� 5S   &   $��2��6,   $��Điện thoại��69   $��SemiBold"�6N   �� 5T   &   $��3��6,   $��Ngày đặt tiệc��69   $��SemiBold"�6Q   �� 5U   &   $��4��6,   $��Ghi chú��69   $��SemiBold"�6K   5V   #   � 5W   "   $��1��6'   $��10,0,0,0q�67    5X   &   �� 5Y   *   �� 5Z   *   �� 5[   *   �� 5\   *   �� 5]   *   .+�5_   &   �� -   5        $��0��5_   P   $��2q�6]   
���   �$��1q�6|    �� 
IsReadOnly 6.   �� *
IsReadOnly+��6�   �� *
TenChuRe+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�5`   [   �� 5a   &   -   5        $��1��5a   P   $��2q�6]   
���   �$��1q�6|    6.   �� *
IsReadOnly+��6�   �� *
TenCoDau+$ PropertyChanged=�$ TwoWay=�5b   [   �� 5c   &   -   5        $��2��5c   P   $��2q�6]   
���   �$��1q�6|    6.   �� *
IsReadOnly+��6�   �� *SoDienThoai+$ PropertyChanged=�$ TwoWay=�5d   Z   (  "System.Windows.Controls.DatePicker  5e   &   -   5        $��dpk_NgayDatTiec��5e   1   $��3��6t   $��2q�6�   
���   �$��1q�6�   *   $MahApps.Metro.Controls.TextBoxHelper	   	Watermark$	 Hãy chọn ngày��5g   1   {�5e   H   �� *
IsEnable+$ OneWay=�
   SelectedDate
 5f   1   �� *NgayDatTiec+$ PropertyChanged=� �� StringFormat$ 
MM/dd/yyyy��$ TwoWay=�5g   b   �� 5h   &   $��4��6P   $��2q�6]   
���   �$��1q�6|    6.   �� *
IsReadOnly+��6�   �� *GhiChu+$ PropertyChanged=�$ TwoWay=�5i   #   5j      � 5k      $��1��6#   $��20,0,0,0q�63    5l   "   �� 5m   &   $
��0.8* �67   6F   �� 5n   &   $��2* �67   6D   .+�5p   "   �  5q   &   �� 5r   *   �� 5s   *   �� 5t   *   �� 5u   *   �� 5v   *   .+�5x   &   �� $��0��6,   $��Ngày đãi tiệc��69   $��SemiBold"�6Q   �� 5y   &   $��1��6,   $��Ca��69   �� 5z   &   $��2��6,   $��Sảnh��69   �� 5{   &   $��3��6,   $��Tiền đặt cọc��69   �� 5|   &   $��4��6,   $��
Chi tiết��69   5}   #   � 5~   "   $��1��6'   $��10,0,0,0q�67    5   &   �� 5�   *   �� 5�   *   �� 5�   *   �� 5�   *   �� 5�   *   .+�5�   &     -   5        $��dpk_NgayDaiTiec��5�   P   $��0��6g   $��2q�6t   
���   �$��1q�6�   $	 Hãy chọn ngày��5�   1   {�5�   1   �� *
IsEnable+
 5�   1   �� *NgayDaiTiec+$ TwoWay=�$ PropertyChanged=�$ 
MM/dd/yyyy��5�   b   �� 5�   &   $��1��6N   $��2q�6[   
���   �$��1q�6z    �� DisplayMemberPath$ TenCa��5�   �   {�5�   /   �� *
IsEnable+ �� Text 5�   /   �� *SelectedTiecCuoi.CA.TenCa+$ PropertyChanged=�$ OneWay=� 5�   /   �� *Time+ �� SelectedItem 5�   /   �� *
SelectedCa+$ TwoWay=�$ PropertyChanged=���5�   /   �� *ListCa+$ PropertyChanged=�$ OneWay=�6�   �� 5�   &   $��2��6.   .��6<   ��5�   *   �� 5�   .   .R�5�   2   � #  [  67   .+�5�   6   ��  . $��2q�6P   
���   �$��1q�6o   ��5�   >   �� *SelectedSanh.TenSanh+6f   '  !MaterialDesignThemes.Wpf.PopupBox  5�   6   $��popup��5�   O   #  [  5�   O   $��Right=�5�   O      PlacementMode$ BottomAndAlignRightEdges=�6k      	StaysOpen .    	PopupMode$ Click=�6�   {�5�   O   �� *
IsEnable+   ToggleContent 5�   :   '  !MaterialDesignThemes.Wpf.PackIcon  5�   >   $) #Hiện danh sách sảnh phù hợp��6V   $	��5,2q�6|      Kind$ ChevronDoubleDown=�6�   
���<��6�   *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5�   :   +  %Microsoft.Xaml.Behaviors.EventTrigger  5�   >      	EventName$ Opened��6M   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5�   B   2	  ,Microsoft.Xaml.Behaviors.InvokeCommandAction	   	  Command 5�   E   �� *LoadPopupCommand+5�   ?     5�   >   $ Closed��6M   . 5�   B   	   5�   E   �� *ClosePopupCommand+5�   ?      PopupContent. 5�   :   ]� $	��550��6D   $	��500��6P   ��. .+�5�   >   �� $��Bottom=�5�   A   #��[ 5�   A   $
��10,2q�5�   A   $	��200��6O   $��0q�6[   $&  Chọn sảnh cho tiệc cưới��5�   A   ���	#FF0F5699
���������5�   A   �� *SelectSanhCommand+��5�   A   ��  �� ElementName$ popup��.��5�   �   Chọn Sảnh5�   ?   �� 5�   >   $"��Danh sách sảnh phù hợp��6G   $��10q�6g   .��5�   F   &
   System.Windows.Controls.DataGrid
   
 Name$ dtg_Sanh��6O    
  
IsReadOnly .  
  CanUserSortColumns .  
  CanUserAddRows .   
  SelectionUnit$ FullRow=�5�   M    
  AutoGenerateColumns .   5�   M   �� *SelectedSanh+$ TwoWay=���5�   M   �� *
ListSanh+$ PropertyChanged=�  
  Columns  5�   J   0  *System.Windows.Controls.DataGridTextColumn  5�   N   ,  &System.Windows.Controls.DataGridColumn!   Header$! Tên Sảnh��6a   1  +System.Windows.Controls.DataGridBoundColumn"   Binding" 6t   �� *	TenSanh+6�     5�   N   $&!  Số lượng bàn tối đa��6a   " 6�   �� *SoLuongBanToiDa+6�     5�   N   $! 	Ghi chú��6a   " 6s   �� *GhiChu+6�     5�   N   #   Width5  /System.Windows.Controls.DataGridLengthConverter$# * 6a   $#! Đơn giá bàn tối thiểu��6k   " 6�   �� *LOAISANH.DonGiaBanToiThieu+6�   5�   G   5�   C   5�   ;   5�   7   5�   3   5�   /   .��5�   <   5�   '   *   $MahApps.Metro.Controls.NumericUpDown  5�   &   -   5        $��nbr_TienDatCoc��5�   _   $��3��6u   $��2q�6�   
���   �$��1q�6�   $   TextAlignment$
$ Left=�6�   %   Interval$% 100000Q�6�   &   NumericInputMode$& Numbers=�6+  '   
IsReadOnly' 6=   �� *
IsReadOnly+(   Value( 6�   �� *
TienDatCoc+$ PropertyChanged=�$ TwoWay=�6F  �� 5�   &   $��4��6-    . #��[ 5�   -   $��2q�5�   -   $� �TÁC DỤNG: Mở phiếu đặt bàn và phiếu đặt dịch vụ
LƯU Ý 1: Nếu đang thêm tiệc cưới cần lưu lại tiệc cưới
LƯU Ý 2: Nếu đang chỉnh sửa tiệc cưới cần đảm bảo
dữ liệu trong Thông tin giống với trong Danh sách��5�   -   ���	#FF2DB0AA
���������5�   -   �� *DatBanvaDichVuCommand+.��5�   ;  " Mở Đặt bàn và Dịch vụ5�   '   5�   #   5�      5�      5�      5�      5�        5�      -   5        $ mdc_DanhSachTiecCuoi��5�   "   $��Bottom=�6@   $��
10,5,10,10q�6X   .��5�      ]� .+�5�      � $	��Top=�6   $��	10,10,0,0q�60    5�      �� 5�      �� 5�      $
��0.5* �6/   .+�5�      � $��0��6    5�      �� 5�   "   $	��10* �63   �� 5�   "   $
��160* �63   .+�5�      �� $��0,5,0,0q�6%   $��32��66   $��32��6A   $6��0/QuanLyTiecCuoi;component/photos/search_32px.png��5�   %   �� 5�      -	   5        ) ��Name$) 
tb_TimKiem��5�   6   $��1��6&   $��0,0,0,1q�5�      
���   �$��15(�5�      $��Center=�5�      $
��10,5q�68   $��Center=�6F   ��5�      �� *FilterString+$ PropertyChanged=�	 5�      �� $ cbx_LoaiTimKiem��* �� Path$
* Text�$ OneWay=�5�   F   5�      �� 5�      -
   5        $��cbx_LoaiTimKiem��5�   #   #  [  6:   $��1��6`   $
��25,5q�6p   
���<��$��SemiBold"�6�    5�   #   �� *LoaiTimKiem+$ TwoWay=�$ PropertyChanged=�.@�5�      �� $%��Tìm kiếm theo Tên Chú Rể��6+   $��SemiBold"�6N   + �� 
IsSelected+ . 6d   �� 5�      $$��Tìm kiếm theo Tên Cô Dâu��6+   $��SemiBold"�6N   �� 5�      $+��%Tìm kiếm theo Số Điện Thoại��6+   $��SemiBold"�6Q   5�      5�      �� 5�      $��Danh sách tiệc cưới��6   $��	10,0,0,10q�6<   $��0��6O   .��5�      
  #  [  6#    .   .  $��12(�5�   T   +   %MahApps.Metro.Controls.DataGridHelper,   ColumnHeaderPadding$
, 10,0q�5�   !   $��DemiBold"�6T   ��. $
��Auto=�5�   #   $
��Auto=�5�   #   ��5�   I   �� *ListTiecCuoi+$ PropertyChanged=� 6�   �� *SelectedTiecCuoi+$ TwoWay=�  5�   "     5�   &   $! Tên Chú Rể��69   -   
IsReadOnly- . " 6M   �� *
TenChuRe+6~     5�   &   $! Tên Cô Dâu��69   - . " 6M   �� *
TenCoDau+6~     5�   &   $! Điện thoại��69   - . " 6M   �� *SoDienThoai+6�     5�   &   $! Sảnh��69   - . " 6G   �� *SANH.TenSanh+6|     5�   &   $! Ngày Đãi Tiệc��69   - . " 6P   �� *NgayDaiTiec+$ 
MM/dd/yyyy��6�     5�   &   $! Ca��69   - . " 6E   �� *
CA.TenCa+6v     5   &   $! Ghi chú��69   - . $# * 6w   " 6J   �� *GhiChu+6�   5     5     5     5     5     5     5     
   M S B A M L   `   `   `  ����I  EQuanLyTiecCuoi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:QuanLyTiecCuoi.UserControlsQuanLyTiecCuoi.UserControls  5	      ,    &QuanLyTiecCuoi.UserControls.usc_Dichvu   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f;controls,http://metro.mahapps.com/winfx/xaml/controls  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      5local)clr-namespace:QuanLyTiecCuoi.UserControls  5	      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5
      -   5        $��DichVuWd��5         DichVuVM  � DataContext#  [  5      .��5      � $��0q�6   
������� � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      �� 5      $��60 �6   .+�5   
   � $��0��6   .+�5      �� $��Quản Lý Dịch Vụ��6   $��Center=�63   ���	#FF1F656C$��Center=�6h   $��32(�6�   $��Medium"�6�   5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      $
��499* �6#   �� 5      $
��301* �6#   .+�5      #  MaterialDesignThemes.Wpf.Card  $��
10,0,10,10q�6"   .��5      ]� .+�5      � $	��Top=�6   $��	10,10,0,0q�60    5       �� 5!      �� 5"      $
��0.5* �6/   .+�5$      � $��0��6    5%      �� 5&   "   $��40 �63   �� 5'   "   $
��160* �63   .+�5)      �� $��0,5,0,0q�6%   $��32��66   $��32��6A   $6��0/QuanLyTiecCuoi;component/photos/search_32px.png��6M   �� 5*      -   5         ��Name$ tbx_TimKiemDichVu��5*   &   $��1��5+   *   *  $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Tìm kiếm dịch vụ��5,   *   $��0,0,0,1q�5-   *   
���   �$��15(�5/   *   $��Center=�50   *   $��	10,5,10,5q�6E   ��5*   A   �� *FilterString+ �� UpdateSourceTrigger$ PropertyChanged=�.��50   X   51      52      55      �� 56      $��Danh sách dịch vụ��6   $��
10,0,10,10q�6=   $��0��6Q   .��57      &   System.Windows.Controls.DataGrid  -   5          Name$ 
dtg_DichVu��57   $   $
��auto��68      
IsReadOnly .    CanUserSortColumns . 	   CanUserAddRows	 .  
   SelectionUnit$
 FullRow=�5;         AutoGenerateColumns .  $��12(�5<   9   $��Segoe UI)�6G      SelectionMode$ Extended=�5=      $��Medium"�66    �� SelectedItem 57   E   �� *SelectedItem+ �� Mode$ TwoWay=���58      �� *List+   Columns 5>      0  *System.Windows.Controls.DataGridTextColumn  5?   "   ,  &System.Windows.Controls.DataGridColumn   Header$ Tên Dịch vụ��65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6L   �� *	TenDichVu+6l     5@   "   $ Đơn giá ��65    6H   �� *DonGia+6e     5A   "   $ Mô tả��65    6E   �� *MoTa+6`     5B   "   $ 	Ghi chú��65      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6G    6Q   �� *GhiChu+6n   5D      5F      5G      5H        5I      $��1��6"   $��	0,0,10,10q�62   .��5J      �  5K      �� 5L      �� 5M      $��0.75* �6(   .+�5O      � $��0��6    5P      �� 5Q      �� 5R      $
��0.2* �6,   .+�5T      �� $��0��6#   $��Ảnh minh họa��60   $��
10,10,10,0q�6H   .��5U      �� -   5         ��Name$ 	img_AnhDV��5U   $   $
��Fill=�6w   ��67   �� *	HinhAnh+$ PropertyChanged=�6�   5V      � 5W      $��1��6    5X      �� 5Y   "   �� 5Z   "   .+�5\      �� -   5         ��Name$ btn_ThemAnh��5]   !     MaterialDesignRaisedButton#��[ 5`   !   $��0��5a   !   $��
10,5,10,10q�61    � ToolTip$ Thêm Ảnh��5b   !   ���	#FF2DB0AA
�������$��35��6_   $��Bottom=�6k   {�5^   !   �� *
IsEnable+��5_   !   �� *ChonAnhCommmand+��5b   �   Z� .��6�   Thêm ảnh5d      �� 5e      -   5        $ 
btn_XoaAnh��5f   !   #��[ 5i   !   $��1��5j   !   $��
10,5,10,10q�61   $ Xóa Ảnh��5k   !   ���	#FF2DB0AA
�������$��35��6_   $��Bottom=�6k   ��5g   !   �� *XoaAnhCommmand+{�5h   !   �� *
IsEnable+��5k   �   Z� .��6�   Xóa ảnh5m      5n      5o      � 5q      $��1��6   .+�5r      �� $��Thông Tin Dịch Vụ��6#    J� OpacityMask
 �   �$��
10,0,10,10q�6T   .��5s      �  5t   "   �� 5u   &   $
��0.4* �67   �� 5v   &    5x   "   �� 5y   &   66   �� 5z   &   66   �� 5{   &   66   �� 5|   &   66   .+�5~   "   �� $��Tên Dịch Vụ��6(   $��0��6@   $��0��6P   $��Center=�6]   $
��Left=�6x   $��SemiBold"�6�   6�   �� 5   "   $��Mô tả��6(   $��0��69   $��1��6I   $��Center=�6V   $
��Left=�6q   $��SemiBold"�6�   6�   �� 5�   "   $��Đơn giá��6(   $��0��6;   $��2��6K   $��Center=�6X   $
��Left=�6s   $��SemiBold"�6�   6�   �� 5�   "   $��	Ghi chú��6(   $��0��6;   $��3��6K   $��Center=�6X   $
��Left=�6s   $��SemiBold"�6�   6�   �� 5�   "   -   5        $ txb_TenDichVu��5�   L   
���   �$��1q�6�   $��1��6�   $��3q�6�   $��0��6�   $��15(�6   $��SemiBold"�6   �� 
IsReadOnly 6*   �� *
IsReadOnly+��6c   �� *	TenDichVu+$ PropertyChanged=�$ TwoWay=�6&  �� 5�   "   -   5        $ txb_MoTa��5�   L   
���   �$��1q�6�   $��1��6�   $��1��6�   $��3q�6�   $��15(�6�   $��SemiBold"�6   6*   �� *
IsReadOnly+��6^   �� *MoTa+$ PropertyChanged=�$ TwoWay=�6  *  $MahApps.Metro.Controls.NumericUpDown  5�   "   -	   5          Name$ 
nud_DonGia��5�   [      Minimum$ 0Q�6o      NumericInputMode$ Numbers=�6�      TextAlignment$
 Left=�6�   $��3q�6�   $��15(�6  
���   �   Interval$ 100000Q�6#  $��1��65  $��2��6E  $��SemiBold"�6y     
IsReadOnly 69   �� *
IsReadOnly+   Value 6{   �� *DonGia+$ PropertyChanged=�$ TwoWay=�6�  �� 5�   "   -
   5        $ 
txb_GhiChu��5�   L   
���   �$��1q�6�   $��1��6�   $��3��6�   $��3q�6�   $��15(�6�   $��SemiBold"�6   6*   �� *
IsReadOnly+��6`   �� *GhiChu+$ PropertyChanged=�$ TwoWay=�6   5�      5�      5�      5�      5�      5�      � 5�   
   $��2��6   .+�5�      �  5�      �� 5�      �� 5�      �� 5�      �� 5�      .+�5�      �� -   5        $ btn_Them��5�      $��10q�6+   #��[ 5�      $
��auto��5�      $��1��6"   $ Thêm��5�      ���	#FF2DB0AA
���������5�   7   �� *
AddCommand+{�5�      �� *
IsEnable+.��5�   N   Thêm5�      �� 5�      -   5        $ btn_Sua��5�      $��10q�6*   #��[ 5�      $
��auto��5�      $��2��6"   $ Sửa��5�      ���	#FF2DB0AA
���������5�   6   �� *EditCommand+{�5�      �� *
IsEnable+.��5�   N   Sửa5�      �� 5�      -   5        $ btn_Xoa��5�      $��10q�6*   #��[ 5�      $
��auto��5�      $��3��6"   $ Xóa��5�      
���<��
���������5�   6   �� *DeleteCommand+{�5�      �� *
IsEnable+.��5�   L   Xóa5�      �� 5�      -   5        $ btn_Refresh��5�   )   $��0��5�      #��[ 5�   )   $( "Làm mới dữ liệu nhập��5�   )   ���	#FF2DB0AA
�������$��32��6w   $��10q�6�   $��Center=�6�   $��Center=�6�   $��Segoe UI)�6�   $��14(�6�   {�5�   )   �� *
IsEnable+��5�   )   �� *RefreshCommand+.��5�   �   
Làm mới5�      5�      5�      5�      5�      
   M S B A M L   `   `   `  ����I  EQuanLyTiecCuoi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:QuanLyTiecCuoi.UserControlsQuanLyTiecCuoi.UserControls  5      +    %QuanLyTiecCuoi.UserControls.usc_Monan   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:QuanLyTiecCuoi.UserControls     5      T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f;controls,http://metro.mahapps.com/winfx/xaml/controls  5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5	      -   5        $��MonAnWd��5         MonAnVM  � DataContext#  [  5      .��5      � $��0q�6   
������� � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      �� 5      $��60 �6   .+�5   
   � $��0��6   .+�5      �� -   5         ��Name$ tbl_QuanLyMonAn��5      $��Quản Lý Món Ăn��5      $��Center=�6)   ���	#FF1F656C$��Center=�6^   $��32(�6y   $��Medium"�6�   5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      $
��499* �6#   �� 5      $
��301* �6#   .+�5      #  MaterialDesignThemes.Wpf.Card  $��
10,0,10,10q�6"   .��5      ]� .+�5      � $	��Top=�6   $��	10,10,0,0q�60    5       �� 5!      �� 5"      $
��0.5* �6/   .+�5$      � $��0��6    5%      �� 5&   "   $
��0.1* �63   �� 5'   "   $��1* �63   .+�5)      �� $��0,5,0,0q�6%   $��32��66   $��32��6A   $6��0/QuanLyTiecCuoi;component/photos/search_32px.png��6M   �� 5+      -   5         ��Name$ tb_TimKiemMonAn��5+   6   $��1��6&   *  $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Tìm kiếm món ăn��5-      $��0,0,0,1q�5.      
���   �$��15(�50      $��Center=�51      $
��10,5q�68   $��Center=�6F   ��5,      �� *FilterString+ �� UpdateSourceTrigger$ PropertyChanged=�51   F   52      53      �� 54      $��Danh sách món ăn��6   $��
10,0,10,10q�6:   $��0��6N   .��55      &   System.Windows.Controls.DataGrid  -   5          Name$ dtg_DSMonAn��55   %      
IsReadOnly . 	   GridLinesVisibility$
	 None=�57   %   
   HorizontalGridLinesBrush

 �   �   VerticalGridLinesBrush
 �   �$��12(�58   %   +  %MahApps.Metro.Controls.DataGridHelper   ColumnHeaderPadding$
 10,0q�59   %   $��Segoe UI)�5:   %      CanUserSortColumns .    CanUserAddRows .     SelectionUnit$ FullRow=�5<   %      AutoGenerateColumns .  $��Medium"�5>   %   ��55   :   �� *List+$ PropertyChanged=� �� SelectedItem 6|   �� *SelectedItem+ �� Mode$ TwoWay=�   Columns 5?      0  *System.Windows.Controls.DataGridTextColumn  5@   "   ,  &System.Windows.Controls.DataGridColumn   Header$ Tên món ăn��65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6I   �� *
TenMonAn+5A   #     5B   "   $ Mô tả��65    6D   �� *MoTa+5C   #     5D   "   $ Ghi chú��65    6F   �� *GhiChu+5E   #     5F   "      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 65   $ 
Đơn giá��6?    6P   �� *DonGia+5G   #   5I      5J      5K      5L        5M      $��1��6"   $��	0,0,10,10q�62   .��5N      �  5O      �� 5P      �� 5Q      $��0.75* �6(   .+�5S      � $��0��6    5T      �� 5U      �� 5V      $
��0.2* �6,   .+�5X      �� $��0��6#   $��Ảnh minh họa��60   $��
10,10,10,0q�6H   .��5Y      �� -   5         ��Name$ img_AnhMonAn��5Y   $   $
��Fill=�6z   $��5q�6�   ��6:   �� *	HinhAnh+$ PropertyChanged=�6�   5Z      � 5[      $��1��6    5\      �� 5]   "   �� 5^   "   .+�5`      �� -   5         ��Name$ btn_ThemAnh��5a   !     MaterialDesignRaisedButton#��[ 5d   !   $��0��5e   !   $��
10,5,10,10q�61    � ToolTip$ Thêm ảnh��5f   !   ���	#FF2DB0AA
�������$��35��6^   $��Bottom=�6j   $��Segoe UI)�6�   $��14(�6�   ��5b   !   �� *AddImageCommand+{�5c   !   �� *
IsEnable+��5f   �   Z� .��6�   Thêm ảnh5h      �� 5i      -   5        $ 
btn_XoaAnh��5j   !   #��[ 5m   !   $��1��5n   !   $��
10,5,10,10q�61   $ 
Xóa ảnh��5o   !   ���	#FF2DB0AA
�������$��35��6]   $��Bottom=�6i   $��Segoe UI)�6�   $��14(�6�   ��5k   !   �� *DeleteImageCommand+{�5l   !   �� *
IsEnable+��5o   �   Z� .��6�   
Xóa ảnh5q      5r      5s      � 5u      $��1��6   .+�5v      �� $��Thông tin món ăn��6#   $��0��6=   $��
10,0,10,10q�6J   .��5w      �  5x   "   �� 5y   &   $
��0.4* �67   �� 5z   &    5|   "   �� 5}   &   �� 5~   &   �� 5   &   �� 5�   &   .+�5�   "   �� $��0��6(   $��0��68   $��Tên Món Ăn��6E   $��SemiBold"�6Z   $��Center=�6p   $��12(�6�   $��2��6�   �� 5�   "   -   5        $ tbx_TenMonAn��5�   L   $��1��6b   $��0��6r   ���	#FF636363$��1q�6�   $��3q�6�   $��15(�6  $��SemiBold"�6   �� 
IsReadOnly 6*   �� *
IsReadOnly+��6�   �� *
TenMonAn+$ PropertyChanged=�$ TwoWay=�6  �� 5�   "   $��0��6(   $��1��68   $��Mô tả��6E   $��SemiBold"�6U   $��Center=�6k   $��12(�6�   �� 5�   "   -	   5        $ tbx_MoTa��5�   L   $��1��6^   $��1��6n   ���	#FF636363$��1q�6�   $��3q�6�   $��15(�6�   $��SemiBold"�6	   6*   �� *
IsReadOnly+��6�   �� *MoTa+$ PropertyChanged=�$ TwoWay=�6	  �� 5�   "   $��0��6(   $��3��68   $��Ghi chú��6E   $��SemiBold"�6W   $��Center=�6m   $��12(�6�   �� 5�   "   -
   5        $ 
tbx_GhiChu��5�   L   $��1��6`   $��3��6p   ���	#FF636363$��1q�6�   $��3q�6�   $��15(�6�   $��SemiBold"�6   6*   �� *
IsReadOnly+��6�   �� *GhiChu+$ PropertyChanged=�$ TwoWay=�6  �� 5�   "   $��0��6(   $��2��68   $��
Đơn giá��6E   $��SemiBold"�6W   $��29��6m   $��0q�6y   $��Center=�6�   $��12(�6�   *	  $MahApps.Metro.Controls.NumericUpDown	  5�   "   -   5         	 Name$ 	ct_DonGia��5�   [   $��2��6n   $��1��6{   $��3q�6�   ���	#FF636363$��1q�5�   Q    	  TextAlignment$
 Left=�6e    	  Interval$ 100000Q�6z    	  Minimum$ 0Q�6�   $��15(�6�   $��SemiBold"�6�    	  NumericInputMode$ Numbers=�5�   �     	  
IsReadOnly  5�   9   �� *
IsReadOnly+! 	  Value! 5�   9   �� *DonGia+$ PropertyChanged=�$ TwoWay=�6�   5�      5�      5�      5�      5�      5�      � 5�   
   $��2��6   $��0,5,0,0q�6   .+�5�      �  5�      �� 5�      �� 5�      �� 5�      �� 5�      .+�5�      �� -   5        $ 
btn_LamMoi��5�   )   $��0��5�      #��[ 5�   )   $$ Làm mới thông tin món ăn��5�   )   ���	#FF2DB0AA
�������$
��Auto��6v   $��10q�6�   $��Center=�6�   $��Center=�6�   $��Segoe UI)�6�   $��14(�6�   ��5�   )   �� *RefreshCommand+{�5�   )   �� *
IsEnable+.��5�   �   
Làm mới5�      �� 5�      -   5        $ btn_ThemMonAn��5�      #��[ 5�      $��1��5�      $��10q�6%   $ Thêm món ăn��5�      ���	#FF2DB0AA
���������5�      �� *
AddCommand+{�5�      �� *
IsEnable+.��5�   U   Thêm5�      �� 5�      -   5        $ btn_SuaMonAn��5�      #��[ 5�      $��2��5�      $��10q�6%   $ Sửa món ăn��5�      ���	#FF2DB0AA
���������5�      �� *EditCommand+{�5�      �� *
IsEnable+.��5�   T   Sửa5�      �� 5�      -   5        $ btn_XoaMonAn��5�      #��[ 5�      $��3��5�      $��10q�6%   $ Xóa món ăn��5�      
���<��
���������5�      �� *DeleteCommand+{�5�      �� *
IsEnable+.��5�   R   Xóa5�      5�      5�      5�      5�      
   M S B A M L   `   `   `  ����I  EQuanLyTiecCuoi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:QuanLyTiecCuoi.UserControlsQuanLyTiecCuoi.UserControls  5      *    $QuanLyTiecCuoi.UserControls.usc_Sanh   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f;controls,http://metro.mahapps.com/winfx/xaml/controls  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      5local)clr-namespace:QuanLyTiecCuoi.UserControls  5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5	      -   5        $��SanhWd��5       
  SanhVM  � DataContext#  [  5      .��5      � 
�������.+�5   
   � .+�5      4  .MahApps.Metro.Controls.MetroAnimatedTabControl  -   5          Name$ AnimatedTabControl��5   /   .@�5      )  #MahApps.Metro.Controls.MetroTabItem  $��Quản lý Sảnh��6(   .��5      ]� ��. .+�5      �� $��Quản Lý Sảnh��6$   ���	#FF1F656C$��Center=�6R   $��Center=�6m   $��32(�6�   $	��Top=�6�   � 5      $��Bottom=�6    � ColumnDefinitions 5      �� 5   "   �� 5   "   �� 5   "   5      � 5       � RowDefinitions 5      �� 5   "   �� 5   "   $	��239 �60   .+�5!      #  MaterialDesignThemes.Wpf.Card  $��	10,0,10,0q�62   $	��Top=�6E   $��0��6Z   .��5"   "   ]� ��. .+�5#   &   � $	��Top=�6+   $��	10,10,0,0q�6@    5$   *   �� 5%   .   $��40 �6?   6L   �� 5&   .   �� 5'   .   $
��0.5* �6?   .+�5)   *   �� $��0,5,0,0q�60   $��32��6A   $��32��6L   $6��0/QuanLyTiecCuoi;component/photos/search_32px.png��6X   �� 5*   *   -   5         ��Name$ tbx_TimKiemSanh��5*   2   $	��Top=�6K   *  $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Tìm kiếm tên Sảnh��5,   *   $��0,0,0,1q�5-   *   $��32��6D   
���   �$��15(�5/   *   $��1��68   $��Center=�50   *   ��5+   *   �� *FilterString+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�.��50   E   51   +   52   '   �� 53   &   $��Danh sách Sảnh��6/   $��
10,0,10,10q�6I   .��54   *   &   System.Windows.Controls.DataGrid  -   5          Name$ dtg_Sanh��54   3   $
��auto��6E   	   
IsReadOnly	 . 
   CanUserSortColumns
 .    CanUserAddRows .     SelectionUnit$ FullRow=�59   -      AutoGenerateColumns .     SelectionMode$ Extended=�5;   -    �� SelectedItem 55   -   �� *SelectedItem+$ TwoWay=���56   -   �� *
ListSanh+$ PropertyChanged=�   Columns 5<   .   0  *System.Windows.Controls.DataGridTextColumn  5=   2   ,  &System.Windows.Controls.DataGridColumn   Header$ Tên Sảnh��6E   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6X   �� *	TenSanh+6v     5>   2   $&  Số lượng bàn tối đa��6E    6f   �� *SoLuongBanToiDa+6�     5?   2   $ 	Ghi chú��6E    6W   �� *GhiChu+6t     5@   2      Width5	  /System.Windows.Controls.DataGridLengthConverter$ *	 6E   $ Tên loại Sảnh��6O    6h   �� *LOAISANH.TenLoaiSanh+6�   5B   +   5C   '   5D   #   5E        5F      $��10q�62   $��1��6>   .��5G   "   ]� ��. .+�5H   &   �� $	��Top=�6/   $��Thông tin Sảnh��6D   $��10q�6]   $	��145��6i   .��5I   *   � -   5         �Name$ grd_Nhap��5I   /   $��0��6A   $
��auto��6Q    J� RenderTransformOrigin$ 0.495,0.489&�6_   .+�5J   .   � $
��auto��63   $��0,0,0,0q�6A    5K   2   �� 5L   6   $
��0.9* �6G   �� 5M   6   .+�5O   2   � $��0��67   .+�5P   6   �  5Q   :   �� 5R   >   $
��0.3* �6O   �� 5S   >   .+�5U   :   � $��0��6?    5V   >   �� 5W   B   �� 5X   B   .+�5Z   >   �� $��1��6D   $��	Ghi chú��6Q   $��Center=�6d   $
��Left=�6   6�   �� 5[   >   $��0��6D   $��Tên Sảnh��6Q   $��Center=�6e   $
��Left=�6�   6�   5\   ;   � 5]   :   $��1��6?   $��	10,0,20,0q�6O    5^   >   �� 5_   B   �� 5`   B   .+�5b   >   �� -   5        $ 
txb_GhiChu��5b   h   $��1��6�   
���   �$
��5,15q�6�   $��1q�6�   $��1��6   �� 
IsReadOnly 6F   �� *
IsReadOnly+��6|   �� *GhiChu+$ PropertyChanged=�$ TwoWay=�6  �� 5c   >   -   5        $ txb_TenSanh��5c   h   
���   �$��1q�6�   $
��5,15q�6�   $��0��6�    6F   �� *
IsReadOnly+��6}   �� *	TenSanh+$ PropertyChanged=�$ TwoWay=�6  5d   ;   5e   7   5f   3   � 5g   2   $��1��67   .+�5h   6   �  5i   :   �� 5j   >   $	��33* �6O   �� 5k   >   $	��53* �6O   .+�5m   :   � $��0��6?    5n   >   �� 5o   B   �� 5p   B   .+�5r   >   �� $��0��6D   $��Tên Loại Sảnh��6Q   $��Center=�6k   $
��Left=�6�   6�   �� 5s   >   $��1��6D   $&�� Số lượng bàn tối đa��6Q   $��Center=�6s   $
��Left=�6�   6�   5t   ;   � 5u   :   $��1��6?    5v   >   �� 5w   B   �� 5x   B   .+�5z   >   *
  $MahApps.Metro.Controls.NumericUpDown
  -   5         
 Name$ 	nud_SLBTD��5z   w    
  Minimum$ 0Q�6�    
  NumericInputMode$ Numbers=�6�   $��1��6  $��	6,15,4,15q�6  
���   � 
  Interval$	 100Q�69  $��15(�6H   
  TextAlignment$
 Left=�6V   
  
IsReadOnly 6U   �� *
IsReadOnly+ 
  Value 6�   �� *SoLuongBanToiDa+$ PropertyChanged=�$ TwoWay=�6�  �� 5{   >   -	   5         ��Name$ 
cbb_MaSanh��5{   f    �� DisplayMemberPath$ TenLoaiSanh��5|   �   
���   �$��1q�5~   W   $��	6,15,4,15q�6k   $��0��6~   {�5{   G   �� *
IsEnable+ 6z   �� *SelectedLoaiSanh+$ TwoWay=�$ PropertyChanged=���5|   C   �� *ListLoaiSanh+$ PropertyChanged=�$ OneWay=�  �� Text  5}   C   �� *#!SelectedItem.LOAISANH.TenLoaiSanh+$ PropertyChanged=�$ OneWay=�5~   �   5   ;   5�   7   5�   3   5�   /   5�   +   5�   '   � 5�   &    5�   *   �� 5�   .   �� 5�   .   �� 5�   .   �� 5�   .   .+�5�   *   �� -
   5        ! ��Name$! btn_Them��5�   1   $��30,10q�6C     MaterialDesignRaisedButton#��[ 5�   %   $��1��5�   &   " � ToolTip$" Thêm��5�   %   ���	#FF2DB0AA
���������5�   R   �� *
AddCommand+{�5�   7   �� *
IsEnable+.��5�   ^   Thêm5�   +   �� 5�   *   -   5        $! btn_Sua��5�   1   $��30,10q�6B   #��[ 5�   %   $��2��5�   %   $" Sửa��5�   %   ���	#FF2DB0AA
���������5�   Q   �� *EditCommand+{�5�   6   �� *
IsEnable+.��5�   ^   Sửa5�   +   �� 5�   *   -   5        $! btn_Xoa��5�   1   $��30,10q�6B   #��[ 5�   %   $��3��5�   %   $" Xóa��5�   %   
���<��
���������5�   Q   �� *DeleteCommand+{�5�   6   �� *
IsEnable+.��5�   \   Xóa5�   +   �� 5�   *   -   5        $! btn_RefreshThongTin��5�   1   $��30,10q�6N   #��[ 5�   %   $��0��5�   %   $/" )Xóa thông tin trong ô nhập liệu��5�   %   ���	#FF2DB0AA
���������5�   ]   �� *RefreshSanhCommand+{�5�   6   �� *
IsEnable+.��5�   |   Làm mới5�   +   5�   '   5�   #   5�      5�      5�      5�        5�      $��Quản lý loại Sảnh��6(   .��5�      ]� ��. .+�5�      �� $��Quản lý Loại Sảnh��6$   ���	#FF0E2291$��Center=�6X   $��Center=�6u   $��32(�6�   $	��Top=�6�     5�      $��10q�6.   $��Bottom=�6:   $	��165��6R   .��5�      �  5�   "   �� 5�   &   $
��103* �64   �� 5�   &   $	��62* �64   .+�5�   "   � $��0��6'   .+�5�   &   �� $��Thông Tin Loại Sảnh��6/   $��10,10,10,10q�6N   $	��Top=�6c   $��80��6x   .��5�   *   � $��0,0,0,0q�6/    5�   .   �� 5�   2   6E   �� 5�   2   $��1.25* �6C   6S   .+�5�   .   � $��0��63   $��0,0,20,0q�6C    5�   2   �� 5�   6   $
��0.8* �6G   6V   �� 5�   6   6I   .+�5�   2   �� $��Tên Loại Sảnh��68   $��Center=�6R   $��Center=�6m   6�   �� 5�   2   -   5        $ txb_TenLoaiSanh2��5�   l   $��1��6\   
���   �$��1q�5�   F   $
��2,10q�6Z   $��12(�6h    5�   :   �� *
IsReadOnly+��6�   �� *TenLoaiSanh+$ PropertyChanged=�$ TwoWay=�5�   x   5�   /   � 5�   .   $��1��63   $��0,0,20,0q�6C    5�   2   �� 5�   6   $
��0.8* �6G   6V   �� 5�   6   6I   .+�5�   2   �� $'��!Đơn giá bàn tối thiểu��68   $��Center=�6\   $��Center=�6w   6�   
  5�   2   -   5        $ nud_DonGiaBanToiThieu��5�   k   $ 0Q�6�   $ Numbers=�6�   $��1��6  $
��2,10q�6  
���   �$ 100000Q�69  $��12(�6K  $
 Left=�6Y   6I   �� *
IsReadOnly+ 6�   �� *DonGiaBanToiThieu+$ PropertyChanged=�$ TwoWay=�6�  5�   /   5�   +   5�   '   5�   #   � 5�   "   $��0,0,0,0q�6'   $��1��68    5�   &   �� 5�   *   �� 5�   *   �� 5�   *   �� 5�   *   .+�5�   &   �� -   5        $! 	btn_Them2��5�   -   $��30,10q�6@   #��[ 5�   %   $��1��5�   &   $" Thêm��5�   %   ���	#FF0F5699
���������5�   O   �� *AddCommandLoaiSanh+{�5�   7   �� *
IsEnable+.��5�   ^   Thêm5�   '   �� 5�   &   -   5        $! btn_Sua2��5�   -   $��30,10q�6?   #��[ 5�   %   $��2��5�   %   $" Sửa��5�   %   
��� � �
���������5�   N   �� *EditLoaiSanhCommand+{�5�   6   �� *
IsEnable+.��5�   Z   Sửa5�   '   �� 5�   &   -   5        $! btn_Xoa2��5�   -   $��30,10q�6?   #��[ 5�   %   $��3��5�   %   $" Xóa��5�   %   
���<��
���������5�   N   �� *DeleteLoaiSanhCommand+{�5�   6   �� *
IsEnable+.��5�   \   Xóa5�   '   �� 5�   &   -   5        $! btn_RefreshThongTin2��5�   -   $��30,10q�6K   #��[ 5�   %   $��0��5�   %   $/" )Xóa thông tin trong ô nhập liệu��5�   %   ���	#FF0F5699
���������5�   Z   �� *RefreshLoaiSanhCommand+{�5�   6   �� *
IsEnable+.��5�   |   Làm mới5�   '   5�   #   5�      5�        5�      $��10q�6.   $	��Top=�6:   .��5�      ]� .+�5�   "   � $	��Top=�6'   $��	10,10,0,0q�6<    5�   &   �� 5�   *   $��40 �6;   6H   �� 5�   *   �� 5�   *   $
��0.5* �6;   .+�5�   &   �� $��0,5,0,0q�6-   $��32��6>   $��32��6I   $6��0/QuanLyTiecCuoi;component/photos/search_32px.png��6U   �� 5�   &   -   5        $ tbx_TimKiemLoaiSanh��5�   .   $	��Top=�6K   $$ Tìm kiếm tên Loại Sảnh��5�   *   $��0,0,0,1q�5   *   $��32��6D   
���   �$��15(�5  *   $��1��68   $��Center=�5  *   $��0q�6E   ��5�   *   �� *FilterStringLoaiSanh+$ PropertyChanged=�5  E   5  #   �� 5  "   $��Danh sách loại Sảnh��6+   $��
10,0,10,10q�6K   .��5  &     -   5        $ dtg_LoaiSanh��5  /   $
��auto��6E   	 . 
 .  .  $ FullRow=�5
  1    .  $ Extended=�5  1    5  d   �� *SelectedItem2+$ TwoWay=���5  1   �� *ListLoaiSanh+ 5  *     5  .   $ Tên loại Sảnh��6A    6Z   �� *TenLoaiSanh+6|     5  .   $ *	 6A   $' !Đơn giá bàn tối thiểu��6K    6n   �� *DonGiaBanToiThieu+6�   5  '   5  #   5     5     5     5     5     5     5     5     
   M S B A M L   `   `   `  ����I  EQuanLyTiecCuoi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:QuanLyTiecCuoiQuanLyTiecCuoi  5   	   T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   )    #QuanLyTiecCuoi.DatBanvaDichVuWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:QuanLyTiecCuoi     5   	   Pcontrols;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  6R   -   5        $��DatBanVaDichVuWd��5        � Title$!  Đặt Bàn và Dịch vụ��5
      $	��662��62   $	��800��6?    � WindowStartupLocation$ CenterScreen=�6K   (  "MahApps.Metro.Controls.MetroWindow   WindowTitleBrush �	#FF1E8D88.��5      � .+�5   
   4  .MahApps.Metro.Controls.MetroAnimatedTabControl  -   5          Name$ AnimatedTabControl��5   +   .@�5      )  #MahApps.Metro.Controls.MetroTabItem  $��Thông tin đặt bàn��6$   .��5      �    PhieuDatBanVM � DataContext# [  6   *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      +  %Microsoft.Xaml.Behaviors.EventTrigger  5         	EventName$ Loaded��6)   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 64   �� *LoadedCommand+5      .+�5      ]� ��. .+�5      �� $��Phiếu Đặt Bàn��6$   $��Center=�69   $	��Top=�5   $   $��32(�6<   ���	#FF1F656C$��0,5,0,0q�5   $   $��SemiBold"�65   $	��Top=�5   $   ]� 5      $	��Top=�6$   $��Center=�69   .+�5      �� $$��Đơn giá bàn tối thiểu:��6$   
���<��6E   �� 5      $��0q�6$   $��15(�68   
���<��$��Center=�6[   ��6v   �� *DonGiaBanToiThieu+�� 5      $��30,0,0,0q�6$   $#��Số lượng bàn tối đa:��66   
���<��6U   �� 5      $��0q�6$   $��15(�68   
���<��$��Center=�6[   ��6v   �� *SoLuongBanToiDa+�� 5      $��30,0,0,0q�6$   $��Tổng số bàn:��66   $��15(�6M   $��SemiBold"�6[   
���<��$��Center=�6�   �� 5      $��15(�6$   
���<��$��Center=�6G   ��5    0   �� *TongSoLuongBan+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� Mode$
 TwoWay=�5!      � 5"      $��Bottom=�6    � ColumnDefinitions 5#      �� 5$   "   $��0.25* �63   �� 5%   "   �� 5&   "   �� 5'   "   �� 5(   "   $��0.25* �63   .+�5*      ��   MaterialDesignRaisedButton#��[ 5,   !   $��1��5-   !   $��10q�61   $	��175��6=    ^� ShowOnDisabled .  � ToolTip$R LNếu Tiệc đã được lập hoá hoá đơn sẽ không nhấn được��50   !   ���	#FF2DB0AA
�������{�5+   !   �� *
IsEnable+��5.   !   �� *
AddCommand+.��51   K   Thêm Phiếu Đặt Bàn53      �� 54      #��[ 56   !   $��3��57   !   $��10q�61   $	��175��6=    . $R LNếu Tiệc đã được lập hoá hoá đơn sẽ không nhấn được��5:   !   
���<��
�������{�55   !   �� *
IsEnable+��58   !   �� *DeleteCommand+.��5;   I   Xóa Phiếu Đặt Bàn5=      �� 5>      #��[ 5@   !   $��2��5A   !   $��10q�61   $	��175��6=    . $R LNếu Tiệc đã được lập hoá hoá đơn sẽ không nhấn được��5D   !   ���	#FF2DB0AA
�������{�5?   !   �� *
IsEnable+��5B   !   �� *EditCommand+.��5E   K   Sửa Phiếu Đặt Bàn5G      5H      #  MaterialDesignThemes.Wpf.Card  5I      $	��Top=�6.   $��10q�6C   .��5J      �� $��Thông tin đặt bàn��6'   $��10q�6B   .��5K   "   � $��5,10,5,5q�6'    5L   &   �� 5M   *   $
��0.5* �6;   6K   �� 5N   *   $��1* �6;   6H   �� 5O   *   $
��0.6* �6;   6J   �� 5P   *   $��1* �6;   6H    � RowDefinitions 5R   &   �� 5S   *   �� 5T   *   �� 5U   *   �� 5V   *   �� 5W   *   .+�5Y   &   �� $��0��6,   $��0��69   $��Loại bàn��6I   $��15(�6\   $��SemiBold"�6j   �� 5Z   &   $��1��6,   $��0��69   $��Số lượng��6I   $��15(�6\   $��SemiBold"�6j   �� 5[   &   $��2��6,   $��0��69   $��Số lượng dự trữ��6I   $��15(�6c   $��SemiBold"�6q   �� 5\   &   $��0��6,   $��27,0,0,0q�69   $��2��6K   $��Đơn giá bàn��6[   $��15(�6q   $��SemiBold"�6   �� 5]   &   $��1��6,   $��27,0,0,0q�69   $��2��6K   $��Ghi chú��6[   $��15(�6m   $��SemiBold"�6{   �� 5^   &   $��2��6,   $��27,0,0,0q�69   $��2��6K   $��
Chi tiết��6[   $��15(�6n   $��SemiBold"�6|   �� 5_   &   -   5         ��Name$ tbx_PDB_LoaiBan��5_   P   $��0��6i   $��1��6v   $��2,2,0,2q�6�   
���   �$��1q�6�    �� 
IsReadOnly 6.   �� *
IsReadOnly+��5`   .   �� *	LoaiBan+$	 PropertyChanged=�$
 TwoWay=�*	  $MahApps.Metro.Controls.NumericUpDown	  5a   &   -   5         	 Name$ nbr_PDB_SoLuong��5a   _   $��1��6x   $��1��6�   $��2,2,0,2q�6�   
���   �$��1q�6�    	  TextAlignment$
 Left=�6�    	  
IsReadOnly 6=   �� *
IsReadOnly+ 	  Value 5b   =   �� *	SoLuong+$	 PropertyChanged=�$
 TwoWay=�	  5c   &   -   5        $ nbr_PDB_SoLuongDuTru��5c   _   $��2��6}   $��1��6�   $��2,2,0,2q�6�   
���   �$��1q�6�   $
 Left=�6�    6=   �� *
IsReadOnly+ 5d   =   �� *SoLuongDuTru+$	 PropertyChanged=�$
 TwoWay=��� 5e   &   -   5        $��lbl_DonGiaBan��5g   -   $��0��5e   ,   $��3��69   $T NĐơn giá bàn sẽ được cập nhật sau khi đặt bàn và dịch vụ��6I   $��2q�5f   -   
���   �$��0q�6L   ��5h   -   �� *	DonGiaBan+$	 PropertyChanged=�$
 TwoWay=��� 5j   &   -   5        $ tbx_PDB_GhiChu��5j   P   $��1��6h   $��3��6u   $��2q�6�   
���   �$��1q�6�    6.   �� *
IsReadOnly+��5k   .   �� *GhiChu+$	 PropertyChanged=�$
 TwoWay=��� 5l   &   -   5         ��Name$ btn_CTPhieuDatBan��5m   )   #��[ 5o   )   $��3��5p   )   $��2q�69   $��2��6D    . $k eHiện chi tiết đặt món ăn
Phiếu đặt bàn phải tồn tại trong danh sách đặt bàn��5r   )   ���	#FF2DB0AA
���������5n   )   �� *CT_PhieuDatBanCommand+.��5r   �   %#Mở Chi tiết Phiếu đặt bàn5t   '   5u   #   5v      5w        5x      $	��Top=�6.   $��10q�6C   .��5y      ]� .+�5z   "   � $	��Top=�6'   $��	10,10,0,0q�6<    5{   &   �� 5|   *   �� 5}   *   $
��0.5* �6;   .+�5   &   � $��0��6+    5�   *   �� 5�   .   $	��10* �6?   �� 5�   .   $
��160* �6?   .+�5�   *   �� $��0,5,0,0q�61   $��32��6B   $��32��6M   $6��0/QuanLyTiecCuoi;component/photos/search_32px.png��6Y   �� 5�   *   -	   5        $ tb_TimKiemLoaiBan��5�   B   $��1��62   *
  $MahApps.Metro.Controls.TextBoxHelper 
  	Watermark$ Tìm kiếm Loại Bàn��5�   5   $��0,0,0,1q�5�   5   
���   �$��15(�5�   5   $��Center=�5�   5   $
��10,5q�6P   $��Center=�5�   5   ��5�   5   �� *FilterString+$	 PropertyChanged=�5�   5   5�   '   5�   #   �� 5�   "   $	��Top=�6+   $��Danh sách đặt bàn��6@   $��10q�6[   .��5�   &   &   System.Windows.Controls.DataGrid  -
   5          Name$ dtg_DanhSachDatBan��5�   Q      AutoGenerateColumns .     CanUserAddRows .  +  %MahApps.Metro.Controls.DataGridHelper   ColumnHeaderPadding$
 10,0q�5�   f      
IsReadOnly 5�   /   �� *
IsReadOnly+��6m   �� *ListPhieuDatBan+$	 PropertyChanged=� �� SelectedItem 6�   �� *SelectedPDB+$
 TwoWay=�   Columns 5�   *   0  *System.Windows.Controls.DataGridTextColumn  5�   .   ,  &System.Windows.Controls.DataGridColumn   Header$ Loại bàn��6A      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn    Binding  6S   �� *	LoaiBan+6�     5�   .   $ Số lượng��6A    .   6S   �� *	SoLuong+6�     5�   .   $ Số lượng dự trữ��6A    .   6Z   �� *SoLuongDuTru+6�     5�   .   $ Đơn giá bàn��6A    .   6V   �� *	DonGiaBan+6�     5�   .   $ Ghi chú��6A    .   6R   �� *GhiChu+6�   5�   '   5�   #   5�      5�      5�      5�      5�        5�      $#��Thông tin đặt dịch vụ��6$     PhieuDatDichVuVM# [ 6C   .��5�      ]� ��.  5�        5�      $ Loaded��6)   . 5�         64   �� *LoadedCommand+5�      .+�5�      �� $ ��Phiếu Đặt Dịch Vụ��6    $��Center=�69   $	��Top=�5�   $   $��32(�6<   ���	#FF0E2291$��0,5,0,0q�5�   $   $��SemiBold"�65   $	��Top=�5�   $   � 5�       5�      �� 5�      -   5        ! ��Name$! grr_1��5�   ,   �� 5�      -   5        $! grr_2��5�   ,   .+�5�        $��
10,10,10,5q�6.   .��5�      � .+�5�   "   ]� -   5        " ]�Name$" dpn_DanhSachDichVu��5�   ,   ��. $y�Visible=�6]   .+�5�   &   � $	��Top=�6+   $��10,5,0,0q�6@    5�   *   �� 5�   .   �� 5�   .   $
��0.5* �6?   .+�5�   *   � $��0��6/    5�   .   �� 5�   2   $	��10* �6C   �� 5�   2   $
��160* �6C   .+�5�   .   �� $��0,5,0,0q�65   $��32��6F   $��32��6Q   $6��0/QuanLyTiecCuoi;component/photos/search_32px.png��6]   �� 5�   .   -   5        $ tb_TimKiemDichVu��5�   v   # [ 66   $��1��6f   $ Tìm kiếm Dịch Vụ��5�   5   $��0,0,0,1q�5�   5   
���   �$��15(�5�   5   $��Center=�5�   5   $
��10,5q�6P   $��Center=�5�   5   ��5�   5   �� *FilterString+$	 PropertyChanged=�5�   5   5�   +   5�   '   � 5�   &   $	��Top=�6+    5�   *   �� 5�   .   �� 5�   .   $
��0.5* �6?   .+�5�   *   �� $	��Top=�63   $��Danh sách dịch vụ��6H   $��
10,10,0,10q�6c   .��5�   .     -   5        $��dtg_DanhSachDichVu��5�   7   # [ 6Q    .   .  $
 10,0q�5�   f   $��12(�6�   ��5�   �   �� *
ListDichVu+ 6�   �� *
SelectedDV+$
 TwoWay=� 5�   2   4  .System.Windows.Controls.DataGridTemplateColumn  5�   6   $ Ảnh��6M   #   CellTemplate# 5�   :   �� 5�   >   .R�5�   B   '  !MaterialDesignThemes.Wpf.PopupBox  $��Center=�6Z   $   PlacementMode$$ BottomAndAlignCentres=�6w   %   	StaysOpen% .  &   	PopupMode$& 	MouseOver=�6�   '   ToggleContent' 5�   F   '  !MaterialDesignThemes.Wpf.PackIcon  5�   J   (   Kind$( Image=�6b   ���	#FF0F56996o   )   PopupContent.) 5�   F   �� $	��300��6g   $	��300��6s   $
��Fill=�6�   ��6L   �� *	HinhAnh+6�   5�   C   5�   ?   5�   7     5�   6   $ Tên dịch vụ��6I    .   6^   �� *	TenDichVu+6�     5�   6   $ 
Đơn giá��6I    .   6Z   �� *DonGia+6�     5�   6   $ Mô tả��6I    .   6X   �� *MoTa+6�     5�   6   $ Ghi chú��6I    .   6Z   �� *GhiChu+6�   5�   /   5�   +   � 5�   *   $��1��6/   $��Right=�6?    5�   .   �� 5�   2   $
��0.7* �6C   �� 5�   2   .+�5�   .   � $��
10,10,10,0q�63   # [ 6G    5�   2   �� 5�   6   �� 5�   6   �� 5�   6   �� 5�   6   �� 5�   6   �� 5�   6   $
��1.2* �6D   .+�5�   2   �� $��0��68   $��0,2,0,2q�6E   $��Tên dịch vụ��6V   $��SemiBold"�6l   �� 5�   2   $��1��68   $��0,2,0,2q�6E   $��
Đơn giá��6V   $��SemiBold"�6h   �� 5�   2   $��2��68   $��0,2,0,2q�6E   $��Số lượng��6V   $��SemiBold"�6i   �� 5�   2   $��3��68   $��0,2,0,2q�6E   $��Thành tiền��6V   $��SemiBold"�6k   �� 5�   2   $��4��68   $��0,2,0,2q�6E   $��Ghi chú��6V   $��SemiBold"�6h   5�   /   � 5�   .   $��1��63   $��
10,10,10,0q�6C   # [ 6W    5�   2   �� 5�   6   �� 5�   6   �� 5�   6   �� 5�   6   �� 5�   6   �� 5�   6   $
��1.2* �6D   .+�5  2   �� $��0��6:   $	��2,4q�6G   
���   �$��1q�6h    . ��6|   �� *SelectedDV.TenDichVu+$	 PropertyChanged=�$
 TwoWay=�6�   �� 5  2   $��1��6:   $	��2,4q�6G   
���   �$��1q�6h    . ��6|   �� *SelectedDV.DonGia+$	 PropertyChanged=�$
 TwoWay=�6�   	  5  2   -   5        $��nbr_DV_SoLuong��5  x   $��2��6k   $	��2,4q�6�   
���   �$��1q�6�   $
 Left=�6  * 	  Interval$* 1Q�6'  + 	  NumericInputMode$+ Numbers=�64   6I   �� *
IsReadOnly+ 6�   �� *
DV_SoLuong+$	 PropertyChanged=�$
 TwoWay=�64  �� 5  2   -   5        $��tbx_DV_ThanhTien��5  G   $��3��6:   $	��2,4q�6_   
���   �$��1q�6�    . ��6�   �� *DV_ThanhTien+$	 PropertyChanged=�$
 TwoWay=�6�   �� 5  2   -   5        $��tbx_DV_GhiChu��5  i   $��4��6\   $	��2,4q�6~   
���   �$��1q�6�    6:   �� *
IsReadOnly+��6�   �� *	DV_GhiChu+$	 PropertyChanged=�$
 TwoWay=��� 5  2   $��5��6:   #��[ 5  :   $��0q�6n   $n hĐặt dịch vụ cho tiệc cưới
Nếu dịch vụ đã được đặt sẽ không nhấn được��5
  :   ���	#FF0F5699
�������{�5  :   �� *
IsEnable+��5	  :   �� *
AddCommand+.��5
  �   Đặt dịch vụ5  3   5  /   5  +   5  '   5  #   5     5       5     $��
10,5,10,10q�6.   $��1��6B   .��5     ]� ��. .+�5  "   �� $	��Top=�6+   $#��Danh sách đặt dịch vụ��6@   $��
10,0,10,10q�6_   .��5  &     -   5        $��dtg_DanhSachDatDichVu��5  /   # [ 5  Q    .   .  $
 10,0q�5  b   $��12(�6�    5  /   �� *
IsReadOnly+��6�   �� *ListPhieuDatDichVu+$
 OneWay=� 6�   �� *SelectedPDDV+$
 TwoWay=� 5  *     5  .   $ Sửa��6E   # 5  2   �� 5  6   .R�5  :     # [ 6r   $
��Left=�6�   $$ BottomAndAlignCentres=�6�   % . $& Click=�6�   $- 'Hiện bảng sửa phiếu đặt bàn��5  R   {�5  S   �� *
IsEnable+' 5  >     5   B   $
( Edit=�6Z   ���	#FF0F56996f   .) 5"  >   �� .+�5#  B   �� $��Chi tiết chỉnh sửa��6K   $��10q�6g   .��5$  F   �  5%  J   �� 5&  N   $��0.35* �6_   �� 5'  N    5)  J   �� 5*  N   �� 5+  N   �� 5,  N   .+�5.  J   �� $��0��6P   $��0��6`   $��0q�6m   $��Số lượng��6x   $��SemiBold"�6�   $��Center=�6�   �� 5/  J   $��0��6P   $��1��6`   $��0q�6m   $��Thành tiền��6x   $��SemiBold"�6�   $��Center=�6�   �� 50  J   $��0��6P   $��2��6`   $��0q�6m   $��Ghi chú��6x   $��SemiBold"�6�   $��Center=�6�   	  51  J   $��1��6a   $��0��6q   $��2q�6~   
���   �$��1q�6�   $
 Left=�6�    52  M   �� *PDDV_SoLuong+$	 PropertyChanged=�$
 TwoWay=��� 53  J   $��1��6S   $��1��6c   $��2q�6p   
���   �$��1q�6�    . ��54  M   �� *PDDV_ThanhTien+$	 PropertyChanged=�$
 TwoWay=��� 55  J   $��1��6S   $��2��6c   $��2q�6p   
���   �$��1q�6�   ��56  M   �� *PDDV_GhiChu+$	 PropertyChanged=�$
 TwoWay=�57  G   58  C   �� 59  B   #��[ 5;  E   $
��10,2q�5<  E   $	��200��6S   $( "Lưu thông tin đặt dịch vụ��5=  E   ���	#FF0F5699
���������5:  E   �� *EditCommand+.��5=  �   Lưu thay đổi5?  C   5@  ?   5A  ;   5B  7   5D  /     5E  .   $
 Xóa��6E   # 5F  2   �� 5G  6   .R�5H  :     # [ 6r   $
��Left=�6�   $$ TopAndAlignCentres=�6�   % . $& Click=�6�   $% Xóa phiếu đặt dịch vụ��5I  J   {�5H  S   �� *
IsEnable+' 5J  >     5K  B   $( Delete=�6Z   ���	#FF0F56996h   .) 5M  >   ]� .+�5N  B   �� $��Center=�6H   $	��Top=�6e   $	��Top=�6}   
���  ��$��Cảnh báo��6�   �� 5O  B   $��Center=�6H   $	��Top=�6e   $"��Bạn có chắc muốn xóa��6z   �� 5P  B   $��Center=�6H   $	��Top=�6e   $.��(Phiếu đặt dịch vụ này không ?��6z   �� 5Q  B   #��[ 5R  E   $��2��5T  E   $��5q�6U   $	��120��5U  E   $��Bottom=�6Q   $ Xóa đặt bàn��5V  E   
���<��
���������5S  E   �� *DeleteCommand+.��5V  �   Xác nhận xóa5X  C   5Y  ?   5Z  ;   5[  7   5]  /     5^  .   $ Tên dịch vụ��6A    .   6V   �� *DICHVU.TenDichVu+6{     5_  .   $ 
Đơn giá��6A    .   6R   �� *DICHVU.DonGia+6t     5`  .   $ Số lượng��6A    .   6S   �� *	SoLuong+$	 PropertyChanged=�6�     5a  .   $ Thành tiền��6A    .   6U   �� *	ThanhTien+$	 PropertyChanged=�6�     5b  .   $ Mô tả��6A    .   6P   �� *DICHVU.MoTa+6p     5c  .   $ Ghi chú��6A    .   6R   �� *GhiChu+6m   5e  '   5f  #   5g     5h     5i     5j     5k     5l     5m     5n     
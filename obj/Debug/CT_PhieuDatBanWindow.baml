   M S B A M L   `   `   `  ����I  EQuanLyTiecCuoi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:QuanLyTiecCuoiQuanLyTiecCuoi  5      T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5	      )    #QuanLyTiecCuoi.CT_PhieuDatBanWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      .localclr-namespace:QuanLyTiecCuoi     5      Pcontrols;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5	      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      -   5        $��CT_PhieuDatBanWd��5        � WindowStartupLocation$  CenterScreen=�5         CT_PhieuDatBanVM � DataContext# [  5       � Title$$ Chi Tiết Phiếu Đặt Bàn��5      $	��662��6$   $	��800��61   *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      +  %Microsoft.Xaml.Behaviors.EventTrigger  5   
      	EventName$ Loaded��6   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 6$   �� *LoadedCommand+5      .��5      � -   5        $��grd_CTPhieuDatBan��5      
�������.+�5   
   ]� ��. # [  6)   .+�5      �� $$��Chi Tiết Phiếu Đặt Bàn��6   $��Center=�66   $	��Top=�5   $   $��32(�6<   ���	#FF292E47$��0,5,0,0q�5   $   $��SemiBold"�65   $	��Top=�5   $   � 5       � RowDefinitions 5      �� 5      �� 5      .+�5      #  MaterialDesignThemes.Wpf.Card  $	��Top=�6&   $��
10,10,10,5q�6;   $��0��6O   .��5       ]� .+�5!      �  � ColumnDefinitions 5"      �� 5#   "   �� 5$   "   $
��0.5* �63   .+�5&      ]� .+�5'   "   � $	��Top=�6'    5(   &   �� 5)   *   $	��10* �6;   �� 5*   *   $
��160* �6;   .+�5,   &   �� $��0,5,0,0q�6-   $��32��6>   $��32��6I   $6��0/QuanLyTiecCuoi;component/photos/search_32px.png��6U   �� 5-   &   -   5        	 ��Name$	 
tb_TimKiem��5-   >   $��1��6.   *  $MahApps.Metro.Controls.TextBoxHelper
   	Watermark$
 Tìm kiếm Món Ăn��5/   %   $��0,0,0,1q�50   %   
���   �$��15(�52   %   $��Center=�53   %   $
��10,5q�6@   $��Center=�54   %   ��5.   %   �� *FilterString+ �� UpdateSourceTrigger$ PropertyChanged=�54   %   55   #   �� 56   "   $��Danh sách món ăn��6+   $��	10,5,0,10q�6F   .��57   &   &   System.Windows.Controls.DataGrid  -   5        $��dtg_DanhSachMonAn��57   /      AutoGenerateColumns .     CanUserAddRows .  +  %MahApps.Metro.Controls.DataGridHelper   ColumnHeaderPadding$
 10,0q�58   f   $��DemiBold"�6�   ��57   H   �� *	ListMonAn+ �� SelectedItem 6j   �� *
SelectedMA+ �� Mode$ OneWayToSource=�   Columns 59   *   4	  .System.Windows.Controls.DataGridTemplateColumn	  5:   .   ,
  &System.Windows.Controls.DataGridColumn 
  Header$ Ảnh��6E    	  CellTemplate 5;   2   �� 5<   6   .R�5=   :   '  !MaterialDesignThemes.Wpf.PopupBox  $
��Left=�6R      PlacementMode$ BottomAndAlignCentres=�6m      	StaysOpen .     	PopupMode$ 	MouseOver=�6�      ToggleContent 5>   >   '  !MaterialDesignThemes.Wpf.PackIcon  5?   B      Kind$ Image=�6Z   ���	#FF0F56996g      PopupContent. 5A   >   �� $	��300��6_   $	��300��6k   $
��Fill=�6x   ��6D   �� *	HinhAnh+6x   5B   ;   5C   7   5E   /   0  *System.Windows.Controls.DataGridTextColumn  5F   .   $ Tên Món Ăn��6A    
  
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 6U   �� *
TenMonAn+6�     5G   .   $ 
Đơn giá��6A    .  6R   �� *DonGia+6�     5H   .   $ Mô tả��6A    .  6P   �� *MoTa+6}     5I   .    
  Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6A   $ Ghi chú��6K    .  6\   �� *GhiChu+6�   5K   '   5L   #   5M      � 5N      $��1��6#   $��Right=�63    5O   "   �� 5P   &   $
��0.6* �67   �� 5Q   &   .+�5S   "   � $��10,5,5,0q�6'    5T   &   �� 5U   *   $��1.25* �68   �� 5V   *   �� 5W   *   �� 5X   *   �� 5Y   *   �� 5Z   *   �� 5[   *   $
��1.2* �68   .+�5]   &   �� $��0��6,   $	��0,2q�69   $��Đơn giá bàn��6F   $��SemiBold"�6\   �� 5^   &   $��1��6,   $	��0,2q�69   $��Tên món ăn��6F   $��SemiBold"�6[   �� 5_   &   $��2��6,   $	��0,2q�69   $��
Đơn giá��6F   $��SemiBold"�6X   �� 5`   &   $��3��6,   $	��0,2q�69   $��Số lượng��6F   $��SemiBold"�6Y   �� 5a   &   $��4��6,   $	��0,2q�69   $��Thành tiền��6F   $��SemiBold"�6[   �� 5b   &   $��5��6,   $	��0,2q�69   $��Ghi chú��6F   $��SemiBold"�6X   5c   #   � 5d   "   $��1��6'   $��5,5,5,0q�67    5e   &   �� 5f   *   $��1.25* �68   �� 5g   *   �� 5h   *   �� 5i   *   �� 5j   *   �� 5k   *   �� 5l   *   $
��1.2* �68   .+�5n   &   ��  � ToolTip$S MĐơn giá bàn phải lớn hơn hoặc bằng Đơn giá bàn tối thiểu��6.   $��DemiBold"�6q   $��0��6�   $	��0,0q�6�   $��30��6�   $	��Top=�6�   
���   �$��0q�6�   
���  ��$��15(�5o   �    �� 
IsReadOnly . ��6.   �� *	DonGiaBan+$ PropertyChanged=�$ TwoWay=�6�   �� 5p   &   $��DemiBold"�6.   $��1��6D   $	��0,4q�6Q   
���   �$��1q�6r    . ��6�   �� *SelectedMA.TenMonAn+$ PropertyChanged=�$ TwoWay=�6�   �� 5q   &   $��DemiBold"�6.   $��2��6D   $	��0,4q�6Q   
���   �$��1q�6r    . ��6�   �� *SelectedMA.DonGia+$ PropertyChanged=�$ TwoWay=�6�   *  $MahApps.Metro.Controls.NumericUpDown  5r   &   -   5        $��nbr_MA_SoLuong��5r   �   $��DemiBold"�6_   $��3��6u   $	��0,4q�6�   
���   �$��1q�6�      TextAlignment$
 Left=�6      Interval$  1Q�61  !   NumericInputMode$! Numbers=�6>  "   
IsReadOnly" 6=   �� *
IsReadOnly+#   Value# 6�   �� *
MA_SoLuong+$ PropertyChanged=�$ TwoWay=�6>  �� 5s   &   -   5        $��tbx_MA_ThanhTien��5s   Q   $��DemiBold"�6.   $��4��6D   $	��0,4q�6i   
���   �$��1q�6�    . ��6�   �� *MA_ThanhTien+$ PropertyChanged=�$ TwoWay=�6�   �� 5t   &   -   5        $��tbx_MA_GhiChu��5t   s   $��DemiBold"�6P   $��5��6f   $	��0,4q�6�   
���   �$��1q�6�    6.   �� *
IsReadOnly+��6�   �� *	MA_GhiChu+$ PropertyChanged=�$ TwoWay=��� 5u   &   $��6��6-     MaterialDesignRaisedButton#��[ 5w   -   $��Center=�5y   -   $+ %Đặt dịch vụ cho tiệc cưới��5z   -   ���	#FF2DB0AA
�������{�5v   -   �� *
IsEnable+��5x   -   �� *
AddCommand+.��5z   {   Đặt món ăn5|   '   5}   #   5~      5      5�      5�        5�      $��
10,5,10,10q�6&   $��1��6:   .��5�      ]� ��. .+�5�      �� $	��Top=�6#   $ ��Danh sách đặt món ăn��68   $��
10,0,10,10q�6V   # [  6j   .��5�        -   5        $��dtg_DanhSachDatMonAn��5�   /    .   .  $
 10,0q�5�   b   $��12(�6�   $��DemiBold"�5�   K   $   
IsReadOnly$ 5�   '   �� *
IsReadOnly+��6I   �� *ListCTPhieuDatBan+ 6s   �� *SelectedCTPDB+$ TwoWay=� 5�   "   	  5�   &   $ Sửa��6=    5�   *   �� 5�   .   .R�5�   2     # [  6i   $
��Left=�6�   $ BottomAndAlignCentres=�6�    . $ Click=�6�   $0 *Hiện bảng sửa chi tiết đặt bàn��5�   J   {�5�   J   �� *
IsEnable+ 5�   :     5�   :   $
 Edit=�6R   ���	#FF0F56996^   . 5�   6   �� .+�5�   :   �� $��grb_ChiTietChinhSua��6C   $��Chi tiết chỉnh sửa��6^   $��10q�6z   # [  6�   .��5�   >   �  5�   B   �� 5�   F   $��0.35* �6W   �� 5�   F    5�   B   �� 5�   F   �� 5�   F   �� 5�   F   .+�5�   B   �� $��0��6H   $��0��6X   $��0q�6e   $��Số lượng��6p   $��SemiBold"�6�   $��Center=�6�   �� 5�   B   $��0��6H   $��1��6X   $��0q�6e   $��Thành tiền��6p   $��SemiBold"�6�   $��Center=�6�   �� 5�   B   $��0��6H   $��2��6X   $��0q�6e   $��Ghi chú��6p   $��SemiBold"�6�   $��Center=�6�     5�   B   $��1��6Y   $��0��6i   $��2q�6v   
���   �$��1q�6�   $
 Left=�6�   # 5�   M   �� *CTPDB_SoLuong+$ PropertyChanged=�$ TwoWay=��� 5�   B   $��1��6K   $��1��6[   $��2q�6h   
���   �$��1q�6�    . ��5�   M   �� *CTPDB_ThanhTien+$ PropertyChanged=�$ TwoWay=��� 5�   B   $��1��6K   $��2��6[   $��2q�6h   
���   �$��1q�6�   ��5�   M   �� *CTPDB_GhiChu+$ PropertyChanged=�$ TwoWay=�5�   ?   5�   ;   �� 5�   :   #��[ 5�   @   $
��10,2q�5�   @   $	��200��6N   $, &Lưu thông tin chi tiết đặt bàn��5�   @   ���	#FF0F5699
���������5�   @   �� *EditCommand+.��5�   �   Lưu thay đổi5�   ;   5�   7   5�   3   5�   /   5�   '   	  5�   &   $
 Xóa��6=    5�   *   �� 5�   .   .R�5�   2     # [  6i   $
��Left=�6�   $ BottomAndAlignCentres=�6�    . $ Click=�6�   $! Xóa chi tiết đặt bàn��5�   J   {�5�   J   �� *
IsEnable+ 5�   6     5�   :   $ Delete=�6R   ���	#FF0F56996`   . 5�   6   ]� .+�5�   :   �� $��Center=�6@   $	��Top=�6]   $	��Top=�6u   
���  ��$��Cảnh báo��6�   �� 5�   :   $��Center=�6@   $	��Top=�6]   $"��Bạn có chắc muốn xóa��6r   �� 5�   :   $��Center=�6@   $	��Top=�6]   $*��$Chi tiết đặt bàn này không ?��6r   �� 5�   :   #��[ 5�   =   $��2��5�   =   $��5q�6M   $	��120��5�   =   $��Bottom=�6I   $! Xóa chi tiết đặt bàn��5�   =   
���<��
���������5�   =   �� *DeleteCommand+.��5�   �   Xác nhận xóa5�   ;   5�   7   5�   3   5�   /   5�   '     5�   &   $ Tên món ăn��69    .  6M   �� *MONAN.TenMonAn+6p     5�   &   $ 
Đơn giá��69    .  6J   �� *MONAN.DonGia+6k     5�   &   $ Số lượng��69    .  6K   �� *	SoLuong+$ PropertyChanged=�6�     5�   &   $ Thành tiền��69    .  6M   �� *	ThanhTien+$ PropertyChanged=�6�     5�   &   $ Mô tả��69    .  6H   �� *
MONAN.MoTa+6g     5�   &   $ Ghi chú��69    .  6J   �� *GhiChu+6e   5�      5�      5�      5�      5�      5�      5�      5�      
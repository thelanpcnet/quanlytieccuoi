   M S B A M L   `   `   `  ����I  EQuanLyTiecCuoi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:QuanLyTiecCuoiQuanLyTiecCuoi  5   	       QuanLyTiecCuoi.HoaDon   5      T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f;controls,http://metro.mahapps.com/winfx/xaml/controls  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:QuanLyTiecCuoi     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ 
Hóa đơn��5   	   $	��620��6   $	��850��6&   (  "MahApps.Metro.Controls.MetroWindow   WindowTitleBrush �	#FF1E8D88.��5      � .+�5   
   I)clr-namespace:QuanLyTiecCuoi.UserControlsQuanLyTiecCuoi.UserControls  5      >� 5   
   D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      :x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:QuanLyTiecCuoi.UserControls     5      FmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         HoaDonVM � DataContext# [  5      .��5      �  � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       �� 5      " ��6   .�5      ��  � ��
 �   �68   �� 5       � �� 5      �� 5   "   .R�5    &   �� $��15(�6A   ���	#FF0E2291$��DemiBold"�6f   ��60   �� 6f   5!   #   5#      5$      5%      .+�5&      V;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5+      >� 5&      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5(      :x,http://schemas.microsoft.com/winfx/2006/xaml     5)      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5*      UMetroControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5+      @d2http://schemas.microsoft.com/expression/blend/2008     5,      -   5         >�Name$ HoaDonThanhToan��5'      
���������5.   J   Z� .��5/      ]� .+�50      �� $��32(�6    $��HÓA ĐƠN THANH TOÁN��6.   $	��Top=�6K   $��Center=�51       $��Center=�6;   $��0q�6X   ���	#FF1F656C6c   #  MaterialDesignThemes.Wpf.Card  52      $��	10,5,10,5q�6.   $��Bottom=�6A   .��53      � 	 � ColumnDefinitions	 55   "   �� 56   &   �� 57   &   .+�59   "   �� $��5q�6+   $��Thanh toán��66   .��5;   &   � 
 � RowDefinitions
 5<   *   �� 5=   .   �� 5>   .   �� 5?   .   �� 5@   .   �� 5A   .   .+�5C   *   �� $��DemiBold"�64   $"��Tổng tiền dịch vụ : ��6J   $
��Left=�6f   $��Center=�6�   ���	#FF404040$��3q�6�   $��0��6�   $��14(�6�   �� 5D   *   $��DemiBold"�64   $!��Tổng tiền hóa đơn : ��6J   $
��Left=�6f   $��Center=�6�   ���	#FF404040$��3q�6�   $��1��6�   $��0��6�   $��14(�6�   �� 5E   *   $��DemiBold"�64   $#��Tổng tiền đặt cọc : ��6J   $
��Left=�6f   $��Center=�6�   ���	#FF404040$��3q�6�   $��2��6�   $��0��6�   $��14(�6�   �� 5F   *   $��DemiBold"�64   $��Tổng tiền phạt :��6J   $
��Left=�6b   $��Center=�6}   ���	#FF404040$��3q�6�   $��3��6�   $��0��6�   $��14(�6�   �� 5G   *   -   5         ��Name$ text_HoanTien��5G   4   $��Còn lại : ��6K   $
��Left=�6]   $��Center=�6x   ���	#FF404040$��3q�6�   $��4��6�   $��0��6�   $
��Bold"�6�   $��14(�6�   �� 5I   *   -   5        $ tblock_Tiendichvu��5I   4   $��Right=�6o   $��Center=�6�   ���	#FF404040$��3q�6�   $��0��6�   $��0��6�   $��14(�6�   ��6O   �� *TongTienDichVu+6�   �� 5J   *   -   5        $ tblock_Tienhoadon��5J   4   $��Right=�6o   $��Center=�6�   ���	#FF404040$��3q�6�   $��1��6�   $��0��6�   $��14(�6�   ��6O   �� *TongTienHoaDon+6�   �� 5K   *   -   5        $ tblock_Tiencoc��5K   Z   $��Right=�6�   $��Center=�6�   ���	#FF404040$��3q�6�   $��2��6�   $��0��6�   $��14(�6   64   �� *ListTiecCuoi2+��6r   �� *
TienDatCoc+6  �� 5L   *   -   5        $ tblock_Tienphat��5L   4   $��Right=�6u   $��Center=�6�   ���	#FF404040$��3q�6�   $��3��6�   $��0��6�   $��14(�6�   ��6M   �� *
TienPhat+ �� Mode$ OneWay=�6�   �� 5M   *   -   5        $ tblock_Tienconlai��5M   4   $��Right=�6u   $��Center=�6�   ���	#FF404040$��3q�6�   $��4��6�   $��0��6�   $��14(�6�   $
��Bold"�6�   ��6O   �� *ConLai+$ OneWay=�6�   5N   '   5O   #   �� 5P   "   $��1��6+   $��5q�6;   $��Quản lý ��6F   .��5Q   &   � 	 5R   *   �� 5S   .   6A   �� 5T   .   6A   
 5V   *   �� 5W   .   $
��0.4* �6<   �� 5X   .   �� 5Y   .   �� 5Z   .   .+�5\   *   � -   5         �Name$	 abc��5\   /     BaoCaoThangVM# [ 6<   .  (System.Windows.Interactivity.Interaction   Triggers 5]   .   /  )System.Windows.Interactivity.EventTrigger  5^   2      	EventName$ Loaded��6A   .  (System.Windows.Interactivity.TriggerBase   Actions. 5_   6   6  0System.Windows.Interactivity.InvokeCommandAction     Command 6L   �� *GetBaoCaoThangVM+ �� Source# [     CommandParameter 6�   ��  �� ElementName$	 abc��6�   5`   3   5b   +   �� 5c   *   $��27,0,0,0q�60   $
��Bold"�6B   $��Center=�6T   $��1��6o   $��Ngày lập hóa đơn��6|   �� 5d   *   $��27,0,0,0q�60   $
��Bold"�6B   $��Center=�6T   $��2��6o   $��Người lập hóa đơn��6|   (  "System.Windows.Controls.DatePicker  5e   *   -	   5          Name$ DP_ngaylaphoadon��5e   E   $��1��65   $��26��6�   $��1��6�   $��0,7,10,7q�6  
���   �$��1q�6)  {�6_   �� *
IsEnable+   Text 6~   �� *NgayThanhToan+ �� StringFormat$ 
MM/dd/yyyy�� �� UpdateSourceTrigger$ PropertyChanged=�$ TwoWay=�6)  �� 5f   *    �� 
IsReadOnly . $��Center=�6e   $��1��6�   $��2��6�   $��0,7,10,7q�6�   $��26��6�   
���   �$��1q�6�   ��6E   �� *NguoiLapHoaDon+6�   �� 5g   *   -
   5         ��Name$ btn_LuuHoaDon��5j   )   $	��140��5h   )   $��1��5l   )   $��3��5m   )   ���	#FF2DB0AA
�������$��Center=�5o   )   $��Center=�5p   )   $��5q�5q   )     MaterialDesignRaisedButton#��[ 5r   )   $��Lưu hóa đơn��5s   )   {�5i   )   �� *
IsEnable+��5k   )   �� *	LuuHoaDon+# [  5t   +   �� 5v   *   -   5        $	��140��5w   )   $��3��5x   )   $��0��5{   )   
�������$��Center=�5|   )   $��Center=�5}   )   $��5q�5~   )   #��[ 5   )   $��In hóa đơn��5�   )   ���	#FF2DB0AA{�5y   )   �� *
IsEnable+��5z   )   �� *
InHoaDon+5�   U   5�   '   5�   #   5�      5�      ]� 5�      ��. 
�������$	��Top=�6L   $	��125��6a   .+�5�        $��	10,0,10,5q�62   .��5�   "   �� $��5q�6+   $��Thông tin hóa đơn��66   .��5�   &   � 	 5�   *   �� 5�   .   6A   �� 5�   .   6A   �� 5�   .   6A   .+�5�   *   � $��0��6/   .+�5�   .   � $��5,10,5,5q�63   	 5�   2   �� 5�   6   $
��0.8* �6G   6W   �� 5�   6   $��2* �6G   6T   .+�5�   2   � $��0��67   
 5�   6   �� 5�   :   �� 5�   :   .+�5�   6   �� $
��Bold"�6<   $��Center=�6N   $��0��6i   $��Tên chú rể��6v   �� 5�   6   $
��Bold"�6<   $��Center=�6N   $��1��6i   $��Tên cô dâu��6v   5�   3   � 5�   2   $��1��67   
 5�   6   �� 5�   :   �� 5�   :   .+�5�   6   ��  . $��Center=�6�   $��0��6�   $��2q�6�   
���   �$��1q�6
   6P   �� *ListTiecCuoi2+��6v   �� *
TenChuRe+$ OneTime=�$ PropertyChanged=�6
  �� 5�   6    . $��Center=�6�   $��1��6�   $��2q�6�   
���   �$��1q�6
   6P   �� *ListTiecCuoi2+��6v   �� *
TenCoDau+$ OneTime=�$ PropertyChanged=�6
  5�   3   5�   /   5�   +   � 5�   *   $��1��6/   .+�5�   .   � $��5,10,5,5q�63   	 5�   2   �� 5�   6   $
��1.2* �6G   6W   �� 5�   6   $��2* �6G   6T   .+�5�   2   � $��0��67   
 5�   6   �� 5�   :   �� 5�   :   .+�5�   6   �� $
��Bold"�6<   $��Center=�6N   $��0��6i   $��Số lượng bàn��6v   �� 5�   6   $
��Bold"�6<   $��Center=�6N   $��1��6i   $��Tổng tiền bàn��6v   5�   3   � 5�   2   $��1��67   
 5�   6   �� 5�   :   �� 5�   :   .+�5�   6   ��  . $��Center=�6l   $��0��6�   $��2q�6�   
���   �$��1q�6�   ��6Q   �� *	TongSoBan+6�   �� 5�   6    . $��Center=�6n   $��1��6�   $��2q�6�   
���   �$��1q�6�   ��6Q   �� *TongTienBan+6�   5�   3   5�   /   5�   +   � 5�   *   $��2��6/   .+�5�   .   � $��5,10,5,5q�63   	 5�   2   �� 5�   6   $��1.05* �6G   6X   �� 5�   6   $
��1.5* �6G   6V   .+�5�   2   � $��0��67   
 5�   6   �� 5�   :   �� 5�   :   .+�5�   6   �� $
��Bold"�6<   $��Center=�6N   $��0��6i   $��Ngày đãi tiệc��6v   �� 5�   6   $
��Bold"�6<   $��Center=�6N   $��1��6i   $��Số điện thoại��6v   5�   3   � 5�   2   $��1��67   
 5�   6   �� 5�   :   �� 5�   :   .+�5�   6     -   5        $ DP_NgayDaiTiec��5�   R   {�. $��0��6�   $	��2,4q�6�   
���   �$��1q�6�    6j   �� *NgayDaiTiec+$ 
MM/dd/yyyy��$ PropertyChanged=�6�   �� 5�   6    . $��Center=�6�   $��1��6�   $��2q�6�   
���   �$��1q�6   6?   �� *ListTiecCuoi2+��6e   �� *SoDienThoai+$ OneTime=�$ PropertyChanged=�6  5�   3   5�   /   5�   +   5�   '   5�   #   5�      5�        5�      $
��10,0q�6.   .��5�      � 	 5�   "   �� 5�   &   69   �� 5�   &   69   .+�5�   "   � $��0��6'   .+�5�   &   �� $��5q�6/   $��Dịch vụ��6:   .��5�   *   � $��0q�6/   
�������	 5�   .   �� 5�   2   $��1* �6C   �� 5�   2   $
��403* �6C   �� 5�   2   $
��354* �6C   .+�5�   .   &   System.Windows.Controls.DataGrid     AutoGenerateColumns .     
IsReadOnly .    GridLinesVisibility$
 None=�6�      HorizontalGridLinesBrush
 �   �   VerticalGridLinesBrush
 �   �$��3��6�   ��68   �� *ListPhieuDatDichVu+    Columns  5�   2   0	  *System.Windows.Controls.DataGridTextColumn	  5�   6   ,
  &System.Windows.Controls.DataGridColumn! 
  Header$! Dịch vụ��6I   " 	  FontSize$" 14Q�6Z   1  +System.Windows.Controls.DataGridBoundColumn#   Binding# 6h   �� *DICHVU.TenDichVu+	  5�   6   $! Số lượng��6I   $" 14Q�6[   # 6i   �� *	SoLuong+5�   7   	  5�   6   $! 
Đơn giá��6I   $" 14Q�6Z   # 6h   �� *DICHVU.DonGia+5�   7   	  5�   6   $! Thành tiền��6I   $" 14Q�6]   $ 
  Width5  /System.Windows.Controls.DataGridLengthConverter$$ * 6k   # 6u   �� *	ThanhTien+5�   7   5�   /   5�   +   5�   '   5�   #   � 5�   "   $��1��6'   .+�5�   &   �� $��5q�6/   $��Phiếu đặt bàn��6:   .��5�   *   � $��0q�6/   
�������	 5�   .   �� 5   2   $��1* �6C   �� 5  2   $
��403* �6C   �� 5  2   $
��354* �6C   .+�5  .     -   5        $��PhieuDatBan��5  7    .   . $
 None=�6�   
 �   �
 �   �$��3��6�   ��6J   �� *ListPhieuDatBan+% J� InputBindings% 5  2   d� 5  6   & d� MouseAction$& LeftDoubleClicke�5     ' �� Command' 5     �� *DoubleClickCommandCT_Phieu+( �� CommandParameter( 5	     �� $ PhieuDatBan��  5  2   	  5  6   $! Loại Bàn��6I   $" 14Q�6[   # 6i   �� *	LoaiBan+5  7   	  5  6   $! Số lượng��6I   $" 14Q�6[   # 6i   �� *	SoLuong+5  7   	  5  6   $! Số lượng dự trữ��6I   $" 14Q�6b   # 6p   �� *SoLuongDuTru+5  7   	  5  6   $! Đơn giá bàn��6I   $" 14Q�6^   $$ * 6l   # 6v   �� *	DonGiaBan+5  7   5  /   5  +   5  '   5  #   5     5     5     5     5     5     5     5      
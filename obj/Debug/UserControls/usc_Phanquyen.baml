   M S B A M L   `   `   `  ����I  EQuanLyTiecCuoi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:QuanLyTiecCuoi.UserControlsQuanLyTiecCuoi.UserControls  5      /    )QuanLyTiecCuoi.UserControls.usc_Phanquyen   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:QuanLyTiecCuoi.UserControls     5      T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f;controls,http://metro.mahapps.com/winfx/xaml/controls  5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5	      -   5        $��PhanQuyenWd��5      $��15(�5      .��5      � 
�������.+�5   
   4  .MahApps.Metro.Controls.MetroAnimatedTabControl  -   5           Name$  AnimatedTabControl��5   +   .@�5      )  #MahApps.Metro.Controls.MetroTabItem     PhanQuyenVM � DataContext# [  6$   $��Quản lý Phân quyền��6O   .��5      ]� ��. 
�������.+�5      �� $��Quản Lý Phân Quyền��6    $��Center=�6:   $	��Top=�5   $   $��32(�6<   ���	#FF1F656C$��0,5,0,5q�5   $   $��Medium"�65   $	��Top=�5   $   �� 5      $	��Top=�6   $��Center=�64   $��2q�6Q   
���   �$��1q�6p    �� 
IsEditable .  �� 
IsReadOnly . $	��200��5       �� Text$ Tên nhóm người dùng��5      $��15(�5      
���<�� �� DisplayMemberPath$ TenNhomNguoiDung��5       �� SelectedItem 5      �� *SelectedNhomNguoiDung+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=���5      �� *ListNhomNguoiDung+$ PropertyChanged=�$ OneWay=�5      #  MaterialDesignThemes.Wpf.Card  5      $
��10,5q�6*   .��5       � 	 � ColumnDefinitions	 5!      �� 5"   "   �� 5#   "   $��0.15* �63   �� 5$   "   .+�5&      �� $��0��6'   $��Danh sách chức năng��67   $��	10,0,0,10q�6T   .��5'   "   &   System.Windows.Controls.DataGrid  
   AutoGenerateColumns
 .     CanUserAddRows .  $��12(�5(   ^   $��Normal"�5)   +   ��5'   +   �� *ListChucNang+$ PropertyChanged=� 6u   �� *SelectedChucNang+$ TwoWay=�   Columns 5*   &   0  *System.Windows.Controls.DataGridTextColumn  5+   *   ,  &System.Windows.Controls.DataGridColumn   Header$ Tên chức năng��6=      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 6T   �� *TenChucNang+6�     5,   *   $$ Tên giao diện được load��6=    .  6^   �� *TenManHinhDuocLoad+6�   5.   #   5/      ]� 50      $��1��6(   ��.  $��Center=�6N   .+�51   "   �� $
��4,15q�6)   $	��Top=�67   
�������
��� � � � ToolTip$* $Thêm chức năng cho phân quyền��53   )     MaterialDesignRaisedButton#��[ 55   )   ��52   )   �� *
AddCommand+{�54   )   �� *	IsEnabled+.��56   &   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ ChevronDoubleRight=�6>   $��24��6X   57   #   �� 58   "   $
��4,15q�6)   $��Bottom=�67   
�������
���<��$+ %Xóa chức năng của phân quyền��5:   )   #��[ 5<   )   ��59   )   �� *DeleteCommand+{�5;   )   �� *	IsEnabled+.��5=   &     $ ChevronDoubleLeft=�6>   $��24��6W   5>   #   5?      �� 5@      $��2��6'   $��Danh sách phân quyền��67   $��	0,0,10,10q�6U   .��5A   "   � .+�5B   &     
 .   .  $��12(�5C   ^   $��Normal"�5D   +   ��5B   /   �� *ListPhanQuyen+$ PropertyChanged=� 6z   �� *SelectedPhanQuyen+$ TwoWay=� 5E   *     5F   .   $ Tên chức năng��6A    .  6X   �� *CHUCNANG.TenChucNang+6�     5G   .   $$ Tên giao diện được load��6A    .  6b   �� *CHUCNANG.TenManHinhDuocLoad+6�   5I   '   5J   #   5K      5L      5M      5N      5O        5P      $��Quản lý Tài khoản��6$     NguoiDungVM# [ 6?   .��5Q        $��1��6&   $��	5,5,10,10q�66   .��5R      ]� ��. .+�5S      �� $��Quản Lý Tài Khoản��6$   $��Center=�6=   $	��Top=�5T   $   $��32(�6<   ���	#FF0E2291$��0,5,0,5q�5U   $   $��Medium"�65   $	��Top=�5V   $   � 5W      $	��Top=�6   	 5X      �� 5Y   "   �� 5Z   "   $
��0.5* �63   .+�5\      �� $��0��6'   $��Danh sách người dùng��67   $��10q�6U   .��5]   "     
 .   .  $��12(�5^   ^   $��Normal"�5_   +   ��5]   +   �� *ListNguoiDung+$ PropertyChanged=� 6v   �� *SelectedNguoiDung+$ TwoWay=�$ PropertyChanged=� 5`   &     5a   *   $ Tên người dùng��6=    .  6U   �� *TenNguoiDung+6�     5b   *   $ Tên đăng nhập��6=    .  6T   �� *
Username+6�     5c   *   $ Mật khẩu��6=    .  6O   �� *
Password+6�     5d   *   $ Tên nhóm người dùng��6=    .  6Z   �� * NHOMNGUOIDUNG.TenNhomNguoiDung+6�   5f   #   5g      � 5h      $��1��6#    � RowDefinitions 5i   "   �� 5j   &   �� 5k   &   $
��0.5* �64   .+�5m   "   �� $��Thông tin người dùng��6+   $��10q�6I   .��5n   &   �  5o   *   �� 5p   .   �� 5q   .   �� 5r   .   �� 5s   .   �� 5t   .   �� 5u   .   �� 5v   .   �� 5w   .   .+�5y   *   �� $��0��60   $��Tên người dùng��6=   $��Center=�6V   $
��Left=�6q   $��15(�6�   $��SemiBold"�6�   �� 5z   *   $��2��60   $��Tên đăng nhập��6=   $��Center=�6U   $
��Left=�6p   $��15(�6�   $��SemiBold"�6�   �� 5{   *   $��4��60   $��Mật khẩu��6=   $��Center=�6P   $
��Left=�6k   $��15(�6�   $��SemiBold"�6�   �� 5|   *   $��6��60   $��Nhóm người dùng��6=   $��Center=�6W   $
��Left=�6r   $��15(�6�   $��SemiBold"�6�   �� 5~   *   $��1��6T   $��4q�6a   
���   �$��1q�6�    �� 
IsReadOnly 62   �� *
IsReadOnly+��6�   �� *TenNguoiDung+$ PropertyChanged=�$ TwoWay=��� 5   *   $��3��6T   $��4q�6a   
���   �$��1q�6�    62   �� *
IsReadOnly+��6�   �� *
Username+$ PropertyChanged=�$ TwoWay=��� 5�   *   $��5��6T   $��4q�6a   
���   �$��1q�6�    62   �� *
IsReadOnly+��6�   �� *
Password+$ PropertyChanged=�$ TwoWay=��� 5�   *   $��7��6U   $��4q�6b   
���   �$��1q�6�   $ TenNhomNguoiDung��6�   63   �� *
IsReadOnly+ 6�   �� *20SelectedNguoiDung.NHOMNGUOIDUNG.TenNhomNguoiDung+$ PropertyChanged=�$ OneWay=� 6	  �� *SelectedNhomNguoiDung+$ TwoWay=�$ PropertyChanged=���6i  �� *ListNhomNguoiDung+$ PropertyChanged=�$ OneWay=�6�  5�   '   5�   #   �� 5�   "   $��1��6-   .+�5�   &   �� #��[ 5�   )   $
��20,7q�5�   )   $ Thêm tiệc cưới��5�   )   ���	#FF0F5699
�������{�5�   )   �� *
IsEnable+��5�   )   �� *ClearCommand+.��5�   l   Làm Mới Vùng Nhập5�   '   �� 5�   &   #��[ 5�   )   $
��20,7q�5�   )   $ Thêm tiệc cưới��5�   )   ���	#FF0F5699
�������{�5�   )   �� *
IsEnable+��5�   )   �� *
AddCommand+.��5�   l   Thêm Người Dùng5�   '   �� 5�   &   #��[ 5�   )   $
��20,7q�5�   )   $$ Sửa thông tin đặt Tiệc��5�   )   
��� � �
�������{�5�   )   �� *
IsEnable+��5�   )   �� *EditCommand+.��5�   p   Sửa Người Dùng5�   '   �� 5�   &   #��[ 5�   )   $
��20,7q�5�   )   $# Xóa thông tin đặt Tiệc��5�   )   
���<��
�������{�5�   )   �� *
IsEnable+��5�   )   �� *DeleteCommand+.��5�   r   Xóa Người Dùng5�   '   5�   #   5�      5�      5�      5�      5�      5�      5�      5�      
   M S B A M L   `   `   `  ����I  EQuanLyTiecCuoi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:QuanLyTiecCuoi.UserControlsQuanLyTiecCuoi.UserControls  5      T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5      -    'QuanLyTiecCuoi.UserControls.usc_Quidinh   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:QuanLyTiecCuoi.UserControls     5      Pcontrols;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5	      -   5        $��	QuiDinhWd��5         CaVM  � DataContext#  [  5      .��5      � 
�������.+�5   
   ]� ��. .+�5      �� $$��Quản Lý Qui Định Và Ca��6   $��Center=�67   $	��Top=�5   $   $��32(�6<   ���	#FF1F656C$��0,5,0,0q�5   $   $��SemiBold"�65   $	��Top=�5   $   #  MaterialDesignThemes.Wpf.Card  5      $��Bottom=�6#   $��
10,5,10,10q�6;   .��5      ]� .+�5      �� $#��Quản lý qui định phạt��6   $��10q�6>   $	��Top=�6J   .��5      � $��10q�6    � ColumnDefinitions 5      �� 5   "   $
��172* �63   �� 5   "   $	��66* �63   �� 5   "   $
��103* �63   �� 5   "   $
��170* �63   �� 5   "   $
��217* �63   .+�5      �� $��0��6$   $��SemiBold"�64   $��15(�6J   .��6X   Áp dụng qui định phạt6o   �� 5       $��1��6F   +  %MahApps.Metro.Controls.CheckBoxHelper!   CheckBackgroundFillChecked �	#FFFF6425,   %CheckBackgroundFillUncheckedMouseOver
 ���� *   #CheckBackgroundFillCheckedMouseOver �	#FFFF6425"   CheckGlyphForegroundChecked
 �   �+   $CheckGlyphForegroundCheckedMouseOver
 �   �)   "CheckGlyphForegroundCheckedPressed
 �   �{�6'   �� *
IsEnable+ d� 	IsChecked 6V   �� *ApDungQuiDinhPhat+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� Mode$
 TwoWay=�5&   '   �� 5'      $��2��6$   $��SemiBold"�64   $��15(�6J   .��6X   Tỉ lệ phạt (%)6h   *  $MahApps.Metro.Controls.NumericUpDown  5(      -   5          Name$ nud_TiLePhat��5(   W      Minimum$ 0Q�6�      Maximum$	 100Q�6�   $��3��6�   $��24,2,7,2q�6�   
���   �$��1q�6
     TextAlignment$
 Left=�6     Interval$ 10Q�63     
IsReadOnly 65   �� *
IsReadOnly+   Value 6m   �� *
TiLePhat+$	 PropertyChanged=�$
 TwoWay=�6A  �� 5)      -   5         ��Name$ btn_SuaQuiDinh��5)   D   $��Sửa��6\   $��4��6j     MaterialDesignRaisedButton#��[ 6�    � ToolTip$ Sửa Qui Định��5*   &   ���	#FF2DB0AA
�������$
��Auto��6h   $��	54,0,24,1q�6v   {�5)   %   �� *
IsEnable+��6z   �� *EditQuiDinhCommand+5*   v   5+      5,      5-      5.        5/      $	��Top=�6"   $��
10,10,10,5q�67   .��50      �� $��Quản lý Ca��6   $��
10,5,10,10q�6/   .��51      ]� ��. .+�52      � $	��Top=�6   .+�53      � $��10q�6#    54   "   �� 55   &   $
��0.6* �67   �� 56   &   �� 57   &   $
��0.5* �67   �� 58   &   �� 59   &   $
��0.6* �67   �� 5:   &   .+�5<   "   �� $��0��6(   $��SemiBold"�68   $��15(�6N   .��6\   	Tên Ca6d   �� 5=   "   $��1��6�   $��0,2,20,2q�6�   
���   �$��1q�6�    �� 
IsReadOnly 6*   �� *
IsReadOnly+��6L   �� *TenCa+$	 PropertyChanged=�$
 TwoWay=�6�   �� 5>   "   $��2��6(   $��SemiBold"�68   $��15(�6N   $��10,2,0,2q�6\   .��6n   Bắt đầu6w   �� 5?   "   -   5         ��Name$ 
txb_BatDau��5?   L   *  $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ hh:mm:ss��6`   $��3��5@   *   $��0,2,20,2q�6:   
���   �$��1q�6`    5?   *   �� *
IsReadOnly+��6�   �� *BatDau+$	 PropertyChanged=�$
 TwoWay=�5A   V   �� 5B   "   $��4��6(   $��SemiBold"�68   $��15(�6N   $��20,2,0,2q�6\   .��6n   Kết thúc6x   �� 5C   "   -   5        $ txb_KetThuc��5C   L   $ hh:mm:ss��6a   $��5��5D   *   $��0,2,20,2q�6:   
���   �$��1q�6`    5C   *   �� *
IsReadOnly+��6�   �� *	KetThuc+$	 PropertyChanged=�$
 TwoWay=�5D   `   5E      5F      � 5G      $��1��6   $��Bottom=�6/    5H      �� 5I   "   �� 5J   "   �� 5K   "   �� 5L   "   65   .+�5N      �� $��Thêm��6D   $��0��6r   #��[ 6�   $��10q�5O   %   $ Thêm ca��61   ���	#FF2DB0AA
�������$	��140��6m   {�5N   %   �� *
IsEnable+��6S   �� *
AddCommand+5O   m   �� 5P      $��Sửa��6D   $��1��6R   #��[ 6�   $��10q�5Q   %   $ Sửa thông tin Ca��61   ���	#FF2DB0AA
�������$	��140��6v   {�5P   %   �� *
IsEnable+��6b   �� *EditCommand+5Q   v   �� 5R      $
��Xóa��6D   $��2��6R   #��[ 6�   $��10q�5S   %   $ Xóa Ca��61   
���<��
�������$	��140��6j   {�5R   %   �� *
IsEnable+��6b   �� *DeleteCommand+5S   j   �� 5T      $��Làm mới��6D   $��3��6X   #��[ 6�   $��10q�5U   %   $% Làm mới thông tin nhập��61   ���	#FF2DB0AA
�������$	��140��6   {�5T   %   �� *
IsEnable+��6h   �� *RefreshCommand+5U      5V      �� 5W      $��Bottom=�6#   $��Danh sách Ca��6;   $��
10,5,10,10q�6Q   .��5X      &   System.Windows.Controls.DataGrid     AutoGenerateColumns .     
IsReadOnly . ��6C   �� *ListCa+ �� SelectedItem 6t   �� *SelectedItem+$
 TwoWay=�   Columns 5Y   "   0  *System.Windows.Controls.DataGridTextColumn  5Z   &   ,  &System.Windows.Controls.DataGridColumn   Header$ Tên Ca��69      Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.3* 6I   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6V   �� *TenCa+  5[   &   $ Giờ băt đầu��69   $
 0.3* 6N    6[   �� *BatDau+  5\   &   $ Giờ kết thúc��69   $
 0.5* 6O    6\   �� *	KetThuc+5^      5_      5`      5a      5b      5d      5e      5f      
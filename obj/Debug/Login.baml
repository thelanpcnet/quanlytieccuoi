   M S B A M L   `   `   `  ����I  EQuanLyTiecCuoi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:QuanLyTiecCuoiQuanLyTiecCuoi  5   	       QuanLyTiecCuoi.Login   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:QuanLyTiecCuoi     5   	   T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f6mah,http://metro.mahapps.com/winfx/xaml/controls  5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   -   5        $��Loginwindow��5   	     � AllowsTransparency  . $	��300��5   	   $	��450��6    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�6      LoginVM � DataContext# [  5   	   ��5   	   Z�  � 	Resources 5        
close_icon �� ImageSource j� Stretch  close_icon_2  FocusVisual �� Property	 �� Value
 J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background 	 Button.Pressed.Border 
 Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground  closeBtnStyle �� 
TargetType �� 
TargetType ��Name ��Name �� Triggers P� Property P� Value �� 
TargetName��%�  &	       &	 ;     &	 v     &	      &	 C    &	 f    &	 �    &	 �    &		 �    &	
 �    &	     &	 8    &	 [    7  7  7  7  7  7  7 	 7 
 7  7  �� 5   
   $ photos/sdg.png��6(   $ Uniform=�6E   �� 5   
   $ photos/sdr.png��6*   $ Uniform=�6G   �� 5   
   .�5      ��  � ��	 5      �� 5      .R�5      �� $��2q�6$   
 . #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5    
   $ 	#FFBEE6FD��6>   �� 5!   
   $ 	#FF3C7FB1��6:   �� 5"   
   $ 	#FFC4E5F6��6<   �� 5#   
   $ 	#FF2C628B��68   �� 5$   
   $ 	#FFF4F4F4��6=   �� 5%   
   $ 	#FFADB2B5��69   �� 5&   
   $ 	#FF838383��6=   �� 5'   
   " ��6&   .�5(      ��  �@�FocusVisualStyle8	   61   �� 5)       � ��8	  6+   �� 5*       � ��8	  6,   �� 5+       � ��#	 � ��6+   �� 5,       � ��$	 1q�60   �� 5-       � ��$	 Center=�6;   �� 5.       � ��$	 Center=�69   �� 5/       � ��$	 1q�6(   �� 50       � ��	 51      �� 52      " ��6&   .R�53      �� $ border��6!   #��z��61   #��z��6]   #��z��6�   
 . ._�54      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. #
 z
 6�   #��z��6  55       56      P� 57       �@��IsDefaulted . . �58   "   �� $ border��6@   #	 � ��6T    � ��59      P� 5:       �@J�IsMouseOver . . �5;   "   �� $ border��6?   8	   � ��6S   �� 5<   "   $ border��6@   8	   � ��6T   5=      P� 5>       � �� . . �5?   "   �� $ border��6?   8	   � ��6S   �� 5@   "   $ border��6@   8	   � ��6T   5A      P� 5B       � {� .  . �5C   "   �� $ border��6?   8	   � ��6S   �� 5D   "   $ border��6@   8	   � ��6T   �� 5E   "   $ contentPresenter��6K   8	 	  � ��6i   5F      5H      5J      5K      5L      .��5M      ��  �� CornerRadius$ 15��6   ��5N   
   �� 5O      $ photos/bg.png��6   ._�5Q   
   �  � ColumnDefinitions 5R      �� 5S      6%   �� 5T      6%   .+�5V      � $��0��6   � 5W      $��1��6    � RowDefinitions 5X      �� 5Y      $��1* �6$   62   �� 5Z      $��1* �6$   62   �� 5[      6&   �� 5\      $
��0.5* �6$   64   .+�5^      �� $��Dancing Script)�5_      $��30(�61   $��Center=�5`      $��Center=�5a      $
��Bold"�62    �� 
LineHeight$ 24��6D   $��0,15,0,0q�6T   ���	#FF2DB0AAĐăng Nhập5c      #  MaterialDesignThemes.Wpf.Card  5d      $��3��6&   $��10,75,10,9.667q�67   .��5e      �  5f      �� 5g      $
��0.7* �6,   �� 5h      .+�5j      ]� .+�5k      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Account=�66   $��10,5,0,5q�6E   $��30��6W   $��30��6c   $��Center=�6n   �� 5l      -   5         ��Name$ tbx_TenDangNhap��5o   !   $��10,20,5,20.4q�5m   !   $��0��5p   !   ���	#FF080F5D$��0,0,0,2q�5r   !   +  %MahApps.Metro.Controls.ControlsHelper   MouseOverBorderBrush
 ��iA�$��15(�5t   !   
���   �*  $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Tên Đăng Nhập��5v   !   $��Center=�5y   !   ��5n   !   �� *
Username+ �� Mode$ OneWayToSource=� �� UpdateSourceTrigger$ PropertyChanged=�   ClearTextButton 5w   !   ��   �� RelativeSource  �� *Self+! �� Path$!! (mah:TextBoxHelper.HasText)�$ OneWay=�.��5y   <   5z      5{      ]� 5|      $��1��6$   $��0,0,0,10q�61   .+�5}        $��	13,5,4,10q�66   $	 Key=�6I   $��30��6U   $��24��6a   $	��Top=�6l   $��1��6�   G� 5~      -   5        " G�Name$" pwb_MatKhau��5   !   $��1��5�   !   $��15(�5�   !   $��9,0,5,0q�5�   !   ���	#FF080F5D$	��Top=�5�   !   
���   �$��0,0,0,2q�5�   !   $ Mật Khẩu��5�   !    # MahApps.Styles.PasswordBox.Win8#��[ 5�   !   
 ��iA� 5�   !   ��   �� *Self+$!! (mah:TextBoxHelper.HasText)�$ OneWay=�*  $Microsoft.Xaml.Behaviors.Interaction#   Triggers# 5�   "   +  %Microsoft.Xaml.Behaviors.EventTrigger  5�   &   $   	EventName$$ PasswordChanged��65   *  $Microsoft.Xaml.Behaviors.TriggerBase%   Actions.% 5�   *   2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction  &   Command& 6@   �� *PasswordChangedCommand+'   CommandParameter' 5�   <   �� ( �� ElementName$( pwb_MatKhau��$ OneWay=�5�   '   5�      5�      �� 5�      -   5        $��cbx_NhoMatKhau��5�      $��Center=�5�      $��1��5�      $��Center=�5�      +	  %MahApps.Metro.Controls.CheckBoxHelper!) 	  CheckBackgroundFillChecked) �	#FFFF6425,* 	  %CheckBackgroundFillUncheckedMouseOver
* ���� *+ 	  #CheckBackgroundFillCheckedMouseOver+ �	#FFFF6425$��17(�5�      $��    Nhớ mật khẩu��5�      $��Normal"�68   $��Times New Roman)�6L   ", 	  CheckGlyphForegroundChecked
, �   �+- 	  $CheckGlyphForegroundCheckedMouseOver
- �   �). 	  "CheckGlyphForegroundCheckedPressed
. �   �$��15,47.6,9.8,34.2q�5�   [   $	��180��6u   5�      5�      �� 5�      -   5        $��2��5�      ���	#FF2DB0AA  MaterialDesignRaisedButton#��[ 5�      3
  -MaterialDesignThemes.Wpf.ButtonProgressAssist/ 
  Value$/ -1Q�5�      0 
  IsIndicatorVisible0 . 1 
  IsIndeterminate1 . 
�������$��0q�5�      $��15(�5�      $��DemiBold"�5�      $��Đăng Nhập��5�      $��44,85,44,8.333q�5�      2   ContentCharacterCasing$2 Normal=�5�      $
��Auto��5�      $��2��6'   ��5�      �� *LoginCommand+��5�      �� $( Loginwindow��5�   '   5�      �� 5�      -   5        3 ��Name$3 	btn_Close��5�   $   #��[ 5�      $��Right=�5�      $	��Top=�6-   
���   �
������ $��0q�5�      $��1��5�      $��5q�5�      $��20��6   $��20��6(   4   FocusBorderBrush4 5�   !   Z� ��5�      �� 5�      $ photos/sdg.png��6!   $ Uniform=�6>   5�      5�      5�      5�      
#pragma checksum "..\..\..\UserControls\usc_Quidinh.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "AEFAC2D676D0F9F8FC6458D4A5FF866E0E67D2A040D747FC2D95C020B0273A4E"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using MahApps.Metro.Controls;
using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using Microsoft.Xaml.Behaviors;
using Microsoft.Xaml.Behaviors.Core;
using Microsoft.Xaml.Behaviors.Input;
using Microsoft.Xaml.Behaviors.Layout;
using Microsoft.Xaml.Behaviors.Media;
using QuanLyTiecCuoi.UserControls;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace QuanLyTiecCuoi.UserControls {
    
    
    /// <summary>
    /// usc_Quidinh
    /// </summary>
    public partial class usc_Quidinh : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 11 "..\..\..\UserControls\usc_Quidinh.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal QuanLyTiecCuoi.UserControls.usc_Quidinh QuiDinhWd;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\..\UserControls\usc_Quidinh.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MahApps.Metro.Controls.NumericUpDown nud_TiLePhat;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\UserControls\usc_Quidinh.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_SuaQuiDinh;
        
        #line default
        #line hidden
        
        
        #line 63 "..\..\..\UserControls\usc_Quidinh.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txb_BatDau;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\UserControls\usc_Quidinh.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txb_KetThuc;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/QuanLyTiecCuoi;component/usercontrols/usc_quidinh.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\UserControls\usc_Quidinh.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.QuiDinhWd = ((QuanLyTiecCuoi.UserControls.usc_Quidinh)(target));
            return;
            case 2:
            this.nud_TiLePhat = ((MahApps.Metro.Controls.NumericUpDown)(target));
            
            #line 40 "..\..\..\UserControls\usc_Quidinh.xaml"
            this.nud_TiLePhat.ValueChanged += new System.Windows.RoutedPropertyChangedEventHandler<System.Nullable<double>>(this.NumericUpDown_ValueChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.btn_SuaQuiDinh = ((System.Windows.Controls.Button)(target));
            return;
            case 4:
            this.txb_BatDau = ((System.Windows.Controls.TextBox)(target));
            
            #line 65 "..\..\..\UserControls\usc_Quidinh.xaml"
            this.txb_BatDau.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.TextBox_PreviewTextInput);
            
            #line default
            #line hidden
            
            #line 65 "..\..\..\UserControls\usc_Quidinh.xaml"
            this.txb_BatDau.AddHandler(System.Windows.DataObject.PastingEvent, new System.Windows.DataObjectPastingEventHandler(this.TextBox_Pasting));
            
            #line default
            #line hidden
            return;
            case 5:
            this.txb_KetThuc = ((System.Windows.Controls.TextBox)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}


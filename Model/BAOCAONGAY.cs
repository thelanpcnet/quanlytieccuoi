
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace QuanLyTiecCuoi.Model
{

using System;
    using System.Collections.Generic;
    
public partial class BAOCAONGAY
{

    public int MaBaoCaoThang { get; set; }

    public int Ngay { get; set; }

    public int SoLuongTiecCuoi { get; set; }

    public decimal DoanhThu { get; set; }

    public double TiLe { get; set; }



    public virtual BAOCAOTHANG BAOCAOTHANG { get; set; }

}

}

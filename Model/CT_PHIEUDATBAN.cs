
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
    
public partial class CT_PHIEUDATBAN
{

    public int MaPhieuDatBan { get; set; }

    public int MaMonAn { get; set; }

    public int SoLuong { get; set; }

    public decimal ThanhTien { get; set; }

    public string GhiChu { get; set; }



    public virtual MONAN MONAN { get; set; }

    public virtual PHIEUDATBAN PHIEUDATBAN { get; set; }

}

}

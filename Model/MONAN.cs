
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
    
public partial class MONAN
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public MONAN()
    {

        this.CT_PHIEUDATBAN = new HashSet<CT_PHIEUDATBAN>();

    }


    public int MaMonAn { get; set; }

    public string TenMonAn { get; set; }

    public decimal DonGia { get; set; }

    public string MoTa { get; set; }

    public string HinhAnh { get; set; }

    public string GhiChu { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<CT_PHIEUDATBAN> CT_PHIEUDATBAN { get; set; }

}

}

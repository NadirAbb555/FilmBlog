//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FilmBlog.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBLCOMMENT
    {
        public int CMTID { get; set; }
        public string NIKNAME { get; set; }
        public string MAIL { get; set; }
        public string COMMENT { get; set; }
        public Nullable<int> CMTBLOG { get; set; }
    
        public virtual TBLBLOCG TBLBLOCG { get; set; }
    }
}

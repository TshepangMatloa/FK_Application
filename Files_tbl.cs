//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FK_Application
{
    using System;
    using System.Collections.Generic;
    
    public partial class Files_tbl
    {
        public int File_ID { get; set; }
        public string File_Name { get; set; }
        public string File_Number { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string File_Room { get; set; }
        public Nullable<int> User_ID { get; set; }
        public Nullable<bool> Availability { get; set; }
    }
}

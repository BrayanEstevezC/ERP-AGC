﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ERP.Models
{
    [Table("CategoriaProveeedor")]
    public class clsCategoriaProveedor
    {
        [Key]
        public int ID { get; set; }

        [Index("NombreUnico", IsUnique = true)]
        [StringLength(30)]
        public String Nombre { get; set; }
    }

    public class CategoriaProveedorDTO
    {
        public int ID { get; set; }
        public String Nombre { get; set; }
    }
}
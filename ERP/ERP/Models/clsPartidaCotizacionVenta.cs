using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ERP.Models
{
    [Table("PartidaCotizacionVenta")]
    public class clsPartidaCotizacionVenta
    {
        [Key]
        public int ID { get; set; }

        [Required]
        public String Folio { get; set; }
        public virtual clsCotizacionVenta cotizacionVenta { get; set; }

        public int ProductoID { get; set; }
        public virtual clsProducto producto { get; set; }

        public int Unidades { get; set; }
        public float PrecioUnitario { get; set; }
        public float TotalPartida { get; set; }
        public String CriterioAumento { get; set; }
        public bool Estado { get; set; }

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        public virtual List<clsPartidaRemision> partidasRemision { get; set; }
    }

    [Serializable]
    public class PartidaCotizacionDTO
    {
        public int ID { get; set; }
        public string CodigoProducto { get; set; }
        //Campos interfaz - - - - - - - - - - - - - - - - - - -
        public int Partida { get; set; }
        public string NombreProducto { get; set; }
        public string Categoria { get; set; }
        public string Imagen { get; set; }
        public string DescripProducto { get; set; }
        public string PrecioBaseFormato { get; set; }

        //Campos BD - - - - - - - - - - - - - - - - - - - - - 
        public String Folio { get; set; }
        public int ProductoID { get; set; }
        public int Cantidad { get; set; } // - - > Unidades Vendidas
        public String PrecioFormato { get; set; }
        public String TotalFormato { get; set; }
        public String CriterioAumento { get; set; }
        public bool Estado { get; set; }

        //Conversiones - - - - - - - - - - - - - - - - - - - - - 
        public float Precio { get; set; }
        public float Total { get; set; }
        public float PrecioBase { get; set; }
    }

}
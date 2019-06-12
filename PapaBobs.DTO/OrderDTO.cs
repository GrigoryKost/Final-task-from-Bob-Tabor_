using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PapaBobs.DTO
{
    public class OrderDTO
    {
        public System.Guid OrderId { get; set; }
        public Nullable<PapaBobs.DTO.Enums.SizeType> Size { get; set; }
        public Nullable<PapaBobs.DTO.Enums.CrustType> Crust { get; set; }
        public bool Sausage { get; set; }
        public bool Pepper { get; set; }
        public bool Onions { get; set; }
        public bool GreenPeppers { get; set; }
        public decimal TotalCost { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string ZIP { get; set; }
        public string Phone { get; set; }
        public bool CompletedFlag { get; set; }
        public Nullable<PapaBobs.DTO.Enums.PaymentType> PaymentType { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PapaBobs;
using System.Data.Entity;

namespace PapaBobs.Persistence
{
    public class OrderRepository
    {
        public static void CreateOrder(DTO.OrderDTO orderDTO)
        {
            var db = new PapaBobDBEntities();
            var order = convertToEntity(orderDTO);
            db.Orders.Add(order);
            db.SaveChanges();
        }

        private static Order convertToEntity(DTO.OrderDTO orderDTO)
        {
            var order = new Order();

            order.OrderId = orderDTO.OrderId;
            order.Size = orderDTO.Size;
            order.Crust = orderDTO.Crust;
            order.Sausage = orderDTO.Sausage;
            order.Pepper = orderDTO.Pepper;
            order.Onions = orderDTO.Onions;
            order.GreenPeppers = orderDTO.GreenPeppers;
            order.Name = orderDTO.Name;
            order.Address = orderDTO.Address;
            order.Phone = orderDTO.Phone;
            order.ZIP = orderDTO.ZIP;
            order.TotalCost = orderDTO.TotalCost;
            order.PaymentType = orderDTO.PaymentType;
            order.CompletedFlag = orderDTO.CompletedFlag;

            return order;


        }

        public static void CompleteOrder(Guid orderId)
        {
            var db = new PapaBobDBEntities();
            var order = db.Orders.FirstOrDefault(p => p.OrderId==orderId);
            order.CompletedFlag = true;
            db.SaveChanges();

        }

        public static List<DTO.OrderDTO> GetOrders()
        {
            var db = new PapaBobDBEntities();
            var orders = db.Orders.Where(p=> p.CompletedFlag==false).ToList();
            var DTOorders = convertToDTO(orders);
            return DTOorders;

        }

        private static List<DTO.OrderDTO> convertToDTO (List<Order> orders)
        {
            var ordersDTO = new List<DTO.OrderDTO>();
            foreach (var order in orders)
            {
                var orderDTO = new DTO.OrderDTO();

                orderDTO.OrderId = order.OrderId;
                orderDTO.Size = order.Size;
                orderDTO.Crust = order.Crust;
                orderDTO.Sausage = order.Sausage;
                orderDTO.Onions = order.Onions;
                orderDTO.Pepper = order.Pepper;
                orderDTO.GreenPeppers = order.GreenPeppers;
                orderDTO.CompletedFlag = order.CompletedFlag;
                orderDTO.PaymentType = order.PaymentType;
                orderDTO.Name = order.Name;
                orderDTO.Phone = order.Phone;
                orderDTO.Address = order.Address;
                orderDTO.ZIP = order.ZIP;
                orderDTO.TotalCost = order.TotalCost;
                ordersDTO.Add(orderDTO);              
            }


            return ordersDTO;
        }
    }
}

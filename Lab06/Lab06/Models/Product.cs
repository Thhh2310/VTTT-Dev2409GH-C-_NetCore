using System.ComponentModel.DataAnnotations.Schema;

namespace Lab06.Models
{
    [Table("Products")]
    public class Product
    {
        public string Name { get; set; }
        public string Image { get; set; }
        public float Price { get; set; }
        public float SalePrice { get; set; }
        public byte Status { get; set; }
        public string Descriptions { get; set; }
        public int CategoryId { get; set; }
        public DateTime CreateDate { get; set; }
        public Category Category { get; set; }
    }
}

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Lab06.Models
{
    [Table("Categories")]
    public class Category
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public byte Status { get; set; }
        public DateTime CreateDate { get; set; }
        public ICollection<Product> Products { get; set; }
    }
}

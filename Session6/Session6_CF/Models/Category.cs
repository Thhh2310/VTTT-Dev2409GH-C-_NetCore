using System.ComponentModel.DataAnnotations.Schema;

namespace Session6_CF.Models
{
    [Table("Categories")]
    public class Category
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public ICollection<Book> Books { get; set; }
    }
}

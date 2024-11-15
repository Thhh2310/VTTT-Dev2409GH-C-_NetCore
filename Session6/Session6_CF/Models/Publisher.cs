using System.ComponentModel.DataAnnotations.Schema;

namespace Session6_CF.Models
{
    [Table("Publishers")]
    public class Publisher
    {
        public int PublisherId { get; set; }
        public string PublisherName { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public ICollection<Book> Books { get; set; }
    }
}

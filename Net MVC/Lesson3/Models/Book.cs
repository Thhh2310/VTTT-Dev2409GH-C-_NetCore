using Microsoft.AspNetCore.Mvc.Rendering;

namespace Lesson3.Models
{
    public class Book
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int AuthorId { get; set; }
        public int GenreId { get; set; }
        public string Image { get; set; }
        public float Price { get; set; }
        public int TotalPage { get; set; }
        public string Summary { get; set; }

        //danh sách các cuốn sách
        public List<Book> GetBookList()
        {
            List<Book> books = new List<Book>()
            {
                new Book()
                {
                    Id = 1,
                    Title = "Chí Phèo",
                    AuthorId = 1,
                    GenreId = 1,
                    Image = "/images/products/chipheo.jpg",
                    Price = 50000,
                    Summary = "",
                    TotalPage = 250,
                },
                new Book()
                {
                    Id = 2,
                    Title = "Chí Phèo",
                    AuthorId = 1,
                    GenreId = 1,
                    Image = "/images/products/chipheo.jpg",
                    Price = 50000,
                    Summary = "",
                    TotalPage = 250,
                },
                new Book()
                {
                    Id = 3,
                    Title = "Chí Phèo",
                    AuthorId = 1,
                    GenreId = 1,
                    Image = "/images/products/chipheo.jpg",
                    Price = 50000,
                    Summary = "",
                    TotalPage = 250,
                },
                new Book()
                {
                    Id = 4,
                    Title = "Chí Phèo",
                    AuthorId = 1,
                    GenreId = 1,
                    Image = "/images/products/chipheo.jpg",
                    Price = 50000,
                    Summary = "",
                    TotalPage = 250,
                },
            };

            return books;
        }


        //chi tiết một cuốn sách theo id
        public Book GetBookById(int id)
        {
            Book book  = this.GetBookList().FirstOrDefault(b => b.Id == id);
            return book;
        }

        //SelectListItem Authors
        public List<SelectListItem> Authors { get; } = new List<SelectListItem>
        {
            new SelectListItem{Value="1", Text="Nam Cao"},
            new SelectListItem{Value="2", Text="Ngô Tất Tố"},
            new SelectListItem{Value="3", Text="Adamkhoom"},
            new SelectListItem{Value="4", Text="Thiền sư Thích Nhất Hạnh"}
        };

        //SelectListItem Genres
        public List<SelectListItem> Genres { get; } = new List<SelectListItem>
        {
            new SelectListItem{Value="1", Text="Truyện Tranh"},
            new SelectListItem{Value="2", Text="Văn học đương đại"},
            new SelectListItem{Value="3", Text="Phật học phổ thông"},
            new SelectListItem{Value="4", Text="Truyện cười"}
        };
    }
}

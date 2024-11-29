using System.ComponentModel.DataAnnotations;

namespace Lesson10CustomAuthorize.Models
{
    public class Login
    {
        [Required(ErrorMessage = "Email không để trống")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Password không để trống")]
        public string Password { get; set; }
    }
}

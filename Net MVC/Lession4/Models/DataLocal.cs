namespace Lession4.Models
{
    /// <summary>
    /// DataLocal: chứa dữ liệu và thực hiện các chức năng CRUD
    /// </summary>
    public class DataLocal
    {
        public static List<People> _peoples = new List<People>()
        {
            new People (){
                Id = 1,
                Name = "Avatar1",
                Email="a1@gmail.com",
                Phone = "0987656432",
                Address = "Bồ Đào Nha",
                Avatar = "/images/avatar/avatar1.jpg",
                Bio = "Avatar-1",
                Birthday = new DateTime(1986/4/7),
                Gender =1
            },
            new People (){
                Id = 2,
                Name = "Avatar2",
                Email="a2@gmail.com",
                Phone = "0987656432",
                Address = "Bồ Đào Nha",
                Avatar = "/images/avatar/avatar2.jpg",
                Bio = "Avatar2",
                Birthday = new DateTime(1986/4/7),
                Gender =1
            },
            new People (){
                Id = 3,
                Name = "Avatar3",
                Email="a3@gmail.com",
                Phone = "0987656432",
                Address = "Bồ Đào Nha",
                Avatar = "/images/avatar/avatar3.jpg",
                Bio = "Avatar3",
                Birthday = new DateTime(1986/4/7),
                Gender =1
            },
            new People (){
                Id = 4,
                Name = "Avatar4",
                Email="a4@gmail.com",
                Phone = "0987656432",
                Address = "Bồ Đào Nha",
                Avatar = "/images/avatar/avatar4.jpg",
                Bio = "Avatar4",
                Birthday = new DateTime(1986/4/7),
                Gender =1
            },
            new People (){
                Id = 5,
                Name = "Avatar5",
                Email="a5@gmail.com",
                Phone = "0987656432",
                Address = "Bồ Đào Nha",
                Avatar = "/images/avatar/avatar5.jpg",
                Bio = "Avatar5",
                Birthday = new DateTime(1986/4/7),
                Gender =1
            },
            new People (){
                Id = 6,
                Name = "Avatar6",
                Email="a6@gmail.com",
                Phone = "0987656432",
                Address = "Bồ Đào Nha",
                Avatar = "/images/avatar/avatar6.jpg",
                Bio = "Avatar6",
                Birthday = new DateTime(1986/4/7),
                Gender =1
            },
        };

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public static List<People> GetPeoples()
        {
            return _peoples;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public static People? GetPeopleById(int Id)
        {
            var people = _peoples.FirstOrDefault(x => x.Id == Id);
            return people;
        }
    }
}

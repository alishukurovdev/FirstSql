namespace Prk2.Models
{
    public class Product:BaseEntity
    {
        public string Name {  get; set; }
        public Category Category { get; set; }
        public int CategoryId { get; set; }
    }
}

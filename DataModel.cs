using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;

namespace BZI
{
    public class VeningDatabase:DbContext
    {
        /// <summary>
        /// Загрузчик + bank монет. Загрузка монет идет Insert ом
        /// </summary>
        public DbSet<Coin> coins { set; get; }
        
        /// <summary>
        /// Склад товаров в автомате
        /// </summary>
        public DbSet<Good> warhouse { set; get;  }

        /*
         * public  DbFunction GetSumInCache ()
        { 

            int sum = 0;
            //cache_coins.Select<Coin>();
            return sum;
        }
        */

        public VeningDatabase( ) 
        {

            //this.Database.SetConnectionString("Host=localhost;Port=5444;Password=!paw123;User ID=postgres");
            //this.Database.EnsureDeleted();
            this.Database.EnsureCreated();

            
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Password=1231;User ID=postgres;Database=vending");

            base.OnConfiguring(optionsBuilder);
        }

    }


    /// <summary>
    /// Класс монет
    /// </summary>
    /// 

    public class Coin
    {
        [Key]
        public int Id { get; set; }
        /// <summary>
        /// Стоимость монеты 1,2,5,10,20,50,100 и т.д.
        /// </summary>
        public int CoinNum { get; set; }

        public Storage storage { get; set; }

        public Coin()
        { 
            CoinNum = 1;
            storage = Storage.cash;
        }
        public Coin(int cost,Storage st)
        {

            CoinNum = cost;
            storage = st;
        }


    }

    /// <summary>
    /// Товар в автомате
    /// </summary>
    public class Good
    {

        [Key]
        public int Id       { get; set; }
        public string Name  { get; set; }
        /// <summary>
        /// Цена товара
        /// </summary>
        public int Price { get; set; }

        /// <summary>
        /// Остаток товара в шкафу автомата
        /// </summary>
        public int Count { get; set; }

        public Good() 
        {
            //дефолтный генератор
            List <string> goods = new List <string>();
            goods.Add("Газировка");
            goods.Add("Чипсы");
            goods.Add("Кофе");
            goods.Add("Пирожок");
            goods.Add("Шоколадка");


            List<string> names = new List<string>();
            names.Add("Легкость");
            names.Add("Арчибальд");
            names.Add("Вкусняшка");
            names.Add("Энергия");
            names.Add("Быстрый ням");

            //случайное имя
            Name = goods[Random.Shared.Next(0,goods.Count-1) ] +  " " + names[Random.Shared.Next(0, names.Count - 1)];
            Price = 2 + Random.Shared.Next(1, 10);
            Count = 5 + Random.Shared.Next(1,10);

        }

    }


    /// <summary>
    /// Деньги в приемнике, банке, лотке для сдачи
    /// </summary>
    public enum Storage
    {
        cash = 0,
        bank = 1,
        payback = 2
    }

}

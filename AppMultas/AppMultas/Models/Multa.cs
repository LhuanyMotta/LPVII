using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace AppMultas.Models
{
    [Table("multa")]
    public class Multa
    {
        [Column("id")]
        public int Id { get; set; }

        [Column("descricao")]
        public string? Descricao { get; set; }

        [Column("valor_multa")]
        public decimal? ValorMulta { get; set; }

        [Column("id_veiculo")]
        public int IdVeiculo { get; set; }

        [ForeignKey ("IdVeiculo")]
        public Veiculo? Veiculo { get; set; }
    }
}

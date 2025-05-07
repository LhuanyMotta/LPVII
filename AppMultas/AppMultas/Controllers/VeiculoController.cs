using AppMultas.Contexto;
using AppMultas.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace AppMultas.Controllers
{
    public class VeiculoController : Controller
    {
        private readonly ContextoBD _context;

        public VeiculoController(ContextoBD context)
        {
            _context = context;
        }

        public async Task<List<Veiculo>> ListaDeVeiculos()
        {
            var veiculos = await _context.Veiculos.Include(x => x.Multas).ToListAsync();
            return veiculos;
        }

        public async Task<Veiculo> GetVeiculo(string placa)
        {
            var veiculo = await _context.Veiculos.Include(n => n.Multas).Where(v => v.Placa == placa).FirstOrDefaultAsync();
            return veiculo;
        }
        public async Task<List<Multa>> ListaDeMultasComVeiculos()
        {
            return await _context.Multas.Include(m => m.Veiculo).ToListAsync();
        }

        // Método para cadastrar  veiculos
        public async Task Add(Veiculo veiculo)
        {
            await _context.Veiculos.AddAsync(veiculo);
        }

        public async Task Salvar()
        {
            await _context.SaveChangesAsync();
        }
    }
}

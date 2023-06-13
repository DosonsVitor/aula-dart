import '../model/pessoa.dart';

class PessoaDAO {
  List<Pessoa> pessoas = [];

  void salvar(Pessoa pessoa) {
    pessoas.add(pessoa);
  }

  List<Pessoa> getAll() {
    return pessoas;
  }

  Pessoa getByNome(String nome) {
    for (var pessoa in pessoas) {
      if (pessoa.getNome == nome) {
        return pessoa;
      }
    }
    return Pessoa("Não encontrado", "Não encontrado");
  }

  Pessoa getByEmail(String email) {
    for (var pessoa in pessoas) {
      if (pessoa.getEmail == email) {
        return pessoa;
      }
    }
    return Pessoa("Não encontrado", "Não encontrado");
  }
}

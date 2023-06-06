import '../model/Pessoa.dart';

class PessoaDAO{
  List<Pessoa> pessoas = [];

  void salvar(Pessoa pessoa){
    pessoas.add(pessoa);
  }

  List<Pessoa> getAll(){
    return pessoas;
  }
}

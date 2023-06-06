import '../data/pessoa_dao.dart';
import '../model/Pessoa.dart';
import 'dart:io';

class GerenciadorDePessoas{

  var pessoaDao = PessoaDAO();

  GerenciadorDePessoas();

  void cadastrarPessoa(){
    print("Informe o nome da pessoa: ");
    String? nome = stdin.readLineSync();
    print("Informe o email da pessoa: ");
    String? email = stdin.readLineSync();
    pessoaDao.salvar(Pessoa(nome!, email!));
    print("Pessoa cadastrada!");
  }

  void editarPessoa(){
    print("Informe o email da pessoa que você deseja editar:");
    String? emailBusca = stdin.readLineSync();

    print("Oque você deseja editar?");
  }

  void mostrarPessoas(){
    for (var pessoa in pessoaDao.getAll()) {
      print("Pessoa:\n${pessoa.toString()}\n");
    }
  }
}

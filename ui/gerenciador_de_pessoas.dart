import '../data/pessoa_dao.dart';
import '../model/pessoa.dart';
import 'dart:io';

class GerenciadorDePessoas {
  var pessoaDao = PessoaDAO();

  GerenciadorDePessoas();

  void cadastrarPessoa() {
    print("Informe o nome da pessoa: ");
    String? nome = stdin.readLineSync();
    print("Informe o email da pessoa: ");
    String? email = stdin.readLineSync();
    pessoaDao.salvar(Pessoa(nome!, email!));
    print("Pessoa cadastrada!");
  }

/*
=======================================================
========  EDITAR PESSOA (NÂO FUNCIONA AINDA)  =========
=======================================================

  void editarPessoa() {
    print("Informe o email da pessoa que você deseja editar:");
    String? emailBusca = stdin.readLineSync();

    Pessoa? pessoa = pessoaDao.getByEmail(emailBusca!);

    if (pessoa == null) {
      print("Pessoa não encontrada!");
      editarPessoa();
    }

    print("Oque você deseja editar?");

    print("1 - Nome");
    print("2 - Email");
    print("0 - Cancelar");

    String? opcao = stdin.readLineSync();
    if (opcao == '1') {
      print("Informe o novo nome:");
      String? novoNome = stdin.readLineSync();
      pessoa?.setNome(novoNome!);
    } else if (opcao == '2') {
      print("Informe o novo email:");
      String? novoEmail = stdin.readLineSync();
      pessoa?.setEmail(novoEmail!);
    } else if (opcao == '0') {
      print("Cancelando...");
    } else {
      print("Opção inválida!");
    }
  }

=======================================================
========  EDITAR PESSOA (NÂO FUNCIONA AINDA)  =========
=======================================================
*/

  void mostrarPessoas() {
    for (var pessoa in pessoaDao.getAll()) {
      print("Pessoa:\n${pessoa.toString()}\n");
    }
  }

  void buscarPessoaPorEmail() {
    print("Informe o email da pessoa que você deseja buscar:");
    String? emailBusca = stdin.readLineSync();

    Pessoa pessoa = pessoaDao.getByEmail(emailBusca!);

    if (pessoa.getNome() == "Não encontrado") {
      print("Pessoa não encontrada!");
    } else {
      print("Pessoa:\n${pessoa.toString()}\n");
    }
  }

  void buscarPessoaPorNome() {
    print("Informe o nome da pessoa que você deseja buscar:");
    String? nomeBusca = stdin.readLineSync();

    Pessoa pessoa = pessoaDao.getByNome(nomeBusca!);

    if (pessoa.getNome() == "Não encontrado") {
      print("Pessoa não encontrada!");
    } else {
      print("Pessoa:\n${pessoa.toString()}\n");
    }
  }
}

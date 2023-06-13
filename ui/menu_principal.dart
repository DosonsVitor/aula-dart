import 'dart:io';

import 'gerenciador_de_pessoas.dart';

class MenuPrincipal {
  void inicar() {
    var gerenciadorDePessoas = GerenciadorDePessoas();

    String? opcao = '1';

    print("Sistema para cadastro de pessoas!");

    do {
      print("Oque você deseja fazer?");
      print("1 - Cadastrar nova pessoa");
      print("2 - Mostrar pessoas cadastradas");
      print("3 - Buscar pessoa por email");
      print("4 - Buscar pessoa por nome");
      print("5 - Editar pessoa");
      print("0 - Sair");
      opcao = stdin.readLineSync();

      if (opcao == '1') {
        gerenciadorDePessoas.cadastrarPessoa();
      } else if (opcao == '2') {
        gerenciadorDePessoas.mostrarPessoas();
      } else if (opcao == '3') {
        gerenciadorDePessoas.buscarPessoaPorEmail();
      } else if (opcao == '4') {
        gerenciadorDePessoas.buscarPessoaPorNome();
      } else if (opcao == '5') {
        //gerenciadorDePessoas.editarPessoa();
      } else if (opcao == '0') {
        print("Saindo do sistema...");
      } else {
        print("Opção inválida!");
      }
    } while (opcao != '0');
  }
}

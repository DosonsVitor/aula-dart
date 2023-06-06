import 'dart:io';

import 'gerenciador_de_pessoas.dart';

class MenuPrincipal{
  void inicar(){
    var gerenciadorDePessoas = GerenciadorDePessoas();
  
    String? opcao = '1';

    print("Sistema para cadastro de pessoas!");

    do {
      print("Oque você deseja fazer?");
      print("1 - Cadastrar nova pessoa");
      print("2 - Editar pessoa existente");
      print("3 - Mostrar pessoas cadastradas");
      print("OUTRO - Sair");
      opcao = stdin.readLineSync();

      if(opcao == '1'){
        gerenciadorDePessoas.cadastrarPessoa();
      } else if(opcao == '2'){
        gerenciadorDePessoas.editarPessoa();
      } else if(opcao == '3'){
        gerenciadorDePessoas.mostrarPessoas();
      }

    } while (opcao == '1');
  }
}
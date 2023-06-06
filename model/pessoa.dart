class Pessoa {
  String _nome, _email;

  Pessoa(this._nome, this._email);

  String getNome(){
    return this._nome;
  }

  String getEmail(){
    return this._email;
  }

  void editNome(String novoNome, String novoEmail){
    this._nome = novoNome;
    this._email = novoEmail;
  }

  @override
  String toString() {
    return "Nome: $_nome \nEmail: $_email";
  }
}

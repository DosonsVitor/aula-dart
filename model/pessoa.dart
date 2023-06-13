class Pessoa {
  String _nome, _email;

  Pessoa(this._nome, this._email);

  String getNome() {
    return this._nome;
  }

  String getEmail() {
    return this._email;
  }

  void setNome(String novoNome) {
    this._nome = novoNome;
  }

  void setEmail(String novoEmail) {
    this._email = novoEmail;
  }

  @override
  String toString() {
    return "Nome: $_nome \nEmail: $_email";
  }
}

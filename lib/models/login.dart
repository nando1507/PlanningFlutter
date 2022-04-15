class Login {
  final int id;
  final String usuario;

  final String senha;
  final String nome;
  final DateTime dataCadastro;

  Login(
    this.id,
    this.usuario,
    this.senha,
    this.nome,
    this.dataCadastro,
  );

  @override
  String toString() {
    return "Login{id: $id, usuario: $usuario, senha: $senha, nome: $nome, dataCadastro: $dataCadastro}";
  }
}

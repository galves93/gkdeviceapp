class LoginModel {
  // String? usuario;
  // String? senha;
  String? nome;
  String? email;

  LoginModel({
    // this.usuario,
    // this.senha,
    this.nome,
    this.email,
  });

  LoginModel.fromJson(Map<String, dynamic> json) {
    // usuario = json['usuario'];
    // senha = json['senha'];
    nome = json['nome'];
    email = json['email'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['usuario'] = usuario;
  //   data['senha'] = senha;

  //   return data;
  // }
}

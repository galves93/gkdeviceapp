class CadastroModel {
  int? id;
  String? nome;
  String? usuario;
  String? email;
  String? senha;

  CadastroModel({this.id, this.nome, this.usuario, this.email, this.senha});

  CadastroModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    usuario = json['usuario'];
    email = json['email'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    data['email'] = email;
    data['usuario'] = usuario;
    data['senha'] = senha;

    return data;
  }
}

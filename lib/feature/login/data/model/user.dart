class User {
  String? nome;
  String? email;
  String? image;

  User({this.nome, this.email, this.image});

  User.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    email = json['email'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['nome'] = nome;
    data['email'] = email;
    data['image'] = image;
    return data;
  }
}
class UserData {
  late int age;
  late String lastname;
  late String login;
  late String name;
  late String password;

  UserData({
    required this.age,
    required this.lastname,
    required this.login,
    required this.name,
    required this.password
  });

  UserData.fromJson(Map<dynamic, dynamic> json) {
    age = json['age'];
    lastname = json['lastname'];
    login = json['login'];
    name = json['name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['age'] = this.age;
    data['lastname'] = this.lastname;
    data['login'] = this.login;
    data['name'] = this.name;
    data['password'] = this.password;
    return data;
  }
}

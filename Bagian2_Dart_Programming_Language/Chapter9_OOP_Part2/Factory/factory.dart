class Person {
  final String _name;
  final String _gender;
  final int _age;

  //constructor
  Person(this._name, this._gender, this._age);

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(map["name"], map["gender"], map["age"]);
  }

  String get getName => this._name;
  String get getGender => this._gender;
  int get getAge => this._age;
}

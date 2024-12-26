void main() {
  Person person = Person(name: "Joshua", gender: "Laki-laki", age: 24);
  print(person.name + " " + person.age.toString() + " " + person.gender);

  person.eat("Sate");
  person.coding();
  print("${person.name} adalah ${person.getSebutan()}");

  Person Jajang = Person.toNewPerson();
  print("${Jajang.name} adalah ${Jajang.sebutan}");

  Map<String, dynamic> mapPerson = {
    "name": "Jane Nadeak",
    "age": 49,
    "gender": "Perempuan",
    "sebutan": "manusia",
  };

  Person janeNadeakFromMap = Person.toNewPersonFromMap(mapPerson);
  print(
      "${janeNadeakFromMap.name} adalah ${janeNadeakFromMap.sebutan} berumur ${janeNadeakFromMap.age}");
}

class Person {
  String name;
  String gender;
  int age;
  String sebutan;
  //
  Person(
      {required this.name,
      required this.gender,
      required this.age,
      this.sebutan = "manusia"});

  void eat(String makanan) {
    print("$name sedang makan $makanan");
  }

  void coding() {
    print("$name sedang coding");
  }

  String getSebutan() {
    return this.sebutan;
  }

  factory Person.toNewPerson() {
    return Person(
        name: "Jajang", gender: "Laki-laki", age: 18, sebutan: "manusia");
  }

  factory Person.toNewPersonFromMap(Map<String, dynamic> mapPerson) {
    return Person(
        name: mapPerson["name"],
        gender: mapPerson["gender"],
        age: mapPerson["age"]);
  }
}

import 'factory.dart';

void main() {
  Person person = Person.fromMap(<String, dynamic>{
    "name": "Joshua",
    "gender": "Laki-laki",
    "age": 24,
  });

  String multiLineString = """
- Name: ${person.getName}
- Gender: ${person.getGender}
- Age: ${person.getAge}
""";
  print(multiLineString);
}

abstract class Shape {
  void calculateArea();
  void calculateCircumference();
}

class Triangle extends Shape {
  final int pedestal;
  final int height;
  final int hypotenus;
  Triangle(this.pedestal, this.height, this.hypotenus);

  @override
  void calculateArea() {
    // TODO: implement calculateArea
    num area = (pedestal * height) / 2;
    print("Area of triangle: $area");
  }

  @override
  void calculateCircumference() {
    num circumference = pedestal + height + hypotenus;
    print("Triangle circumferen: $circumference");
  }
}

class Circle extends Shape {
  @override
  void calculateArea() {
    // TODO: implement calculateArea
  }

  @override
  void calculateCircumference() {
    // TODO: implement calculateCircumference
  }
}

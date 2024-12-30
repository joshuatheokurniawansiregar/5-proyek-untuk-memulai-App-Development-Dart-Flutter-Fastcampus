class ParentClass {
  final String data;
  void printClass() {
    print("hello");
  }

  ParentClass(this.data);
}

class ChildClass1 extends ParentClass {
  final String childData;

  ChildClass1(this.childData) : super(childData);

  @override
  void printClass() {
    print("hello ini ChildClass1");
  }
}

class ChildClass2 extends ParentClass {
  final String childData;
  ChildClass2(this.childData) : super(childData);
}

void main() {
  (String, int, int) objects = ("Code", 1, 2);
  print(objects.$1);
  print(objects.$2);

  ({String name, int usia, int gaji}) record =
      (name: "Joshua", usia: 29, gaji: 2000000);

  print(record.name);
  print(record.gaji);
  print(record.usia);
}

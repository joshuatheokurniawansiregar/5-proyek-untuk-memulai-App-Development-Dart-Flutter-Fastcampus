void main(List<String> args) {
  Car carObject = Car("Huracan", "Lamborghini", "V12", "Black", 100, 2, false);
  carObject.mobilHidup();
  carObject.mobilJalan();
  carObject.gantiWarnaMobil("Red");
  String stringMobil = """
Nama mobil: ${carObject.getName}
Merek mobil: ${carObject.getMerek}
Type mobil: ${carObject.type}
Warna mobil: ${carObject.color}
Jumlah bensin mobil: ${carObject.jumlahBensin}
Jumlah kursi mobil: ${carObject.jumlahSeat}
Apakah mobil baru: ${carObject.isNew}
""";
  print(stringMobil);

  carObject.isiBensinMobil(60);
  String stringMobilAfterIsiBensin = """
Nama mobil: ${carObject.getName}
Merek mobil: ${carObject.getMerek}
Type mobil: ${carObject.type}
Warna mobil: ${carObject.color}
Jumlah bensin mobil: ${carObject.jumlahBensin}
Jumlah kursi mobil: ${carObject.jumlahSeat}
Apakah mobil baru: ${carObject.isNew}
""";

  print(stringMobilAfterIsiBensin);
  carObject.mesinMobilMati();
  return;
}

class Car {
  String _name;
  String _merek;
  String type;
  String color;
  int jumlahBensin;
  int jumlahSeat;
  bool isNew;
  Car(this._name, this._merek, this.type, this.color, this.jumlahBensin,
      this.jumlahSeat, this.isNew);

  set setName(String carName) {
    this._name = carName;
  }

  String get getName {
    return this._name;
  }

  set setMerek(String merek) {
    this._merek = merek;
  }

  //arrow function
  String get getMerek => this._merek;

  void mobilHidup() {
    this.jumlahBensin -= 10;
  }

  void mobilJalan() {
    this.jumlahBensin -= 50;
  }

  void mesinMobilMati() {
    print("mesin mobil mati");
  }

  void gantiWarnaMobil(String warnaMobil) {
    this.color = warnaMobil;
  }

  void isiBensinMobil(int bensin) {
    this.jumlahBensin += bensin;
  }
}

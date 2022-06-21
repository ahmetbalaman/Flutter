class hayvan {
  void sescikar() {
    print("Ses yok");
  }
}
class memeli extends hayvan {}
class kedi extends memeli {
  @override
  void sescikar() {
    print("Miyaw");
  }
}

class kopek extends memeli {
  @override
  void sescikar() {
    print("hawhaw");
  }
}

void main() {
  var kedi1, hayvan1, memeli1, kopek1;
  kedi1 = kedi();


  hayvan1 = hayvan();
  hayvan1.sescikar();

  memeli1 = memeli();//örneğin burda üst sınıfa geçiyor
  memeli1.sescikar();
  kopek1 = kopek();

  kopek1.sescikar();
  kedi1.sescikar();


  //override metodu ile ondan önceki süpersınıfta bulunan voidi çağırmadan kendi metodunu kurmasını sağlar
  //bir void yapısı classta çağırılır ise önce kendisinde bulunup bulunmadığına bakar ondan sonra üst sınıfınkine geçer
}

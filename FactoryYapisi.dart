void main(List<String> args) {
  //Öğrenci no'su sıfırdan küçük bir kullanıcı olsun.
  Ogrenci ogrenci1 = Ogrenci.ogrenciNo("Yusuf", -34);
  ogrenci1.bilgiVer();

  //Birde öğrenci no'su sıfırdan büyük bir kullanıcımız olsun.
  Ogrenci ogrenci2 = Ogrenci("Ahmet", 45);
  ogrenci2.bilgiVer();
}

class Ogrenci {
  String? isim;
  int? no;

  //Kurucu metodumuzda this yapılarımızı kullandık. Aksi halde factory yapımız bize kızar.
  Ogrenci(this.isim, this.no) {
    print("kurucu metot aktif...");
  }

  //Factory yapımızı oluşturup no'muz 0'dan küçükse varsayılan olarak 1 olsun diyoruz.
  //Değilse işleme devam etsin
  factory Ogrenci.ogrenciNo(String isim, int no) {
    if (no <= 0) {
      return Ogrenci(isim, 1);
    } else
      return Ogrenci(isim, no);
  }

  //Burda da main metodumuza değer döndürecek fonksiyonumuz var.
  bilgiVer() {
    print("Öğrenci ismi ${isim} numarası ${no}");
  }
}


/*
ÇIKTILAR:
kurucu metot aktif...
Öğrenci ismi Yusuf numarası 1
kurucu metot aktif...
Öğrenci ismi Ahmet numarası 45
*/

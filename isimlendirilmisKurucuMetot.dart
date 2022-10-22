//Kurucu metot bir kere oluşturulur. Birden fazla kurucu metot olmaz.
//Fakat isimlendirilmiş kurucu metot adı altında birden fazla tanımlayabiliriz.
//Örneğin bilgisayarımızın tüm özelliklerimizin oılduğu bir nesne tanımlayalım.
//Birde bilgisayarın sadece marka ve rengini veren bir kurucu metot oluşturalım

main(List<String> args) {
  //Kurucu metodumuz için bir nesne oluşturalım
  Bilgisayar lenovo = Bilgisayar("lenovo", "siyah", 8, 256);

  //isimlendirilmiş kurucu metodumuz için de bir nesne oluşturalım
  Bilgisayar asus = Bilgisayar.ramYokHafizaYok("asus", "beyaz");
}

class Bilgisayar {
  String? marka;
  String? renk;
  int? ram;
  int? hafiza;

  //Bu bizim asıl kurucu metodumuz, tüm özellikleri barınıdırıyor.
  Bilgisayar(this.marka, this.renk, this.ram, this.hafiza) {
    print("kurucu metot çalıştı...");
    print(
        "${this.marka} markalı, ${this.renk} renkte, ${this.ram} GB ram ve ${this.hafiza} hafızalı bir bilgisayar.");
  }

  //Bu da bizim isimlendirilmiş kurucu metodumuz, sadece marka ve renk taşıyor.
  Bilgisayar.ramYokHafizaYok(this.marka, this.renk) {
    print("isimlendirilmiş kurucu metot çalıştı...");
    print("${this.marka} markalı, ${this.renk} renkte bir bilgisayar");
  }

}



/*
ÇIKTILAR:
kurucu metot çalıştı...
lenovo markalı, siyah renkte, 8 GB ram ve 256 hafızalı bir bilgisayar.
isimlendirilmiş kurucu metot çalıştı...
asus markalı, beyaz renkte bir bilgisayar
*/      

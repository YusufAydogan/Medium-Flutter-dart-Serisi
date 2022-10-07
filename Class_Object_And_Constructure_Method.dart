main(List<String> args) {
  //Son olarak burada boş bırakılan özellikleri doldurarak istediğimiz bir nesne oluşturuyoruz.
  Telefon iphone = Telefon(); //Böylece iphone adında bir nesne oluştu.
  //var iphone = Telefon(); --- Bu şekilde de tanımlanabilirdi nesnemiz.

  //Özelliklerini istediğimiz gibi belirliyoruz.
  //nesne adının ardından "nokta" koyunca tanımlayabileceğimiz özellikleri görebiliyoruz.
  iphone.marka = "Apple";
  iphone.renk = "kırmızı";
  iphone.ekranBoyutu = 6;
  iphone.ram = 8;
  iphone.hafiza = 128;

  //Bize bilgi verecek fonksiyona da ulaşabiliyoruz.
  iphone.bilgiVer();
}

//Öncelikli işimiz main fonksiyonu dışında bir sınıf oluşturmak.
//Ve buraya üreteceğimiz nesnenin ne tür özelliklere sahip olacağını tanımlamak.
class Telefon {
  //Özellikleri tanımlarken darttaki null safety özelliğinden dolayı değişkenleri boş bırakamıyoruz.
  //Bize hata vermemesi için ilgili yerlere "ilerde zaten değer alacak" anlamındaki soru işaretini yazıyoruz.
  String? marka;
  String? renk;
  int? ekranBoyutu;
  int? hafiza;
  int? ram;

  //Gördüğünüz üzere nesnemiz için fonksiyon bile  tanımlayabiliriz.
  //Üstteki bilgilerin tek bir cümlede bize döndürüldüğü bir fonksiyon yazdık.
  bilgiVer() {
    print(
        "Bu telefon ${marka} markalı, ${renk} renkli, ${ekranBoyutu} inç ekranlı, ${ram} GB ram ve ${hafiza} GB hafızalı bir akıllı telefondur.");
  }

  //Otomatik olarak işleme giren birde kurucu metodumuz vardır.
  //Bu yapı main fonksiyonunda "Telefon" yazdığınız anda çalışmaya başlar.
  //Otomatik olarak ilk çalıştığını şöyle ispatlayabiliriz.
  Telefon() {
    print("Constructer (Kurucu) metot aktif");
  }
}



/*
Çıktılar:

Constructer (Kurucu) metot aktif 
Bu telefon Apple markalı, kırmızı renkli, 6 inç ekranlı, 8 GB ram ve 128 GB hafızalı bir akıllı telefondur. 

(Görüldüğü üzere ilk olarak kurucu metot çalıştı, bunu da ispat etmiş olduk.)
*/

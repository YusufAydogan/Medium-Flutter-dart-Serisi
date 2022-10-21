main(List<String> args) {
  //iphone nesnesi oluşturup parametre değerlerini SIRASIYLA yazıyoruz
  Telefon iphone = Telefon("apple", "kırmızı", 6, 8, 128);
  iphone.bilgiVer();
}

//Yine bir class oluşturduk ve özellikleri tanımladık.
class Telefon {
  String? marka;
  String? renk;
  int? ekranBoyutu;
  int? hafiza;
  int? ram;

  //Hatırlarsanız bu bizim kurucu metodumuzdu.
  Telefon(String marka, String renk, int ekranBoyutu, int hafiza, int ram) {
  //İçine parametrelerimizi girdik ve önceden aşağıda yer alan tanımlamaları yazmamıza gerek kalmadı.
    // marka = marka;
    // renk = renk;
    // ekranBoyutu = ekranBoyutu;
    // hafiza = hafiza;
    // ram = ram;

    print("Constructer (Kurucu) metot aktif");
    print("Bu telefon ${marka} markalı, ${renk} renkli, ${ekranBoyutu} inç ekranlı, ${ram} GB ram ve ${hafiza} GB hafızalı bir akıllı telefondur.");
    //Burda fonksiyon oluşturmadan girilen bilgileri işleyebiliyoruz.
  }

  //Ama bi fonksiyon oluşturmak istediğimizde değer atamada sorun çıkıyor.
  //Değerler fonksiyonumuza gelmekte sorun yaşadığı için değerlerimiz null gözüküyor.
  bilgiVer() {
    print(
        "Bu telefon ${marka} markalı, ${renk} renkli, ${ekranBoyutu} inç ekranlı, ${ram} GB ram ve ${hafiza} GB hafızalı bir akıllı telefondur.");
  }
}


/* Çıktılar:
Constructer (Kurucu) metot aktif
Bu telefon apple markalı, kırmızı renkli, 6 inç ekranlı, 128 GB ram ve 8 GB hafızalı bir akıllı telefondur.
Bu telefon null markalı, null renkli, null inç ekranlı, null GB ram ve null GB hafızalı bir akıllı telefondur.
*/

//Görüldüğü üzere kurucu metot ile parametre kullanarak bir nesne oluşturduk.
//Değerlerimizi yazdırırken bir sorun çıkmadı
//Fakat fonksiyon oluşturduğumuzda değerlerimizin fonksiyona ulaşmadığını gördük
//Bunu gidermenin yolu da this anahtar kelimesini kullanmak.

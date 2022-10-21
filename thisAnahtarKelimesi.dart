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
    //---this anahtar kelimesini şu şekilde kullanırız.---
    this.marka = marka;
    this.renk = renk;
    this.ekranBoyutu = ekranBoyutu;
    this.hafiza = hafiza;
    this.ram = ram;

    print("Constructer (Kurucu) metot aktif");
    print(
        "Bu telefon ${marka} markalı, ${renk} renkli, ${ekranBoyutu} inç ekranlı, ${ram} GB ram ve ${hafiza} GB hafızalı bir akıllı telefondur.");
    //Burda fonksiyon oluşturmadan girilen bilgileri işleyebiliyoruz.
  }

  //this anahtar kelimesini kullandığımız için fonksiyonumuzda başarılı çalışacak
  bilgiVer() {
    print("Bu telefon ${marka} markalı, ${renk} renkli, ${ekranBoyutu} inç ekranlı, ${ram} GB ram ve ${hafiza} GB hafızalı bir akıllı telefondur.");
  }
}


/* Çıktılar:
Constructer (Kurucu) metot aktif
Bu telefon apple markalı, kırmızı renkli, 6 inç ekranlı, 128 GB ram ve 8 GB hafızalı bir akıllı telefondur.
Bu telefon apple markalı, kırmızı renkli, 6 inç ekranlı, 128 GB ram ve 8 GB hafızalı bir akıllı telefondur.
*/

//Görüldüğü üzere kurucu metot ile parametre kullanarak bir nesne oluşturduk.
//Değerlerimizi yazdırırken bir sorun çıkmadı
//Fakat fonksiyon oluşturduğumuzda değerlerimizin fonksiyona ulaşmadığını görmüştük
//Bunu gidermek için this anahtar kelimesini kullandık ve sorun çözüldü.



/*
--------------------------------------------------------------
/////////THİS KISAYOL////////////////

Telefon(this.marka, this.renk, this.ekranBoyutu, this.ram, this.hafiza) {
    //Bu da this anahtar kelimesinin kısa yazımı

    print("Constructer (Kurucu) metot aktif");
    print("Bu telefon ${marka} markalı, ${renk} renkli, ${ekranBoyutu} inç ekranlı, ${ram} GB ram ve ${hafiza} GB hafızalı bir akıllı telefondur.");
}

*/

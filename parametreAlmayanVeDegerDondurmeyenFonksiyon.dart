void main(List<String> args) {
  kareAl();
  kareAl();
  kareAl();
  //Görüldüğü üzere tek bir kod satırı ile adeta bir fabrika çalıştırdım
  //Böylece main fonksiyonu daha temiz ve anlaşılır kaldı.
  //Bu arada bunu istediğimiz kadar tekrarlayabiliriz.

  //Çıktılar:
  //100
  //100
  //100
}

//Öncelikle main fonksiyonumuzun dışına çıkalım çünkü yeni bir fonksiyon oluşturuyoruz.
//Daha sonra fonksiyonumu çağırmak için zaten orada bir komut kullanacağız.
//Fonksiyonumuz bir sayının karesini alsın.

void kareAl() {
  //Bu fonksiyon parametre almayan bir fonksiyondur çünkü parantez içi boş
  //Aynı zamanda değer döndürmeyen bir fonksiyondur
  //istersek başına void yazmayabiliriz ama yazarsak daha iyi olur.
  num sayi1 = 10;
  print(sayi1 * sayi1);
  //Şimdi main fonksiyonunda isminden sonra "();"  koyup çalıştıralım.
}

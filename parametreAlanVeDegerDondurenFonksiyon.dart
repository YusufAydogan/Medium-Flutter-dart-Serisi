void main(List<String> args) {
  print(kareAl(6));
  print(kareAl(8));
  //Görüldüğü üzere parametrelerini verdik o bize işlemi yapıp değerlerini döndürdü.

  //Çıktılar:
  //36
  //64
}

//Öncelikle main fonksiyonumuzun dışına çıkalım çünkü yeni bir fonksiyon oluşturuyoruz.
int kareAl(int sayi1) {
  //Bu fonksiyon parametre alan bir fonksiyondur
  //Aynı zamanda değer int değer döndürür çünkü onu main fonksiyonunda işleyeceğiz.
  //İstersek başına int yazmayabiliriz ama yazarsak daha iyi olur.
  //String döndürseydi string yazardık ya da birden fazla tür döndürüyorsa dynamic yazabiliriz.
  int sonuc = sayi1 * sayi1;
  return sonuc; //sonuc değerini döndüreceğini belirttik.
  //Şimdi de main fonksiyonunda isminden sonra parantez koyup bunun içine sayi2'nin değerini girelim.
}

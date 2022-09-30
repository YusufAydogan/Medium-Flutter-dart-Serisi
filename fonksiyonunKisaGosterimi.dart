void main(List<String> args) {
  print(topla(2, 5)); //Normal fonksiyonumuz, sonuç = 7
  print(toplamaKisaFonksiyon(4, 5)); //Kısa fonksiyonumuz, sonuç = 9
}


//Normal fonksiyon yazımı
int topla(int a, int b) {
  int toplama = a + b;
  return toplama;
}

//Kısa fonksiyon yazımı (fat arrow)
int toplamaKisaFonksiyon(int a, int b) => a + b;

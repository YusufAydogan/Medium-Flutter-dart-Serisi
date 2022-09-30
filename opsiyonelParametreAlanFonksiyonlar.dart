void main(List<String> args) {
  print(optionalParameter(5, 6)); //sonuc => 11
  
  print(optionalNamedParameter(a: 3, b: 7)); //sonuc => 10
  //Burda da ilk ikisinin parametrelerini isimleri ile arada iki nokta olacak şekilde girdik.
  //Üçüncünün parametresini bilerek girmedim ve zaten varsayılan olarak 0 vermiştik.
}

//opsiyonel parametre alan fonksiyon
//Görüldüğü üzere parametrelerinden birini vermedim ama darttaki null safety sebebiyle bir değişken null olamaz.
//Bende sonucu değiştirmeyecek bir varsayılan değer atadım.
int optionalParameter(int a, int b, [int c = 0]) {
  int sonuc = a + b + c;
  return sonuc;
}


//opsiyonel isimli parametre alan fonksiyon
//Görüldüğü üzere hepsine öncelikle varsayılan bir değer atamış olduk.
int optionalNamedParameter({int a = 0, int b = 0, int c = 0}) {
  int sonuc = a + b + c;
  return sonuc;
}

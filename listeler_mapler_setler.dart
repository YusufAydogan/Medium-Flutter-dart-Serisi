void main(List<String> args) {
  
  //SABİT UZUNLUKLU LİSTELER
  //-**********************-
  //List<int> liste1 = List.Filled(lenght, fill, growable: false);
  //En başta bir liste tanımlayacağımızı belirttik ve bunun içinde ne tür veriler olacağını tanımladık. Ardından bu listeye liste1 adında bir değişken ismi koyduk.
  //Sonrasında List.Filled metodu ile ilk önce listenin uzunluğunu, içine girecek varsayılan değerleri ve büyüme özelliğinin olmadığını belirtiriz.
  //! Listenin içinde her türden veri olacaksa bunun için "dynamic" yapısını kullanmanızı hatırlatmak gerekir!!! örnek List<dynamic>.......

  List<int> liste1 = List.filled(3, 0, growable: false);
  print(liste1);
  // Kodun çıktısı bu olacaktır: [0, 0, 0]
  //! "growable: false" kodunu yazmasanızda olur, başta uzunluğunu belirtere zaten bunun büyümeyeceğini belirtirsiniz.

  //Bu listeye varsayılan olarak sıfır değerlerini girdik şimdi de bu değerleri değiştirelim.
  liste1[0] = 2;
  liste1[1] = 4;
  liste1[2] = 6;
  //Bilgisayarın index mantığı saymaya sıfırdan başlar. Yani bizim 0. index'imiz birinci değerimiz olur. Yazdırıp görelim.
  print(liste1);
  // Kodun çıktısı: [2, 4, 6]
  
  //Peki listemizin 3. elemanını yazdırmak istersek:
  print(liste1[2]);
  // Kodun çıktısı: 6 
  
  
  
  /String türünden bir liste oluşturalım. Tüm elemanlarını ve birinci elemanını yazdıralım.
  List<String> liste2 = List.filled(3, "");
  liste2[0] = "ali";
  liste2[1] = "erdem";
  liste2[2] = "can";

  print(liste2);
  print(liste2[0]);
  // Kodun çıktısı:
  //[ali, erdem, can]
  //ali
  
  

  //tüm türlerin iç içe olduğunu dynamic yapıda bir liste oluşturalım ve elemanlarını yazdıralım.
  List<dynamic> liste3 = List.filled(3, "");
  liste3[0] = "ali";
  liste3[1] = 15.6;
  liste3[2] = 6;

  print(liste3);
  // Kodun çıktısı: [ali, 15.6, 6]
  
  
  
  //For döngüsü ile listeyi Gezme
  List<dynamic> karisik = List.filled(4, "");
  karisik[0] = "ayşe";
  karisik[1] = 9.8;
  karisik[2] = 20;
  karisik[3] = true;

  for (int i = 0; i < karisik.length; i++) {
    print(karisik[i]);
  }
  //Kodun çıktısı:
  //ayşe
  //9.8Z
  //20
  //true

  
  
  //Bir başka yazımla daha içini gezebiliriz. Çok fark yok.
  for (var oAnkiDeger in karisik) {
    print(oAnkiDeger);
  }
  //Kodun çıktısı:
  //ayşe
  //9.8Z
  //20
  //true
  
  //------------------------------*************-------------------------------------
  
  
  
  
  
  
  //DİNAMİK UZUNLUKLU - BÜYÜYEBİLEN LİSTELER
  //-**************************************-
  //List<int> liste1 = List.filled(length, fill, growable: true);
  //Dinamik uzunlukta, büyüyebilen liste tanımı
  //Sabit uzunlukta "growable: false" kodunu kullanıyorduk. Burda ise true dedik yani büyüyebilir.

  //------- Bunu 3 şekilde belirtebiliriz ----------

  //1.gösterim
  //List<int> liste1 = List.empty(growable: true);
  //Dinamik uzunlukta, büyüyebilen liste tanımı

  //2.gösterim
  //List<int> liste1 = [];
  //Dinamik uzunlukta, büyüyebilen liste tanımı.
  //köşeli parantez büyüyen listeleri temsil eder.

  //3.gösterim
  //var liste1 = <String>[];
  //Dinamik uzunlukta, büyüyebilen liste tanımı.
  //var değişkeni zaten değişkenlerin hepsini içinde tutabilir listeler de dahil. (dynamic gibi)
  //köşeli parantez büyüyen listeleri temsil eder.

  List<int> liste1 = [];
  liste1.add(3);
  liste1.add(2);
  liste1.add(5);
  print(liste1); //kodun çıktısı: [3, 2, 5]

  liste1[2] = 6;
  print(liste1);
  //kodun çıktısı: [3, 2, 6]
  //2.index değerini 6 olarak değiştirdik.

  
  
  //büyüyebilen listelerin içini de for döngüsü ile gezebiliriz
  List<dynamic> karisikListe = ["ali", 5, 18.5, true, "ayşe", "fatma"];

  //1.gösterim
  for (int i = 0; i < karisikListe.length; i++) {
    print(karisikListe[i]);
    // Kodun çıktısı:
    // ali
    // 5
    // 18.5
    // true
    // ayşe
    // fatma
  }

  
  //2.gösterim
  for (var oAnkiDeger in karisikListe) {
    //print(oAnkiDeger);
    //Kodun çıktısı:
    // ali
    // 5
    // 18.5
    // true
    // ayşe
    // fatma
  }
  
  
  
  
  //Birden fazla listeyi tek listeye aktarma
  
  List<dynamic> liste1 = [3, 4, 5, 6];
  List<dynamic> tekSayilar = [1, 3, 5, 7, 9];
  var liste3 = [];
  
  //addAll metodu ile tek tek ekleme
  liste3.addAll(liste1);
  liste3.addAll(tekSayilar);

  //Spread operatörü ile tek seferde aktarma - pratik yol
  liste3 = <dynamic>[...liste1, ...tekSayilar];
  
  print(liste3);
  //kodun çıktısı: [3, 4, 5, 6, 1, 3, 5, 7, 9]
  
  //------------------------------*************----------------------------------
  
  
  
  
  
  //LİSTELERDE KULLANILAN METOTLAR
  //-****************************-
  List<dynamic> liste1 = [4, 3, "ali", "veli", 5, true, 5, 12.4, "mehmet"];
  
  //liste1.clear(); - listedeki tüm elemanları siler bu yüzden yorum satırı haline getirilmiştir :)
  print(liste1.length); //Listenin uzunluğunu verir
  print(liste1.first); //Listenin ilk elemanını verir
  print(liste1.last); //Listenin son elemanını verir
  print(liste1.isEmpty); //Liste boş ise true döndürür
  print(liste1.isNotEmpty); //Liste boş değil ise true döndürür
  print(liste1.reversed); //Listeyi ters döndürür
  print(liste1.contains(12.4)); //Listede 12.4 elemanı var mı kontrol edecek
  print(liste1.elementAt(3)); //Listenin 3.indexinde ne var onu döndürür -"veli"
  liste1.add(2); //Listenin en sonuna eleman ekler
  liste1.remove(5); //Listede ilk bulduğu 5 elemanını siler. Bir tane daha varsa o kalır. Eğer silerse true döndürür. Bizde bu değerin listede bulunduğunu ve silindiğini anlarız.
  print(liste1);
  print(liste1.indexOf("ali")); //Listede "ali" verisinin hangi indexte olduğunu döndürür
}
  
  //Kodun çıktısı:
  //9
  //4
  //mehmet
  //false
  //true
  //(mehmet, 12.4, 5, true, 5, veli, ali, 3, 4)
  //true
  //veli
  //[4, 3, ali, veli, 5, true, 5, 12.4, mehmet, 2] ---- add(2); demiştik. Gördüğünüz üzere 2 en sonda. Ayrıca remove 5 demiştik. Listedeki İlk 5 de gitmiş
  //2

//---------------------------------****************-------------------------------------





//SET YAPISI - SET STRUCTURES
//-**************************-

  //4 tanımlama şekli vardır bunların ikisinde elemanları sonradan add metodu ile eklerken
  //diğer ikisine hem olduğu yerde hem de sonra add metodu ile ekleme yapabiliyoruz.
  Set<dynamic> ornekSet = {2, 3, 4, 5}; // 1.set tanımlaması
  Set<dynamic> ornekSet1 = Set(); // 2.set tanımlaması
  Set<dynamic> ornekSet2 = Set.from([2, 3, 4, 5]); // 3.set tanımlaması
  var ornekSet3 = Set(); // 4.set tanımlaması

  //Bir set tanımlayalım.
  Set<dynamic> set1 = {
    "emre",
    3,
    5,
    7,
    9,
    10
  }; //Setlerde ve maplerde süslü parantezler kullanılır. Listelerde ise köşeli parantez.

  //Bu sete olduğu yerde zaten eleman ekledik. add metodunu da kullanalım.
  set1.add("ali");
  set1.add(12);
  set1.add("hello dart");
  print(set1);
  // Kodun çıktısı: {emre, 3, 5, 7, 9, 10, ali, 12, hello dart}

  //Setleri de for döngüsü ile gezebiliriz.
  for (var i in set1) {
    print(i);
    // Kodun çıktısı:
    // emre
    // 3
    // 5
    // 7
    // 9
    // 10
    // ali
    // 12
    // hello dart
  }

  //Listelerde kullandığımız mototları setlerde de kullanabiliyoruz. Bir kaç tanesini kullanalım
  print(set1.length); //uzunluğunu verir yani eleman sayısını
  print(set1.isEmpty); //boşsa true döndürür, değilse false
  print(set1.isNotEmpty); //boş değilse true döndürür, boş ise false
  print(set1.contains(3)); //sette 3 var mı diye kontrol eder
  print(set1.remove(
      3)); //sette 3 varsa siler ve önceden olduğunu bildirmek için true döndürür. Yoksa false

  //kodun çıktısı:
  // 9
  // false
  // true
  // true
  // true

  //Birden fazla seti tek bir sete aktarma

  Set<dynamic> ornekset = {3, 4, 5, 6};
  Set<dynamic> tekSayilar = {1, 3, 5, 7, 9};
  var set3 = <dynamic>{};

  //addAll metodu ile tek tek ekleme
  set3.addAll(ornekset);
  set3.addAll(tekSayilar);

  //Spread operatörü ile tek seferde aktarma - pratik yol
  set3 = <dynamic>{...ornekset, ...tekSayilar};

  print(set3);
  //kodun çıktısı: {3, 4, 5, 6, 1, 7, 9}

  
  
  
  //set.from metodu ile liste birleştirme
  Set<dynamic> set4 = Set.from([2,2,2,3,3,4,5,6,6,6,6,]); //Bir set oluşturduk
  
  List<dynamic> ornekListe = [10,20,30,40,50]; //Bir liste oluşturduk

  set4.addAll(ornekListe);

  print(set4);
  // Kodun çıktısı: {2, 3, 4, 5, 6, 10, 20, 30, 40, 50}

//-------------------------------------******************-------------------------------------





  //MAP YAPISI - MAP STRUCTURE
  //-************************-

  //3 ayrı gösterimi vardır.
  Map<dynamic, dynamic> ornek1 = {}; // Maplerde de süslü parantez kullanılır.
  Map<String, int> ornek2 = Map();
  var ornek3 = Map();

  //Onları setlerden ayıran key-value ilişkisidir.
  //Yani tek tip tanımlanırken burda hem key hem de value için ayrı bir tür tanımlanıyor
  //örneğin <String,int> anahtarın string, değerin ise int tipli veri taşıyacağını belirtir.

  //içi dolu bir map tanımlayıp başlayalım.
  Map<dynamic, dynamic> map1 = {
    "istanbul": 34,
    "ankara": 6,
    "mardin": 47,
    "izmir": 35
  };

  print(map1);
  // Kodun çıktısı: {istanbul: 34, ankara: 6, mardin: 47, izmir: 35}

  //maplerde key'lerden birini vererek onun value değerlerini bulabiliriz.
  //Örneğin yukarıdaki map'in İstanbul keyinin Value değerini bulalım.
  print(map1["istanbul"]);
  //Kodun Çıktısı: 34

  //Mapimize bir eleman daha ekleyelim ve mapimize eklenmişmi görelim.
  map1["adana"] = 1;
  print(map1["adana"]);
  // Kodun çıktısı: 1

  
  //For döngüsü ile mapimizin elemanlarını Gezme

  //Key elemanlarını gezme
  for (var oAnkiDeger in map1.keys) {
    print(oAnkiDeger);
    // Kodun çıktısı:
    // istanbul
    // ankara
    // mardin
    // izmir
    // adana
  }

  //Value elemanlarını gezme
  for (var oAnkiDeger2 in map1.values) {
    print(oAnkiDeger2);
    // Kodun çıktısı:
    // 34
    // 6
    // 47
    // 35
    // 1
  }

  //hem key hem value gezme - yani entrie
  for (var deger in map1.entries) {
    print("Elemanın key değeri: '${deger.key}' --- elemanın value değeri: '${deger.value}'");
    // Kodun çıktısı:
    // Elemanın key değeri: 'istanbul' --- elemanın value değeri: '34'
    // Elemanın key değeri: 'ankara' --- elemanın value değeri: '6'
    // Elemanın key değeri: 'mardin' --- elemanın value değeri: '47'
    // Elemanın key değeri: 'izmir' --- elemanın value değeri: '35'
    // Elemanın key değeri: 'adana' --- elemanın value değeri: '1'
  }


  
  //METOTLARLA DİREKT KEY, VALUE VE ENTRIE BULMA

  print(map1.keys);
  // Kodun çıktısı: (istanbul, ankara, mardin, izmir, adana)

  print(map1.values);
  // Kodun çıktısı:(istanbul, ankara, mardin, izmir, adana)

  print(map1.entries);
  // Kodun çıktısı: 
  //(MapEntry(istanbul: 34), MapEntry(ankara: 6), MapEntry(mardin: 47), MapEntry(izmir: 35), MapEntry(adana: 1))

}

//For Döngüsü

void main() {
  for(int i = 0; i<=5; i++){
    print("Hello World!");
  }
} //Böylece sıfır ve beş dahil olmak üzere 6 kere "Hello World!" yazdırmış olduk.
//--------------------------------------------------------------------------------



//While Döngüsü

void main() {
  int i = 0;
  while(i<=5){
    print("Hello World!");
    i++;
  }
}//Burada sıfır ve beş dahil olmak üzere 6 kere "Hello World!" yazdırdık.
//--------------------------------------------------------------------------------



//Do-While Döngüsü

void main() {
  int i = 6;
  
  do{
    print("Hello World!");
    i--;
  }while(i>6);
}//Burada 6 rakamı altıdan büyük değil, normal while da hello world yazdırmaması gerek.
//Ama do-while da kontrol etmeden önce işlemi yapıyor bu yüzden bir kere yazdırdı.
//---------------------------------------------------------------------------------




//Break & Continue Komutu

//Break Komutu------------
void main(){
  for (int i=0; i<=5 ; i++){
   
  if(i>3){ 
    break; 
    // i değerimiz 3'ten büyük olunca döngüden çıkar. Aşağıda ki print işlemini gerçekleştirmez. Çünkü ondan önce şart sağlarsa döngüden çık komutu verilmiştir.
  }
  print(i);
  } 	
}


//Continue Komutu---------
void main() {
  for (int i = 0; i <= 5; i++) {
    if(i==3){
      continue;
    }// Böylece döngümüz 3'e geldiğinde 3'ü yazdırmadan ve döngüden de çıkmadan devam eder.
    print(i);
  }
}
//--------------------------------------------------------------------------------------




//Nested Loops (İç içe döngüler)

void main() {
  for (int i = 1; i <= 3; i++) {
    print("---------------------");

    for (int j = 1; j<=3; j++){
      print("$i X $j = ${i*j}");
    }
  }
}

/*Sonuç: Çarpım Tablosu
---------------------
1 X 1 = 1
1 X 2 = 2
1 X 3 = 3
---------------------
2 X 1 = 2
2 X 2 = 4
2 X 3 = 6
---------------------
3 X 1 = 3
3 X 2 = 6
3 X 3 = 9
*/

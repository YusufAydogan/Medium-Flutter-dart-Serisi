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

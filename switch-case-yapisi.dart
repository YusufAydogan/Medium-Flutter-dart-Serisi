void main() {
  num deger = 3;
  
  switch(deger){
      
    case 1:
      print("değerimiz: 1");
      break; //Değerimiz 3 olduğu için burdan çıkar.
      
    case 2:
      print("değerimiz: 2");
      break;//Değerimiz 3 olduğu için burdan çıkar.
      
    case 3:
      print("değerimiz: 3");
      break;//Burada koşul sağlar ve kontrolden çıkar.
      
    default:
      print("geçersiz değer..."); 
      //Buraya uğramaz bile çünkü üstteki satırda işi bitmiş ve çıkmıştır.
  }
}

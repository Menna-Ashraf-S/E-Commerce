
import 'dart:io';
import 'pro.dart';
import 'category.dart';

class Buyer {  

bool tst = true ; 

  Check_Order (){
    tst = true ;
    print ('Enter your name');
    String name_order = stdin.readLineSync()!;
    for(int i = 0 ; i< Category.Order.length ; ++ i ){
      if(name_order == Category.Order[i]['Name of Client']){
        print(Category.Order[i]);
        tst =false ;
      }
    }
    if (tst){
      print('This Order Number is not available');
      Buyer();
    }
  }

  New_Order (){
    while(true){

  print ('\nChoose Category:\n\n1 = > SuperMarket \n2 = > Electronics \n3 = > Clothes \n4 = > Beauty \n5 = > Sport \n6 = > Furniture & Kitchen Tools \n7 = > Games \n8 = > Books \n9 = > Back Home \n');

int selection = int.parse(stdin.readLineSync()!);

  if(selection == 1)
  {
    Category.SuperMarket();
  }
  else if(selection == 2)
  {
    Category.Electronics();
  }
  else if(selection == 3)
  {
    Category.Clothes();
  }
  else if(selection == 4)
  {
    Category.Beauty();
  }
  else if(selection == 5)
  {
    Category.Sport();
  }
  else if(selection == 6)
  {
    Category.Furniture_Kitchen_Tools();
  }
  else if(selection == 7)
  {
    Category.Games();
  }
  else if(selection == 8)
  {
    Category.Books();
  }
  else if(selection == 9)
  {
    Buyer();
  }
  else 
  {
    print('Wrong Selection');
  }

}
  }

Buyer(){
  while(true){

  print ('\nChoose \n1 = > Check Order \n2 = > New Order \n3 = > Back Home \n');

int selection = int.parse(stdin.readLineSync()!);

  if(selection == 1)
  {
    Check_Order();
  }
  else if(selection == 2)
  {
    New_Order();
  }
  else if(selection == 3)
  {
    main();
  }
  else 
  {
    print('Wrong Selection');
  }

} }

}
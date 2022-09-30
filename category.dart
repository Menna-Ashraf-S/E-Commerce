import 'dart:io';
import 'buyer.dart';
import 'seller.dart';

class Category {
 static bool test = true ;
 static List supermarket = [];
 static List electronics = [];
 static List clothes = [];
 static List sport = [];
 static List beauty = [];
 static List furniture_kitchen_tools = [];
 static List games = [];
 static List books = [];
 static int number_Product = 1 ;
 static late int numberOfProduct ;
 static List Order = [];


static SuperMarket(){

          number_Product = 1 ;
          supermarket = [];

  for(int i = 0 ; i <Seller.product_data.length ; ++ i){
    if(Seller.product_data[i]['Category']== 'SUPERMARKET'){
      numberOfProduct = number_Product ;
      Map Product = {'Product Code': numberOfProduct , 'Product Information' : Seller.product_data[i]};
      supermarket.add(Product);
      number_Product ++ ;
    }
      
  }

    if(supermarket.length == 0){
      print('Sorry, There is no items') ;
    }
    else{

      for(int j = 0 ; j <supermarket.length ; ++ j){
      print(supermarket[j]);
    }

      print('\nEnter the Code of the Product you want to Buy or 0 for go back') ;

                int selection = int.parse(stdin.readLineSync()!);

                if (selection == 0)
                {
                  Buyer();
                }
                else{
                    test = true ;
                  for (int k = 0  ; k < supermarket.length ; ++ k){
                    if (selection == supermarket[k]['Product Code']){
                      print('Enter Your Full Name :');
                  String nameOfClient = stdin.readLineSync()!;
                      Map order = {'Name of Client' : nameOfClient , 'Product Code' :  supermarket[k]['Product Code'] ,'Product Information' : Seller.product_data[k] };
                      Order.add(order);
                      print ('Order added Successfully with Number ${supermarket[k]['Product Code']}');
                      test = false;
                      break ;
                    }
                    
                  }

                  if(test){
                    print ('Wrong Code');
                    SuperMarket();
                  }

                }

    }

}

static Electronics(){

 number_Product = 1 ;
          electronics = [];

  for(int i = 0 ; i <Seller.product_data.length ; ++ i){
    if(Seller.product_data[i]['Category']== 'ELECTRONICS'){
      numberOfProduct = number_Product ;
      Map Product = {'Product Code': numberOfProduct , 'Product Information' : Seller.product_data[i]};
      electronics.add(Product);
      number_Product ++ ;
    }
      
  }

    if(electronics.length == 0){
      print('Sorry, There is no items') ;
    }
    else{

      for(int j = 0 ; j <electronics.length ; ++ j){
      print(electronics[j]);
    }

      print('\nEnter the Code of the Product you want to Buy or 0 for go back') ;

                int selection = int.parse(stdin.readLineSync()!);

                if (selection == 0)
                {
                  Buyer();
                }
                else{
                  test = true ;
                  for (int k = 0 ; k < electronics.length ; ++ k){
                    if (selection == electronics[k]['Product Code']){
                      print('Enter Your Full Name :');
                  String nameOfClient = stdin.readLineSync()!;
                      Map order = {'Name of Client' : nameOfClient , 'Product Code' :  electronics[k]['Product Code'] ,'Product Information' : Seller.product_data[k] };
                      Order.add(order);
                      print ('Order added Successfully with Number ${electronics[k]['Product Code']}');
                      break ;
                    }
                    
                  }
                  if(test){
                    print ('Wrong Code');
                    Electronics();
                  }

                }

    }

}

static Clothes(){

 number_Product = 1 ;
          clothes = [];

  for(int i = 0 ; i <Seller.product_data.length ; ++ i){
    if(Seller.product_data[i]['Category']== 'CLOTHES'){
      numberOfProduct = number_Product ;
      Map Product = {'Product Code': numberOfProduct , 'Product Information' : Seller.product_data[i]};
      clothes.add(Product);
      number_Product ++ ;
    }
      
  }

    if(clothes.length == 0){
      print('Sorry, There is no items') ;
    }
    else{

      for(int j = 0 ; j <clothes.length ; ++ j){
      print(clothes[j]);
    }

      print('\nEnter the Code of the Product you want to Buy or 0 for go back') ;

                int selection = int.parse(stdin.readLineSync()!);

                if (selection == 0)
                {
                  Buyer();
                }
                else{
                  test = true ;
                  for (int k = 0 ; k < clothes.length ; ++ k){
                    if (selection == clothes[k]['Product Code']){
                      print('Enter Your Full Name :');
                  String nameOfClient = stdin.readLineSync()!;
                      Map order = {'Name of Client' : nameOfClient , 'Product Code' :  clothes[k]['Product Code'] ,'Product Information' : Seller.product_data[k] };
                      Order.add(order);
                      print ('Order added Successfully with Number ${clothes[k]['Product Code']}');
                      break ;
                    }
                    
                  }
                  if(test){
                    print ('Wrong Code');
                    Clothes();
                  }

                }

    }
   
}

static Sport (){

 number_Product = 1 ;
          sport = [];

  for(int i = 0 ; i <Seller.product_data.length ; ++ i){
    if(Seller.product_data[i]['Category']== 'SPORT'){
      numberOfProduct = number_Product ;
      Map Product = {'Product Code': numberOfProduct , 'Product Information' : Seller.product_data[i]};
      sport.add(Product);
      number_Product ++ ;
    }
      
  }

    if(sport.length == 0){
      print('Sorry, There is no items') ;
    }
    else{

      for(int j = 0 ; j <sport.length ; ++ j){
      print(sport[j]);
    }

      print('\nEnter the Code of the Product you want to Buy or 0 for go back') ;

                int selection = int.parse(stdin.readLineSync()!);

                if (selection == 0)
                {
                  Buyer();
                }
                else{
                  test = true ;
                  for (int k = 0 ; k < sport.length ; ++ k){
                    if (selection == sport[k]['Product Code']){
                      print('Enter Your Full Name :');
                  String nameOfClient = stdin.readLineSync()!;
                      Map order = {'Name of Client' : nameOfClient , 'Product Code' :  sport[k]['Product Code'] ,'Product Information' : Seller.product_data[k] };
                      Order.add(order);
                      print ('Order added Successfully with Number ${sport[k]['Product Code']}');
                      break ;
                    }
                    
                  }
                  if(test){
                    print ('Wrong Code');
                    Sport();
                  }

                }

    }
  
}

static Beauty(){

 number_Product = 1 ;
          beauty = [];

  for(int i = 0 ; i <Seller.product_data.length ; ++ i){
    if(Seller.product_data[i]['Category']== 'BEAUTY'){
      numberOfProduct = number_Product ;
      Map Product = {'Product Code': numberOfProduct , 'Product Information' : Seller.product_data[i]};
      beauty.add(Product);
      number_Product ++ ;
    }
      
  }

    if(beauty.length == 0){
      print('Sorry, There is no items') ;
    }
    else{

      for(int j = 0 ; j <beauty.length ; ++ j){
      print(beauty[j]);
    }

      print('\nEnter the Code of the Product you want to Buy or 0 for go back') ;

                int selection = int.parse(stdin.readLineSync()!);

                if (selection == 0)
                {
                  Buyer();
                }
                else{
                    test = true ;
                  for (int k = 0 ; k < beauty.length ; ++ k){
                    if (selection == beauty[k]['Product Code']){
                      print('Enter Your Full Name :');
                  String nameOfClient = stdin.readLineSync()!;
                      Map order = {'Name of Client' : nameOfClient , 'Product Code' :  beauty[k]['Product Code'] ,'Product Information' : Seller.product_data[k] };
                      Order.add(order);
                      print ('Order added Successfully with Number ${beauty[k]['Product Code']}');
                      break ;
                    }
                    
                  }
                    if(test){
                    print ('Wrong Code');
                    Beauty();
                  }
                }

    }
  
}

static Furniture_Kitchen_Tools(){

 number_Product = 1 ;
          furniture_kitchen_tools = [];

  for(int i = 0 ; i <Seller.product_data.length ; ++ i){
    if(Seller.product_data[i]['Category']== 'FURNITURE & KITCHEN TOOLS'){
      numberOfProduct = number_Product ;
      Map Product = {'Product Code': numberOfProduct , 'Product Information' : Seller.product_data[i]};
      furniture_kitchen_tools.add(Product);
      number_Product ++ ;
    }
      
  }

    if(furniture_kitchen_tools.length == 0){
      print('Sorry, There is no items') ;
    }
    else{

      for(int j = 0 ; j <furniture_kitchen_tools.length ; ++ j){
      print(furniture_kitchen_tools[j]);
    }

      print('\nEnter the Code of the Product you want to Buy or 0 for go back') ;

                int selection = int.parse(stdin.readLineSync()!);

                if (selection == 0)
                {
                  Buyer();
                }
                else{
                  test = true ;
                  for (int k = 0 ; k < furniture_kitchen_tools.length ; ++ k){
                    if (selection == furniture_kitchen_tools[k]['Product Code']){
                      print('Enter Your Full Name :');
                  String nameOfClient = stdin.readLineSync()!;
                      Map order = {'Name of Client' : nameOfClient , 'Product Code' :  furniture_kitchen_tools[k]['Product Code'] ,'Product Information' : Seller.product_data[k] };
                      Order.add(order);
                      print ('Order added Successfully with Number ${furniture_kitchen_tools[k]['Product Code']}');
                      break ;
                    }
                    
                  }
                    if(test){
                    print ('Wrong Code');
                    Furniture_Kitchen_Tools();
                  }
                }

    }

 }


static Games(){

 number_Product = 1 ;
         games = [];

  for(int i = 0 ; i <Seller.product_data.length ; ++ i){
    if(Seller.product_data[i]['Category']== 'GAMES'){
      numberOfProduct = number_Product ;
      Map Product = {'Product Code': numberOfProduct , 'Product Information' : Seller.product_data[i]};
      games.add(Product);
      number_Product ++ ;
    }
      
  }

    if(games.length == 0){
      print('Sorry, There is no items') ;
    }
    else{

      for(int j = 0 ; j <games.length ; ++ j){
      print(games[j]);
    }

      print('\nEnter the Code of the Product you want to Buy or 0 for go back') ;

                int selection = int.parse(stdin.readLineSync()!);

                if (selection == 0)
                {
                  Buyer();
                }
                else{
                  test = true ;
                  for (int k = 0 ; k < games.length ; ++ k){
                    if (selection == games[k]['Product Code']){
                      print('Enter Your Full Name :');
                  String nameOfClient = stdin.readLineSync()!;
                      Map order = {'Name of Client' : nameOfClient , 'Product Code' :  games[k]['Product Code'] ,'Product Information' : Seller.product_data[k] };
                      Order.add(order);
                      print ('Order added Successfully with Number ${games[k]['Product Code']}');
                      break ;
                    }
                    
                  }
                    if(test){
                    print ('Wrong Code');
                    Games();
                  }
                }

    }
  
}

static Books(){

 number_Product = 1 ;
          books = [];

  for(int i = 0 ; i <Seller.product_data.length ; ++ i){
    if(Seller.product_data[i]['Category']== 'BOOKS'){
      numberOfProduct = number_Product ;
      Map Product = {'Product Code': numberOfProduct , 'Product Information' : Seller.product_data[i]};
      books.add(Product);
      number_Product ++ ;
    }
      
  }

    if(supermarket.length == 0){
      print('Sorry, There is no items') ;
    }
    else{

      for(int j = 0 ; j <books.length ; ++ j){
      print(books[j]);
    }

      print('\nEnter the Code of the Product you want to Buy or 0 for go back') ;

                int selection = int.parse(stdin.readLineSync()!);

                if (selection == 0)
                {
                  Buyer();
                }
                else{
                  test = true ;
                  for (int k = 0 ; k < books.length ; ++ k){
                    if (selection == books[k]['Product Code']){
                      print('Enter Your Full Name :');
                  String nameOfClient = stdin.readLineSync()!;
                      Map order = {'Name of Client' : nameOfClient , 'Product Code' :  books[k]['Product Code'] ,'Product Information' : Seller.product_data[k] };
                      Order.add(order);
                      print ('Order added Successfully with Number ${books[k]['Product Code']}');
                      break ;
                    }
                    
                  }
                    if(test){
                    print ('Wrong Code');
                    Books();
                  }
                }

    }
  
}


}
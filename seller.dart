import 'dart:io';
import 'pro.dart';

class Seller {

bool flag = true ;
bool Flag = true ;
bool test = true ;
bool Test = true ;
static int id_seller = 1 ;
late int id ;
late String name ;
late String address ;
late String numberPhone ;
static List dataOfSeller = [];
static late String category ;
static List product_data = [];
List <String> Category = ['SUPERMARKET' , 'ELECTRONICS' ,'CLOTHES', 'BEAUTY', 'SPORT' ,'FURNITURE & KITCHEN TOOLS', 'GAMES', 'BOOKS'];

   
   
   Add_Product(){
    
    print('Enter Product Name');
    String name_product = stdin.readLineSync()! ;

    print('Enter Product Price');
    int price_product = int.parse(stdin.readLineSync()!) ;

    print('Enter Product Details');
    String details_product = stdin.readLineSync()! ;

    Map <String , dynamic> Data = {'Category':category,'Product Name':name_product ,'Price':price_product, 'Details':details_product };
    
    product_data.add(Data) ; 

    print('Product added Successfully');

   }


   Check_Category(){


    print ('Enter Category');
    category = stdin.readLineSync()! ;
    category = category.toUpperCase();
          Flag = true ;
    for(int k = 0 ; k < Category.length ; ++k){
      if (category == Category[k]){
        print('This Category is available');
        Flag = false ;
        Add_Product();
        break ;
      }
    }
        if (Flag){
           print('Sorry! .. This Category is not available');
            Old_Seller();
              }

   }



   New_Seller(){

    print ('Thank you choose IEEE Egypt\n ');

    print('Please Enter Your Name');
    name = stdin.readLineSync()! ;

    while(flag){
      print ('Enter you Phone Number');
      numberPhone = stdin.readLineSync()! ;
      if (numberPhone.length == 11){
        flag = false ;
        break ;
      }
      else {
        print ('Wrong Phone Number, Please, Write it correctly');
        
      }
    }

    print ('Enter your Address');
    address = stdin.readLineSync()!;

    id = id_seller ;
    print('Your ID is $id');
    ++ id_seller ;

    Map <String , dynamic> data_seller = {'Id' : id , 'Name' : name ,'Phone Number': numberPhone ,'Address' : address };

    dataOfSeller.add(data_seller);

    print ('\nwelcome in our Communtiy! .. Now you are part of our family ');

    Seller() ;
   }


   Old_Seller(){

    int given_id ;

    while(true){

    print ('Choose \n1 = > Add new Product \n2 = > View Your Data \n3 = > Back \n');

      int selection = int.parse(stdin.readLineSync()!);

      if(selection == 1)
      {
          Test = true ;
          print ('Enter your Id');
          int test_id = int.parse(stdin.readLineSync()!);
          for(int j = 0 ; j< dataOfSeller.length ; j++){
            if (test_id == dataOfSeller[j]['Id']){
              print('Correct\n');
              Test = false ;
              Check_Category();
              break;
            }
          }
          if (Test){
           print('This id is not available');
            Old_Seller();
              }
        
    
      }
      else if(selection == 2)
      {
        test = true ;
        print ('Enter Your Id');
        given_id = int.parse(stdin.readLineSync()!);

        for (int i = 0 ; i< dataOfSeller.length ; ++ i){
          if (given_id == dataOfSeller[i]['Id']){
            print (dataOfSeller[i]);
            test = false ;
            break ;
          }
          
        }

        if (test){
           print('This id is not available');
            Old_Seller();
            
        }

      }
      else if(selection == 3)
      {
        Seller();
      }
      else 
      {
       print('Wrong Selection');
      }
    }
   }


Seller(){
  
    print ('Welcome Seller \n ');

    while(true){
      
     print ('Please, choose \n1 = > New Seller \n2 = > Old Seller \n3 = > Back \n');
      int selection = int.parse(stdin.readLineSync()!);

      if(selection == 1)
      {
        New_Seller();
        break;
      }
      else if(selection == 2)
      {
        Old_Seller();
        break;
      }
      else if(selection == 3)
      {
       main();
      }
      else 
      {
        print('Wrong Selection');
      }
       }
      }
        }
        
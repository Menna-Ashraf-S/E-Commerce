
import 'dart:io';
import 'seller.dart';
import 'customer_service.dart';
import 'pro.dart';

class Manager {

int password = 1234 ;
int numberOfTries = 5 ;


Manager_System(){
print('Welcome Manager\n\n');
while(true){
print('Choose \n1 = > Show Sellers List \n2 = > Show Complaint List \n3 = > Back \n');

int selection = int.parse(stdin.readLineSync()!);

   if(selection == 1)
  {
    if(Seller.dataOfSeller .length == 0){
      print ('No Sellers yet');
    }
    else{
      for(int j = 0 ; j<Seller.dataOfSeller.length ; ++j ){
      print (Seller.dataOfSeller[j]);
    }
    }
  }
  else if(selection == 2)
  {
    if (Customer_Service.complaint.length == 0){
      print('There is no Complaint');
    }
    else{
      for(int i = 0 ; i< Customer_Service.complaint.length ; ++ i){
      
      print(Customer_Service.complaint);
    }
    }
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

Manager(){
  print ('Welcome!');
  while(numberOfTries !=0){
      print('please, Enter Your Password ');
      int Password = int.parse(stdin.readLineSync()!);
      if(password == Password ){
        print('Correct');
        
        Manager_System();
        break;
      }

      else{
        numberOfTries -- ;
        print('Wrong Password.. please, Try again You have ${numberOfTries} left');
      }
      }

      if(numberOfTries==0){
        print('Sorry, Try Again Later ..');
        exit(0);
      }
}
}
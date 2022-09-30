import 'dart:io';
import 'buyer.dart';
import 'customer_service.dart';
import 'manager.dart';
import 'seller.dart';

void main() {
  print('\nWelcome to IEEE EGYPt \n');
  while (true)
  {
  print('Choose \n1 = > Buyer \n2 = > Customers Service \n3 = > Seller \n4 = > Manager \n5 = > Exit \n');

  int selection = int.parse(stdin.readLineSync()!);

  if(selection == 1)
  {
    Buyer b = Buyer();
  }
  else if(selection == 2)
  {
    Customer_Service c = Customer_Service();
  }
  
  else if(selection == 3)
  {
    Seller s = Seller();
  }
  else if(selection == 4)
  {
    Manager m = Manager();
  }
  else if(selection == 5)
  {
    exit(0);
  }
  else 
  {
    print('Wrong Selection');
  }
  
}}

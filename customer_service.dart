import 'dart:io';
import 'pro.dart';

class Customer_Service {

 static List complaint = [];
late String complaint_Text  ;
late String name ;



Customer_Service(){

  print('Choose what do you want: \n1 = > Call Us \n2 = > Add Complaint \n3 = > Back \n');

  int selection = int.parse(stdin.readLineSync()!);

   if(selection == 1)
  {
    print('Call Our Hot Line 11080 \n We are here to help you! \nIEEE Egypt \n');
    

  }
  else if(selection == 2)
  {

    print('Please, Add you Name');
    name = stdin.readLineSync()!;

    print('Please, Add your Complaint:');
    complaint_Text = stdin.readLineSync()! ;

    Map <String , dynamic> comp ={'Name': name , 'Complaint': complaint_Text};

    complaint.add(comp);
    print('Your Compaint recorded Successfully and sent to Manager \n We are Sorry for you! \n');
    
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
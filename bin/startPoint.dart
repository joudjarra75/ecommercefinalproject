import 'customer.dart';
import 'dart:io';

menu(){
  print("----------------------------------------------");
  List <String> menuList = [
    "View Product",
    "Add to cart",
    "Delete from cart",
    "Show cart",
    "Payment",
    "Exist"
  ];

  for (int i = 0 ; i < menuList.length ; i++){
    print("${i+1}- ${menuList[i]}");
  }
}

createUserAccount(){
  stdout.write("please enter your name:");
  String name = stdin.readLineSync()!;
  stdout.write("please enter your phone number:");
  String phNo = stdin.readLineSync()!;
  stdout.write("please enter your address:");
  String address = stdin.readLineSync()!;
  Customer customer = Customer(name, phNo, address);
  return customer;
}

userChoice(Customer c){
  menu();
  int choice = int.parse(stdin.readLineSync()!);
  switch(choice){
    case 1:
    //obj customer.viewProducts();
    c.viewProducts();
    break;
    case 2:
    int n;
    do{
      stdout.write("Enter ID for item to add it, if you want to exist enter 0 : ");
      n = int.parse(stdin.readLineSync()!);
      if(n != 0){
        c.addToCart(n);
      }
    }while(n != 0);
    c.viewProductsCart();
  
    break;
    case 3:
    int n;
    do{
      stdout.write("Enter ID for item to remove it, if you want to exist enter 0 :");
      n = int.parse(stdin.readLineSync()!);
      if(n != 0){
        c.removeFromCart(n);
      }

    }while(n != 0);
    c.viewProductsCart();
    break;


    case 4:
    c.viewProductsCart();
    break;

    case 5:
    c.paymentFunction();
    // print("payment"); //payment class
    break;
    case 6:
    exit(0);
  }
}
runAsCustomer(){
  print("If you want to register please enter \"Yes\"");
  String choice = stdin.readLineSync()!; //YES //Yes //yEs != yes
  if(choice.toLowerCase() == "yes"){
    Customer c = createUserAccount(); //return customer object
    while (true){
    userChoice(c);
    }
  }
else{

}
}
//it-a sara is a person (inh)

import 'dart:io';

import 'payment.dart';
import 'staticProductList.dart';
import 'cart.dart';

var customerId = 0;
//has a
class Customer{
  late int _id;
  late String _name,_phNo,_address;
  //className varName; 
  late Cart cart;
  late Payment payment;
  late List<Payment> paymentInfo = [];

  
  Customer(this._name,this._phNo,this._address){
    _id = ++customerId;
    cart =Cart();
    
    }

  // Customer.payment(){
  // }
   
  paymentFirstTime(){
    print("Enter all info to first time:");
    stdout.write("Enter your name in card");
    String name = stdin.readLineSync()!;
    stdout.write("Enter your card number in card");
    int cn = int.parse(stdin.readLineSync()!);
    stdout.write("Enter your password ");
    String pass = stdin.readLineSync()!;
    payment = Payment(name, cn, pass);
    paymentInfo.add(payment);
    print(paymentInfo[0].cn);
    paymentFunction();
  }

  paymentFunction(){
    print("do you have payment info in website?");
    String choice = stdin.readLineSync()!;
    if(choice.toLowerCase() == "yes"){
    if(paymentInfo.isEmpty){
      print("your info is not found");
      paymentFirstTime();
    }
      stdout.write("Enter your card number in card : ");
      int cn1 = int.parse(stdin.readLineSync()!);
      stdout.write("Enter your password : ");
      String pass1 = stdin.readLineSync()!;
        for (int i = 0;i<paymentInfo.length;i++){
        if(paymentInfo[i].cn == cn1 && paymentInfo[i].pass == pass1){
          print("your info is correct ");
          print("payment done");   
        } 
        else if(paymentInfo[i].cn == cn1 && paymentInfo[i].pass != pass1){
          print("your card num is correct but password wronge");
        }
        
      }
    }
    else{
      print("your info not found please enter ur info");
      paymentFirstTime();
    }
  }

  
    viewProducts(){
      viewSysProduct();
    }

    addToCart(int n){
      
      int index = staticProductList.indexWhere((element) => element.id == n);
      var value = staticProductList[index];
      cart.productListUser.add(value);
        //  viewProductsCart();

      cart.numberOfProducts ++;
      cart.total += staticProductList[index].price;
    //  print("total cart from add ${cart.total}");
    
    }

    viewProductsCart(){
       print("""________________________________________
No  |  Product name  |   Product Price
_______________________________________""");
for (int i = 0; i < cart.productListUser.length ; i++){
  print("${i+1}        ${cart.productListUser[i].name}            ${cart.productListUser[i].price}" );
}
print("your number of item = ${cart.numberOfProducts}\ntotal price = ${cart.total}");
  }

  
    removeFromCart(int n){
      int index = cart.productListUser.indexWhere((element) => element.id == n);
    double removedPrice = cart.productListUser[index].price;
    cart.productListUser.removeAt(index);  //whole object deleted
      
    cart.numberOfProducts --; //num - 1
    cart.total -= removedPrice;
        

   
    }
  
      

      }
    // int index = cart.productListUser.indexWhere((element) => i == n);
    // double removedPrice = cart.productListUser[index].price;
    // cart.productListUser.removeAt(index);  //whole object deleted
      
    // cart.numberOfProducts --; //num - 1
    // cart.total -= removedPrice;
        // print("total cart from remove ${cart.total}");


     
//list [pro1 100 , pro2 109]
    



// void main(List<String> args) {
//   Customer customer = Customer("_name", "_phNo", "_address");
//   customer.addToCart(1);//p = 100
//   customer.addToCart(1);//p = 100
//   customer.addToCart(1);//p = 100
//   customer.addToCart(2); //p = 109
// //total from add = 100
// //total from add = 200
// //total from add = 300
// //total from add = 409
//   customer.removeFromCart(1);

// //total from remove = 309
 
 
// }
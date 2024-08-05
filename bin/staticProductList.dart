
import 'product.dart';

List <Product> staticProductList = [
  Product("pro1", 100),//0
  Product("pro2", 109),
  Product("pro3", 70),
  Product("pro4", 68),
  Product("pro5", 34),
  Product("pro6", 67),
  Product("pro7", 9),
  Product("pro8", 63.9),
  Product("pro9", 80.9),
  Product("pro10", 109.9)

];


void viewSysProduct(){
  print("""________________________________________
Product name   |    Product Price
_______________________________________""");
for (int i = 0 ; i < staticProductList.length ; i++){
  print("${i+1}- ${staticProductList[i].name}                ${staticProductList[i].price}" );
}

}
void main(List<String> args) {
  // viewSysProduct();
}

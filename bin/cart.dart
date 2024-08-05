import 'product.dart';

int autoId = 0;
class Cart{
  late int _id,_numberOfProducts;
  late List <Product> productListUser ;
  late double _total;

  Cart([this._numberOfProducts = 0,this._total = 0]){
    this.productListUser = [];
    _id = ++autoId;
  }

  int get id => _id;
  set id (int v) => _id = v;

 int get numberOfProducts => _numberOfProducts ;
  set numberOfProducts (int s) => _numberOfProducts = s;
  
 double get total => _total ;
  set total (double s) => _total = s;
}
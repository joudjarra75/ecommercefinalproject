var autoId = 0;
class Product{
 late int _id ;
  String _name;
  late double _price;
 
 Product(this._name,this._price){
   _id = ++autoId;
 }


String get name => _name;
double get price => _price;
int get id => _id;
}
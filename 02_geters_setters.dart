void main(){
    
  final mySquare = Square( side: -10);
  
  
  print('area: ${mySquare.calcularArea()}');
  
}

class Square{
  
  double _side;
  
  Square({required double side}):
  assert(side >= 0, 'side must be >= 0'),
  _side = side;
  
  double get area=> _side * _side;
  
  set side(double value){
    print('setting new value $value');
    if(value < 0) throw 'Value must be >= 0';
    
    _side = value;
  }
  double calcularArea()=> _side * _side;
}
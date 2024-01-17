void main(){
  
    final Map<String, dynamic> rawJson = {
    'name': 'Thor',
    'power': 'God',
    'isAlive': true
  };
  
  final ironMan = Hero(name: 'Tony Stark', power: 'Money');
  final thor = Hero.fromJson(rawJson);
  
  print(ironMan);
  print(thor);
}

class Hero{
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    this.power = 'Sin Poder',
    this.isAlive = true
  });
  
  Hero.fromJson(Map<String, dynamic> json):
    name = json['name'] ?? 'No name found',
    power = json['power'] ?? 'No power found',
    isAlive = json['isAlive'] ?? false;
    
  
  @override
  String toString()=> '$name, $power, ${isAlive ? 'YES!' : 'NOPE'}';
  
}

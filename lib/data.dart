List<Map<String, dynamic>> cardgamelist = [
  {"type": "Fruit", "name": "Apple"},
  {"type": "Vegetable", "name": "Broccoli"},
  {"type": "Vegetable", "name": "Mushroom"},
  {"type": "Fruit", "name": "Banana"},
  {"type": "Vegetable", "name": "Tomato"},
  {"type": "Fruit", "name": "Orange"},
  {"type": "Fruit", "name": "Mango"},
  {"type": "Fruit", "name": "Pineapple"},
  {"type": "Vegetable", "name": "Cucumber"},
  {"type": "Fruit", "name": "Watermelon"},
  {"type": "Vegetable", "name": "Carrot"}
];

class cardgame {
  int? id;
  String? type;
  String? name;
  bool? enabled;

  cardgame({this.id, this.type, this.name, this.enabled});

  cardgame.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['enabled'] = this.enabled;
    return data;
  }
}

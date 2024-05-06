import 'package:todolist/data.dart';

List<cardgame> cardgamedata = [];
List<Map<String, dynamic>> Alldata = [];
List<Map<String, dynamic>> fruit = [];
List<Map<String, dynamic>> vegetable = [];

List<cardgame> TFJsonToDart() {
  int index = 0;
  for (var data in cardgamelist) {
    cardgamedata.addAll({
      cardgame(
          id: index, type: data["type"], name: data["name"], enabled: false)
    });
    index = index + 1;
  }

  return cardgamedata;
}

List<cardgame> dividertype(
    List<Map<String, dynamic>> data, int index, bool enabled) {
  cardgame alldata = inputtogradgame(data, index);
  for (var data in cardgamedata) {
    if (data.id == alldata.id) {
      cardgamedata.removeWhere((element) => element.id == alldata.id);
      cardgamedata.add(cardgame(
          id: alldata.id,
          type: alldata.type,
          name: data.name,
          enabled: enabled));
    }
  }

  return cardgamedata;
}

cardgame inputtogradgame(List<Map<String, dynamic>> data, int index) {
  return cardgame(
      id: data[index]["id"],
      type: data[index]["type"],
      name: data[index]["name"],
      enabled: data[index]["enabled"]);
}

void dividerdata(List<cardgame> data) {
  Alldata = [];
  fruit = [];
  vegetable = [];
  for (var e in data) {
    if (e.enabled == false) {
      Alldata.addAll({e.toJson()});
    } else if (e.enabled == true && e.type == "Fruit") {
      fruit.addAll({e.toJson()});
    } else if (e.enabled == true && e.type == "Vegetable") {
      vegetable.addAll({e.toJson()});
    }
  }
}

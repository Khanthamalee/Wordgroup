import 'package:flutter/material.dart';
import 'package:todolist/colors.dart';
import 'package:todolist/controller.dart';
import 'package:todolist/data.dart';
import 'package:todolist/widget/basic.dart';
import 'package:todolist/widget/grid.dart';

class IpadLayout extends StatefulWidget {
  const IpadLayout({super.key});

  @override
  State<IpadLayout> createState() => _PCLayoutState();
}

class _PCLayoutState extends State<IpadLayout> {
  List<cardgame> data = [];
  @override
  Widget build(BuildContext context) {
    data = cardgamedata;
    dividerdata(data);
    return Scaffold(
      appBar: AppBar(
        title: Topic(),
        backgroundColor: AppColors.purpletone,
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  color: AppColors.purpletone,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Alldata.isEmpty
                        ? NoData(
                            topic: "No-Card",
                          )
                        : Center(
                            child: GridView.count(
                            scrollDirection: Axis.vertical,
                            crossAxisCount: 3,
                            children: List.generate(Alldata.length, (index) {
                              return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      dividertype(Alldata, index, true);
                                      Alldata.remove(Alldata[index]);
                                    });
                                  },
                                  child: CardDetail(
                                    Text: Alldata[index]["name"],
                                    fontSize: 16,
                                    color: AppColors.yellowtone,
                                    Textcolor: AppColors.purpletone,
                                    marginbotton: 10,
                                    marginleft: 10,
                                    marginright: 10,
                                    margintop: 10,
                                  ));
                            }),
                          )),
                  ))),
          Expanded(
              child: SizedBox(
                  //color: Colors.orange,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        color: AppColors.pinktone,
                        child: fruit.isEmpty
                            ? NoData(topic: "No-Fruit")
                            : Center(
                                child: GridView.count(
                                scrollDirection: Axis.vertical,
                                // mainAxisSpacing: 15,
                                // crossAxisSpacing: 15,
                                crossAxisCount: 3,
                                children: List.generate(fruit.length, (index) {
                                  print("data : ${fruit[index]["name"]}");
                                  return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              dividertype(fruit, index, false);
                                              Alldata.remove(fruit[index]);
                                            });
                                          },
                                          child: CardDetail(
                                            Text: fruit[index]["name"],
                                            fontSize: 14,
                                            color: AppColors.yellowtone,
                                            Textcolor: AppColors.pinktone,
                                            marginbotton: 10,
                                            marginleft: 10,
                                            marginright: 10,
                                            margintop: 10,
                                          )));
                                }),
                              )),
                      )),
                      Expanded(
                          child: Container(
                        color: AppColors.greentone,
                        child: vegetable.isEmpty
                            ? NoData(
                                topic: "No-Vegetatable",
                              )
                            : Center(
                                child: GridView.count(
                                scrollDirection: Axis.vertical,
                                crossAxisCount: 3,
                                children:
                                    List.generate(vegetable.length, (index) {
                                  print("data : ${vegetable[index]["name"]}");
                                  return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              dividertype(
                                                  vegetable, index, false);
                                              Alldata.remove(vegetable[index]);
                                            });
                                          },
                                          child: CardDetail(
                                            Text: vegetable[index]["name"],
                                            fontSize: 14,
                                            color: AppColors.yellowtone,
                                            Textcolor: AppColors.greentone,
                                            marginbotton: 10,
                                            marginleft: 10,
                                            marginright: 10,
                                            margintop: 10,
                                          )));
                                }),
                              )),
                      )),
                    ],
                  ))),
        ]),
      ),
    );
  }
}

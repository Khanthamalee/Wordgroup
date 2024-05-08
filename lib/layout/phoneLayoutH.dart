import 'package:flutter/material.dart';
import 'package:todolist/colors.dart';
import 'package:todolist/controller.dart';
import 'package:todolist/data.dart';
import 'package:todolist/demension/demension.dart';
import 'package:todolist/widget/basic.dart';
import 'package:todolist/widget/grid.dart';

class phoneLayoutH extends StatefulWidget {
  const phoneLayoutH({super.key});

  @override
  State<phoneLayoutH> createState() => _PCLayoutState();
}

class _PCLayoutState extends State<phoneLayoutH> {
  List<cardgame> data = [];
  @override
  Widget build(BuildContext context) {
    double widthscreen = MediaQuery.of(context).size.width;
    double heightscreen = MediaQuery.of(context).size.height;
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
              flex: 3,
              child: Container(
                  color: AppColors.purpletone,
                  width: double.infinity,
                  child: Padding(
                    padding:
                        EdgeInsets.all(DimensionStaticWidth(context, 8 / 2)),
                    child: Alldata.isEmpty
                        ? NoData(
                            topic: "No-Card",
                          )
                        : Center(
                            child: GridView.count(
                            scrollDirection:
                                widthscreen < 800 && heightscreen < 500
                                    ? Axis.horizontal
                                    : Axis.vertical,
                            crossAxisCount:
                                widthscreen < 800 && heightscreen < 500 ? 3 : 4,
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
                                    fontSize:
                                        DimensionStaticWidth(context, 12 / 2),
                                    color: AppColors.yellowtone,
                                    Textcolor: AppColors.purpletone,
                                    marginbotton:
                                        DimensionStaticWidth(context, 10 / 2),
                                    marginleft:
                                        DimensionStaticWidth(context, 10 / 2),
                                    marginright:
                                        DimensionStaticWidth(context, 10 / 2),
                                    margintop:
                                        DimensionStaticWidth(context, 10 / 2),
                                  ));
                            }),
                          )),
                  ))),
          Expanded(
              flex: 2,
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
                                crossAxisCount: 4,
                                children: List.generate(fruit.length, (index) {
                                  return Padding(
                                      padding: EdgeInsets.all(
                                          DimensionStaticWidth(context, 2 / 2)),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              dividertype(fruit, index, false);
                                              Alldata.remove(fruit[index]);
                                            });
                                          },
                                          child: CardDetail(
                                            Text: fruit[index]["name"],
                                            fontSize: DimensionStaticWidth(
                                                context, 10 / 2),
                                            color: AppColors.yellowtone,
                                            Textcolor: AppColors.pinktone,
                                            marginbotton: DimensionStaticWidth(
                                                context, 6 / 2),
                                            marginleft: DimensionStaticWidth(
                                                context, 6 / 2),
                                            marginright: DimensionStaticWidth(
                                                context, 6 / 2),
                                            margintop: DimensionStaticWidth(
                                                context, 6 / 2),
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
                                crossAxisCount: 4,
                                children:
                                    List.generate(vegetable.length, (index) {
                                  return Padding(
                                    padding: EdgeInsets.all(
                                        DimensionStaticWidth(context, 2 / 2)),
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
                                          fontSize: DimensionStaticWidth(
                                              context, 10 / 2),
                                          color: AppColors.yellowtone,
                                          Textcolor: AppColors.greentone,
                                          marginbotton: DimensionStaticWidth(
                                              context, 6 / 2),
                                          marginleft: DimensionStaticWidth(
                                              context, 6 / 2),
                                          marginright: DimensionStaticWidth(
                                              context, 6 / 2),
                                          margintop: DimensionStaticWidth(
                                              context, 6 / 2),
                                        )),
                                  );
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

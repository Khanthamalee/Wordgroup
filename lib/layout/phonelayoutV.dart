import 'package:flutter/material.dart';
import 'package:todolist/colors.dart';
import 'package:todolist/controller.dart';
import 'package:todolist/data.dart';
import 'package:todolist/demension/demension.dart';
import 'package:todolist/widget/basic.dart';
import 'package:todolist/widget/grid.dart';

class PhoneLayoutV extends StatefulWidget {
  @override
  State<PhoneLayoutV> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PhoneLayoutV> {
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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  color: AppColors.purpletone,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(DimensionStaticHeight(context, 8)),
                    child: Alldata.isEmpty
                        ? NoData(
                            topic: "No-Card",
                          )
                        : Center(
                            child: GridView.count(
                            scrollDirection: Axis.vertical,
                            crossAxisCount: 4,
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
                                        DimensionStaticHeight(context, 14),
                                    color: AppColors.yellowtone,
                                    Textcolor: AppColors.purpletone,
                                  ));
                            }),
                          )),
                  ))),
          Expanded(
              child: Container(
                  //color: Colors.orange,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        //
                        color: AppColors.pinktone,
                        child: fruit.isEmpty
                            ? NoData(topic: "No-Fruit")
                            : Center(
                                child: GridView.count(
                                scrollDirection: Axis.vertical,
                                crossAxisCount: 2,
                                children: List.generate(fruit.length, (index) {
                                  return Padding(
                                    padding: EdgeInsets.all(
                                        DimensionStaticHeight(context, 8)),
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            dividertype(fruit, index, false);
                                            Alldata.remove(fruit[index]);
                                          });
                                        },
                                        child: CardDetail(
                                          Text: fruit[index]["name"],
                                          fontSize: DimensionStaticHeight(
                                              context, 12),
                                          color: AppColors.yellowtone,
                                          Textcolor: AppColors.pinktone,
                                        )),
                                  );
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
                                crossAxisCount: 2,
                                children:
                                    List.generate(vegetable.length, (index) {
                                  return Padding(
                                      padding: EdgeInsets.all(
                                          DimensionStaticHeight(context, 8)),
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
                                            fontSize: DimensionStaticHeight(
                                                context, 12),
                                            color: AppColors.yellowtone,
                                            Textcolor: AppColors.greentone,
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

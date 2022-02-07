import 'package:flutter/material.dart';
import 'package:yanvar31/model/namoz_vaqt_model.dart';
import 'package:yanvar31/model2/service.dart';
import 'package:yanvar31/screens/lists/listData.dart';
import 'package:yanvar31/screens/taqvim/oyTaqvim.dart';

class TaqvimPage extends StatefulWidget {
  const TaqvimPage({Key? key}) : super(key: key);

  @override
  State<TaqvimPage> createState() => _TaqvimPageState();
}

DateTime kund = DateTime.now();
int kun = kund.day.toInt();
int kunIndex = kund.day.toInt() - 1;

class _TaqvimPageState extends State<TaqvimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.6],
            colors: [
              Color(0xFF65AC38),
              Color(0xFF002744),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Image(image: AssetImage("assets/namozvaqt/top.jpg")),
                  Image(image: AssetImage("assets/namozvaqt/bottom.jpg"))
                ],
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.width * 0.15,
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.06),
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OylikTaqvim()));
                            },
                            icon: Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                )),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.3,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: MediaQuery.of(context).size.height * 0.45,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  print("1");
                                  if (kun > 1) {
                                    print("2");

                                    kun -= 1;

                                    kunIndex == 0
                                        ? kunIndex = 0
                                        : kunIndex -= 1;
                                  }
                                });
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.green,
                              )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("4 Rajab, 1443"),
                              Text("$kun Fevral, ${kund.year}")
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  // print("1");
                                  print(ServiceIslam2.datas);
                                  if (kun < ServiceIslam2.datas!.length) {
                                    kun += 1;
                                  }
                                  kunIndex == ServiceIslam2.datas!.length - 1
                                      ? kunIndex =
                                          ServiceIslam2.datas!.length - 1
                                      : kunIndex += 1;
                                });
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.green,
                              ))
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                        height: 0,
                      ),
                      Container(
                        margin: const EdgeInsets.all(1),
                        width: MediaQuery.of(context).size.width * 0.9,
                        // color: Colors.cyan.withOpacity(0.4),
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: FutureBuilder(
                            future: ServiceIslam2.getIslamData(),
                            builder: (context, snapshot) {
                              return ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    height:
                                        MediaQuery.of(context).size.width * 0.1,
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.7),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            const Icon(Icons.perm_camera_mic),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "${namozName[index]}",
                                              style: TextStyle(fontSize: 17),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 10),
                                          child: index == 0
                                              ? Text(ServiceIslam2.datas![kunIndex]
                                                      ["timings"]["Fajr"]
                                                  .toString()
                                                  .substring(0, 5))
                                              : index == 1
                                                  ? Text(ServiceIslam2.datas![kunIndex]
                                                          ["timings"]["Sunrise"]
                                                      .toString()
                                                      .substring(0, 5))
                                                  : index == 2
                                                      ? Text(ServiceIslam2.datas![kunIndex]["timings"]["Dhuhr"]
                                                          .toString()
                                                          .substring(0, 5))
                                                      : index == 3
                                                          ? Text(ServiceIslam2
                                                              .datas![kunIndex]["timings"]["Asr"]
                                                              .toString()
                                                              .substring(0, 5))
                                                          : index == 4
                                                              ? Text(ServiceIslam2.datas![kunIndex]["timings"]["Sunset"].toString().substring(0, 5))
                                                              : Text(ServiceIslam2.datas![kunIndex]["timings"]["Isha"].toString().substring(0, 5)),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                itemCount: 6,
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

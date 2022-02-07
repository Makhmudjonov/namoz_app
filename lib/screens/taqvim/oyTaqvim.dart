import 'package:flutter/material.dart';
import 'package:yanvar31/model2/service.dart';

class OylikTaqvim extends StatefulWidget {
  OylikTaqvim({Key? key}) : super(key: key);

  @override
  State<OylikTaqvim> createState() => _OylikTaqvimState();
}

class _OylikTaqvimState extends State<OylikTaqvim> {
  DateTime ab = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Taqvim"),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.03,
            color: Colors.green.withOpacity(0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Sana",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  "Bomdod",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  "Peshin",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  "Shom",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  "Asr",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  "Hufton",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 116,
            color: Colors.transparent,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      color: ServiceIslam2.datas![index]["date"]["gregorian"]
                                  ["weekday"]["en"] ==
                              "Friday"
                          ? Colors.green.withOpacity(0.3)
                          : index + 1 == ab.day
                              ? Colors.green.withOpacity(0.7)
                              : Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "${ServiceIslam2.datas![index]["date"]["gregorian"]["date"].toString().substring(0, 5)}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            ServiceIslam2.datas![index]["timings"]["Fajr"]
                                .toString()
                                .substring(0, 5),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            ServiceIslam2.datas![index]["timings"]["Dhuhr"]
                                .toString()
                                .substring(0, 5),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            ServiceIslam2.datas![index]["timings"]["Asr"]
                                .toString()
                                .substring(0, 5),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            ServiceIslam2.datas![index]["timings"]["Sunset"]
                                .toString()
                                .substring(0, 5),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            ServiceIslam2.datas![index]["timings"]["Isha"]
                                .toString()
                                .substring(0, 5),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      )),
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: Colors.green.withOpacity(0.5),
                  )
                ]);
              },
              itemCount: ServiceIslam2.datas!.length,
            ),
          )
        ],
      ),
    );
  }
}

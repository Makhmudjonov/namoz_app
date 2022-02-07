import 'package:flutter/material.dart';
import 'package:yanvar31/model2/service.dart';
import 'package:yanvar31/screens/taqvim/taqvimPage.dart';

class NamozVaqt extends StatelessWidget {
  NamozVaqt({Key? key}) : super(key: key);
  late String bomdod;
  late String peshin;
  late String asr;
  late String shom;
  late String hufton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FutureBuilder(
            future: ServiceIslam2.getIslamData(),
            builder: (context, snspshot) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.black),
                            color: Colors.green.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "${shart()}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.black),
                            color: Colors.green.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${nextTime()}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })
      ],
    );
  }

  shart() {
    DateTime dateTime = DateTime.parse("54");
    if (DateTime.now().hour == dateTime) {
      bomdod = ServiceIslam2.datas![kunIndex]["timings"]["Fajr"];
      return "Bomdod";
    }
    if (DateTime.now().hour <=
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Sunset"]
                .toString()
                .substring(0, 2)) &&
        DateTime.now().hour <
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Sunset"]
                .toString()
                .substring(3, 5))) {
      hufton = ServiceIslam2.datas![kunIndex]["timings"]["Isha"];
      return "Hufton";
    }
    if (DateTime.now().hour <=
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Asr"]
                .toString()
                .substring(0, 2)) &&
        DateTime.now().hour <
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Asr"]
                .toString()
                .substring(3, 5))) {
      shom = ServiceIslam2.datas![kunIndex]["timings"]["Sunset"];
      return "Shom";
    }
    if (DateTime.now().hour <=
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Dhuhr"]
                .toString()
                .substring(0, 2)) &&
        DateTime.now().hour <
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Dhuhr"]
                .toString()
                .substring(3, 5))) {
      asr = ServiceIslam2.datas![kunIndex]["timings"]["Asr"];
      return "Asr";
    }
    if (DateTime.now().hour <=
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Fajr"]
                .toString()
                .substring(0, 2)) &&
        DateTime.now().hour <
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Fajr"]
                .toString()
                .substring(3, 5))) {
      peshin = ServiceIslam2.datas![kunIndex]["timings"]["Ish"];
      return "Peshin";
    }
  }

  nextTime() {
    if (DateTime.now().hour <=
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Isha"]
                .toString()
                .substring(0, 2)) &&
        DateTime.now().hour <
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Isha"]
                .toString()
                .substring(3, 5))) {
      bomdod = ServiceIslam2.datas![kunIndex]["timings"]["Fajr"]
          .toString()
          .substring(0, 5);
      return bomdod;
    }
    if (DateTime.now().hour <=
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Sunset"]
                .toString()
                .substring(0, 2)) &&
        DateTime.now().hour <
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Sunset"]
                .toString()
                .substring(3, 5))) {
      hufton = ServiceIslam2.datas![kunIndex]["timings"]["Isha"]
          .toString()
          .substring(0, 5);
      return hufton;
    }
    if (DateTime.now().hour <=
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Asr"]
                .toString()
                .substring(0, 2)) &&
        DateTime.now().hour <
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Asr"]
                .toString()
                .substring(3, 5))) {
      shom = ServiceIslam2.datas![kunIndex]["timings"]["Sunset"]
          .toString()
          .substring(0, 5);
      return shom;
    }
    if (DateTime.now().hour <=
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Dhuhr"]
                .toString()
                .substring(0, 2)) &&
        DateTime.now().hour <
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Dhuhr"]
                .toString()
                .substring(3, 5))) {
      asr = ServiceIslam2.datas![kunIndex]["timings"]["Asr"]
          .toString()
          .substring(0, 5);
      return asr;
    }
    if (DateTime.now().hour <=
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Fajr"]
                .toString()
                .substring(0, 2)) &&
        DateTime.now().hour <
            int.parse(ServiceIslam2.datas![kunIndex]["timings"]["Fajr"]
                .toString()
                .substring(3, 5))) {
      peshin = ServiceIslam2.datas![kunIndex]["timings"]["Ish"]
          .toString()
          .substring(0, 5);
      return peshin;
    }
  }
}

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class ServiceIslam {
  static List? datas = [];

  static Future getIslamData() async {
    await openBox();
    Response res;
    try {
      res = await Dio()
          .get("https://api.pray.zone/v2/times/today.json?city=tashkent");
      await putIslamData(res.data);
      // print(res.data);
    } catch (e) {}

    List myData = box!.toMap().values.toList();
    // print(myData);
    if (myData.isEmpty) {
      datas!.add("nodata");
      print(datas);
    } else {
      datas = myData;
    }

    return true;
  }

  static Box? box;
  static Future openBox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    box = await Hive.openBox("datam");
  }

  static putIslamData(var data) async {
    await box!.clear();

    for (var d in data["results"]["datetime"]) {
      box!.add(d);
    }
  }
}

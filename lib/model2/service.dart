import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class ServiceIslam2 {
  static List? datas = [];

  static Future getIslamData() async {
    await openBox();
    Response res;
    try {
      res = await Dio().get(
          "https://api.aladhan.com/v1/calendarByCity?city=Tashkent&country=Uzbekistan&method=0&month=2&year=2022&school=1");
      await putIslamData(res.data);
    } catch (e) {}

    List myData = box!.toMap().values.toList();
    if (myData.isEmpty) {
      datas!.add("nodata");
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

    for (var d in data["data"]) {
      box!.add(d);
    }
  }
}
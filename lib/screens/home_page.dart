import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:yanvar31/model/namoz_vaqt_model.dart';
import 'namozvaqt.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class MyHomePage extends StatefulWidget {
  final Map? kel;
  const MyHomePage({Key? key, this.kel}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AndroidInitializationSettings? initializationSettingsAndroid;
  IOSInitializationSettings? initializationSettingsIOS;
  InitializationSettings? initializationSettings;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  int? day = DateTime.now().day, hour, minute;
  late TabController tabController;
  List habar = [];
  Random son = Random();

  int a = 0;

  Future<void> setup() async {
    tz.initializeTimeZones();
    var detroit = tz.getLocation('America/Detroit');
    var now = tz.TZDateTime.now(detroit);
    print("Bilmadim $now");
  }

  @override
  void initState() {
    // TODO: implement initStatei
    super.initState();
    // await ServiceIslam.getIslamData();
    // getHttp();
    tabController = TabController(
      initialIndex: a,
      length: 6,
      vsync: this,
    );
    tz.initializeTimeZones();
    initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    initializationSettingsIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: (id, title, subtitle, content) {});
    initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(initializationSettings!,
        onSelectNotification: (v) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (c) => Scaffold(
            appBar: AppBar(),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: PreferredSize(
                child: TabBar(
                    // labelStyle: TextStyle(color: Colors.orange),
                    labelColor: Color(0xFf032D3C),
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    
                    controller: tabController,
                    isScrollable: true,
                    unselectedLabelColor: Colors.black.withOpacity(0.3),
                    // unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                    indicatorColor: Color(0xFf032D3C),
                    tabs: const [
                      Tab(
                        child: Text("Tong"),
                      ),
                      Tab(
                        child: Text("Quyosh"),
                      ),
                      Tab(
                        child: Text("Peshin"),
                      ),
                      Tab(
                        child: Text("Asr"),
                      ),
                      Tab(
                        child: Text("Shom"),
                      ),
                      Tab(
                        child: Text("Hufton"),
                      )
                    ]),
                preferredSize: const Size.fromHeight(30.0)),
          ),
          body: RefreshIndicator(
            color: Colors.orangeAccent,
            onRefresh: _refreshQilish,
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: NamoVaqtCard(tabController: tabController)),
                    Expanded(
                      child: FutureBuilder(
                          future: ServiceIslam.getIslamData(),
                          builder: (context, snapshot) {
                            return Container(
                              height: 100,
                              width: 50,
                              color: Colors.yellow,
                              child: Text(ServiceIslam.datas.toString()),
                            );
                          }),
                      flex: 6,
                    )
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              b();
            },
          ),
        ));
  }

  Future<void> _refreshQilish() async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {});
  }

  b() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails('your channel id', 'your channel name',
            channelDescription: 'your channel description',
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker');
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, 'plain title', 'plain body', platformChannelSpecifics,
        payload: 'item x');
  }
}

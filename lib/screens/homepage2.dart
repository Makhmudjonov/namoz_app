import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';
import 'package:yanvar31/model/namoz_vaqt_model.dart';
import 'package:yanvar31/screens/lists/listData.dart';
import 'package:yanvar31/screens/taqvim/vaqt.dart';

import 'drawer/menuDrawer.dart';

class HomePageSeconds extends StatefulWidget {
  HomePageSeconds({Key? key}) : super(key: key);

  @override
  State<HomePageSeconds> createState() => _HomePageSecondsState();
}

final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();

int bottomIndex = 0;

class _HomePageSecondsState extends State<HomePageSeconds> {
  final CountDownController controller =  CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(
        // backgroundColor: Color(0xFF8267BE),
        title: const Text("Muslim Mind"),
        actions: const [
          Icon(Icons.mail),
          SizedBox(
            width: 15,
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/102.png"),
                      fit: BoxFit.cover),
                  gradient: LinearGradient(
                    // stops: [0.1,0.0],
                    colors: [
                      Color(0xFF007336),
                      Color(0xFF04d867),
                    ],
                  ),
                ),
                child: Stack(children: [
                   Positioned(
                    top: 10,
                    child: NamozVaqt(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.1),
                    child: Center(child: FlipClocks(Colors.black)),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        // Container(
                        //   margin: EdgeInsets.only(
                        //       bottom: 5,
                        //       top: MediaQuery.of(context).size.width * 0.06),
                        //   height: MediaQuery.of(context).size.height * 0.22,
                        //   width: MediaQuery.of(context).size.width * 0.8,
                        //   decoration: BoxDecoration(
                        //     color: Colors.transparent,
                        //     border: Border.all(
                        //       color: const  Color(0xFF9CB0E5).withGreen(4),
                        //       width: 8,
                        //     ),
                        //     borderRadius: BorderRadius.only(
                        //       topLeft: Radius.circular(
                        //           (MediaQuery.of(context).size.height * 0.22)),
                        //       topRight: Radius.circular(
                        //           MediaQuery.of(context).size.height * 0.22),
                        //     ),
                        //   ),
                        // )
                      ])
                ])),
          ),
          Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Container(
                  color: const Color(0xFF6867AC),
                  child: Column(children: [
                    const SizedBox(
                      height: 7,
                    ),
                    Image(
                      image:
                          const AssetImage("assets/img/menuIcon/divider.png"),
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MenuIcon[index]["page"],
                                ),
                              );
                            },
                            child: Container(
                              // height: MediaQuery.of(context).size.width * 0.4,
                              // width: MediaQuery.of(context).size.width * 0.3,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFF9CB0E5),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Image(
                                        image:
                                            AssetImage(MenuIcon[index]["img"]),
                                        height: 60,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text("${MenuIcon[index]["name"]}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF6867AC),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: 9,
                      ),
                    ),
                  ]),
                ),
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomIndex,
        onTap: (a) {
          setState(() {
            bottomIndex = a;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Bosh sahifa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Habarlar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Sozlamalar",
          )
        ],
      ),
    );
  }

  Future vaqt() async {
    return Future.delayed(Duration(seconds: 3), () {
      return Text(
        "${ServiceIslam.datas![0]}",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color(0xFF007336),
            fontWeight: FontWeight.bold,
            fontSize: 30),
      );
    });
  }
}

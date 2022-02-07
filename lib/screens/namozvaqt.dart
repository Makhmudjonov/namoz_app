import 'package:flutter/material.dart';
import 'package:yanvar31/model/namoz_vaqt_model.dart';
import 'package:yanvar31/screens/lists/listData.dart';

class NamoVaqtCard extends StatefulWidget {
  const NamoVaqtCard({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  State<NamoVaqtCard> createState() => _NamoVaqtCardState();
}

class _NamoVaqtCardState extends State<NamoVaqtCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder(
          future: ServiceIslam.getIslamData(),
          builder: (context, snapshot) {
            return Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: TabBarView(
                controller: widget.tabController,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFf032D3C), width: 1.5),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            top: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: const Image(
                                image: AssetImage("assets/img/fon.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                              top: 15.0,
                              left: 10,
                              child: Text(
                                "Tong",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                          Positioned(
                              top: 65,
                              left: 80,
                              child: Text(
                                "${ServiceIslam.datas![0]["times"]["Imsak"]}",
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.white),
                              )),
                          // const Positioned(
                          //     bottom: 40,
                          //     left: 10,
                          //     child: Text(
                          //       "Keyingisi: Quyosh",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          // Positioned(
                          //     bottom: 15,
                          //     left: 10,
                          //     child: Text(
                          //       "${ServiceIslam.datas![0]["times"]["Fajr"]}",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          Positioned(
                              right: MediaQuery.of(context).size.width * 0.07,
                              top: MediaQuery.of(context).size.width * 0.02,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    notifIconColor[0] == true
                                        ? notifIconColor[0] = false
                                        : notifIconColor[0] = true;
                                  });
                                },
                                icon: Icon(
                                  Icons.notifications,
                                  size: 40,
                                  color: notifIconColor[0] == true
                                      ? Colors.green
                                      : Color(0xFf032D3C),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFf032D3C), width: 1.5),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            top: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: const Image(
                                image: AssetImage("assets/img/fon.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                              top: 15.0,
                              left: 10,
                              child: Text(
                                "Quyosh",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                          Positioned(
                              top: 65,
                              left: 80,
                              child: Text(
                                "${ServiceIslam.datas![0]["times"]["Sunrise"]}",
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.white),
                              )),
                          // const Positioned(
                          //     bottom: 40,
                          //     left: 10,
                          //     child: Text(
                          //       "Keyingisi: Quyosh",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          // Positioned(
                          //     bottom: 15,
                          //     left: 10,
                          //     child: Text(
                          //       "${ServiceIslam.datas![0]["times"]["Fajr"]}",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          Positioned(
                              right: MediaQuery.of(context).size.width * 0.07,
                              top: MediaQuery.of(context).size.width * 0.02,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    notifIconColor[1] == true
                                        ? notifIconColor[1] = false
                                        : notifIconColor[1] = true;
                                  });
                                },
                                icon: Icon(
                                  Icons.notifications,
                                  size: 40,
                                  color: notifIconColor[1] == true
                                      ? Colors.green
                                      : Color(0xFf032D3C),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFf032D3C), width: 1.5),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            top: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: const Image(
                                image: AssetImage("assets/img/fon.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                              top: 15.0,
                              left: 10,
                              child: Text(
                                "Peshin",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                          Positioned(
                              top: 65,
                              left: 80,
                              child: Text(
                                "${ServiceIslam.datas![0]["times"]["Dhuhr"]}",
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.white),
                              )),
                          // const Positioned(
                          //     bottom: 40,
                          //     left: 10,
                          //     child: Text(
                          //       "Keyingisi: Quyosh",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          // Positioned(
                          //     bottom: 15,
                          //     left: 10,
                          //     child: Text(
                          //       "${ServiceIslam.datas![0]["times"]["Fajr"]}",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          Positioned(
                              right: MediaQuery.of(context).size.width * 0.07,
                              top: MediaQuery.of(context).size.width * 0.02,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    notifIconColor[2] == true
                                        ? notifIconColor[2] = false
                                        : notifIconColor[2] = true;
                                  });
                                },
                                icon: Icon(
                                  Icons.notifications,
                                  size: 40,
                                  color: notifIconColor[2] == true
                                      ? Colors.green
                                      : Color(0xFf032D3C),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFf032D3C), width: 1.5),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            top: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: const Image(
                                image: AssetImage("assets/img/fon.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                              top: 15.0,
                              left: 10,
                              child: Text(
                                "Asr",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                          Positioned(
                              top: 65,
                              left: 80,
                              child: Text(
                                "${ServiceIslam.datas![0]["times"]["Asr"]}",
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.white),
                              )),
                          // const Positioned(
                          //     bottom: 40,
                          //     left: 10,
                          //     child: Text(
                          //       "Keyingisi: Quyosh",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          // Positioned(
                          //     bottom: 15,
                          //     left: 10,
                          //     child: Text(
                          //       "${ServiceIslam.datas![0]["times"]["Fajr"]}",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          Positioned(
                              right: MediaQuery.of(context).size.width * 0.07,
                              top: MediaQuery.of(context).size.width * 0.02,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    notifIconColor[3] == true
                                        ? notifIconColor[3] = false
                                        : notifIconColor[3] = true;
                                  });
                                },
                                icon: Icon(
                                  Icons.notifications,
                                  size: 40,
                                  color: notifIconColor[3] == true
                                      ? Colors.green
                                      : Color(0xFf032D3C),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFf032D3C), width: 1.5),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            top: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: const Image(
                                image: AssetImage("assets/img/fon.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                              top: 15.0,
                              left: 10,
                              child: Text(
                                "Shom",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                          Positioned(
                              top: 65,
                              left: 80,
                              child: Text(
                                "${ServiceIslam.datas![0]["times"]["Sunset"]}",
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.white),
                              )),
                          // const Positioned(
                          //     bottom: 40,
                          //     left: 10,
                          //     child: Text(
                          //       "Keyingisi: Quyosh",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          // Positioned(
                          //     bottom: 15,
                          //     left: 10,
                          //     child: Text(
                          //       "${ServiceIslam.datas![0]["times"]["Fajr"]}",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          Positioned(
                              right: MediaQuery.of(context).size.width * 0.07,
                              top: MediaQuery.of(context).size.width * 0.02,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    notifIconColor[4] == true
                                        ? notifIconColor[4] = false
                                        : notifIconColor[4] = true;
                                  });
                                },
                                icon: Icon(
                                  Icons.notifications,
                                  size: 40,
                                  color: notifIconColor[4] == true
                                      ? Colors.green
                                      : Color(0xFf032D3C),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFf032D3C), width: 1.5),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            top: 0,
                            left: 0,
                            right: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: const Image(
                                image: AssetImage("assets/img/fon.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                              top: 15.0,
                              left: 10,
                              child: Text(
                                "Hufton",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                          Positioned(
                              top: 65,
                              left: 80,
                              child: Text(
                                "${ServiceIslam.datas![0]["times"]["Isha"]}",
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.white),
                              )),
                          // const Positioned(
                          //     bottom: 40,
                          //     left: 10,
                          //     child: Text(
                          //       "Keyingisi: Quyosh",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          // Positioned(
                          //     bottom: 15,
                          //     left: 10,
                          //     child: Text(
                          //       "${ServiceIslam.datas![0]["times"]["Fajr"]}",
                          //       style: TextStyle(fontSize: 20),
                          //     )),
                          Positioned(
                              right: MediaQuery.of(context).size.width * 0.07,
                              top: MediaQuery.of(context).size.width * 0.02,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    notifIconColor[5] == true
                                        ? notifIconColor[5] = false
                                        : notifIconColor[5] = true;
                                  });
                                },
                                icon: Icon(
                                  Icons.notifications,
                                  size: 40,
                                  color: notifIconColor[5] == true
                                      ? Colors.green
                                      : Color(0xFf032D3C),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

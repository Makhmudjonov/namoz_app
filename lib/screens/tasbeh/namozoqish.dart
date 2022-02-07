import 'package:flutter/material.dart';
import 'package:yanvar31/screens/lists/namozoqishlist.dart';

class NamozOqish extends StatefulWidget {
  const NamozOqish({Key? key}) : super(key: key);

  @override
  _NamozOqishState createState() => _NamozOqishState();
}

class _NamozOqishState extends State<NamozOqish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Namoz o'qish"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // color: Colors.yellow,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            namozOqishList[index]["title"],
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      Image(
                          image: AssetImage("${namozOqishList[index]["vid"]}")),
                      const SizedBox(
                        height: 15,
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      Text(
                        "${namozOqishList[index]["text"]}",
                        style: const TextStyle(fontSize: 17),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Container(
                      //   color: Colors.grey.withOpacity(0.3),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Column(children: [
                      //       Text(
                      //         "${namozOqishList[index]["q1"] != null ? namozOqishList[index]["q1"] : ""}",
                      //         style: const TextStyle(
                      //           fontSize: 17,
                      //         ),
                      //       ),
                      //       const SizedBox(
                      //         height: 5,
                      //       ),
                      //       Text(
                      //         "${namozOqishList[index]["q2"]}",
                      //         style: const TextStyle(
                      //           fontSize: 17,
                      //         ),
                      //       ),
                      //     ]),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Text(
                      //   "${namozOqishList[index]["text2"]}",
                      //   style: const TextStyle(
                      //     fontSize: 17,
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Container(
                      //   color: Colors.grey.withOpacity(0.3),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Column(children: [
                      //       Text(
                      //         "${namozOqishList[index]["q3"]}",
                      //         style: const TextStyle(
                      //           fontSize: 17,
                      //         ),
                      //       ),
                      //       const SizedBox(
                      //         height: 5,
                      //       ),
                      //       Text(
                      //         "${namozOqishList[index]["q4"]}",
                      //         style: const TextStyle(
                      //           fontSize: 17,
                      //         ),
                      //       ),
                      //     ]),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Text(
                      //   "${namozOqishList[index]["text3"]}",
                      //   style: const TextStyle(
                      //     fontSize: 17,
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Container(
                      //   color: Colors.grey.withOpacity(0.3),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Column(children: [
                      //       Text(
                      //         "${namozOqishList[index]["q5"]}",
                      //         style: const TextStyle(
                      //           fontSize: 17,
                      //         ),
                      //       ),
                      //       const SizedBox(
                      //         height: 5,
                      //       ),
                      //       Text(
                      //         "${namozOqishList[index]["q6"]}",
                      //         style: const TextStyle(
                      //           fontSize: 17,
                      //         ),
                      //       ),
                      //     ]),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Text(
                      //   "${namozOqishList[index]["text4"]}",
                      //   style: const TextStyle(
                      //     fontSize: 17,
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Container(
                      //   color: Colors.grey.withOpacity(0.3),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Column(children: [
                      //       Text(
                      //         "${namozOqishList[index]["q7"]}",
                      //         style: const TextStyle(
                      //           fontSize: 17,
                      //         ),
                      //       ),
                      //       const SizedBox(
                      //         height: 5,
                      //       ),
                      //       Text(
                      //         "${namozOqishList[index]["q8"]}",
                      //         style: const TextStyle(
                      //           fontSize: 17,
                      //         ),
                      //       ),
                      //     ]),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Text(
                      //   "${namozOqishList[index]["text5"]}",
                      //   style: const TextStyle(
                      //     fontSize: 17,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: namozOqishList.length,
        ),
      ),
    );
  }
}

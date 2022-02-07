import 'package:flip_board/flip_clock.dart';
import 'package:flutter/material.dart';
import 'package:yanvar31/screens/lists/listData.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF8267BE).withOpacity(0.7),
      // semanticLabel: "dgsdfgsdgdg",
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            NetworkImage("https://source.unsplash.com/random"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Muslim Mind",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 3,
                  ),
                ],
              )),
          Expanded(
              flex: 7,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: driwerList[index]["icon"],
                    title: driwerList[index]["name"],
                  );
                },
                itemCount: driwerList.length,
              ))
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget FlipClocks(Color colors) => Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      padding: const EdgeInsets.all(10.0),
      child: FlipClock(
        backgroundColor: Color(0xFF8267BE),
        digitSize: 20.0,
        digitColor: Colors.white,
        separatorWidth: 5,
        width: 25.0,
        height: 40.0,
        separatorColor: colors,
        hingeColor: Colors.black,
        showBorder: true,
      ),
    );

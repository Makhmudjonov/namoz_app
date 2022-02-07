import 'package:flutter/material.dart';

class TasbehPage extends StatefulWidget {
  const TasbehPage({Key? key}) : super(key: key);

  @override
  State<TasbehPage> createState() => _TasbehPageState();
}

int birdan = 0;
int jami = 0;

class _TasbehPageState extends State<TasbehPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            iconSize: 30,
            onPressed: () {
              setState(() {
                birdan = 0;
                jami = 0;
              });
            },
          )
        ],
        title: Text("Tasbeh"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFFCBF8FD),
          Color(0xFF5CA8B8),
        ])),
        child: Stack(
          children: [
            const Image(
              image: AssetImage("assets/img/tasbeh_background.jpg"),
            ),
            Positioned(
              right: 10,
              top: MediaQuery.of(context).size.width * 0.3,
              child: Column(
                children: [
                  Text(
                    "${birdan}/33",
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "$jami Jami",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: MediaQuery.of(context).size.width * 0.4,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if (birdan == 32) {
                      birdan = 0;
                    } else {
                      birdan += 1;
                    }
                    jami += 1;
                  });
                },
                icon: const Icon(Icons.fingerprint_rounded),
                iconSize: 70,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yanvar31/screens/lists/listData.dart';

class KalimaPage extends StatelessWidget {
  const KalimaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Olti Kalima"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(children: [
            ExpansionTile(
              onExpansionChanged: (value) {
                print(value);
              },
              title: Text(
                oltiKalima[index]["name"],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green.withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(oltiKalima[index]["text"]),
                    ),
                  ),
                )
              ],
            ),
            Divider(thickness: 2,color: Colors.green.withOpacity(0.6),)
          ]);
        },
        itemCount: 6,
      ),
    );
  }
}

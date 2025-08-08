import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: Border(bottom: BorderSide(color: Colors.grey, width: 1)),
          title: Text( '금호동3가', style: TextStyle( color: Colors.black) ), 
          actions: [
            Padding(padding: EdgeInsets.only(right: 20), child: Icon(Icons.search)),
            Padding(padding: EdgeInsets.only(right: 20), child: Icon(Icons.menu)),
            Padding(padding: EdgeInsets.only(right: 20), child: Icon(Icons.notifications)),
          ], 
        ),
        body: SizedBox(
          width: double.infinity, height: 170,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(13, 10, 10, 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/camera.jpg',
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)",
                          style: TextStyle(fontSize: 18),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text('성동구 행당동 · 끌올 10분전', style: TextStyle(fontSize: 13, color: Colors.grey)),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text('210,000원', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(CupertinoIcons.heart, color: Colors.grey,),
                            Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Text('4'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
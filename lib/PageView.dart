import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  PageController _pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pages"),
          actions: [
            InkWell

              (
                onTap:()=> _pageController.previousPage(duration: Duration(milliseconds: 500), curve:Curves.decelerate ),
                child: Icon(Icons.arrow_back)),
            InkWell

              (
                onTap:()=> _pageController.nextPage(duration: Duration(milliseconds: 500), curve:Curves.decelerate ),
                child: Icon(Icons.arrow_forward)),

          ],
        ),
        body: PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
          return     Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
            child: Center(
              child: Text(
                  "Page $index"
              ),
            ),
          );
        },

        )
      ),
    );
  }
}

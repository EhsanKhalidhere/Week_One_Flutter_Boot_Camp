import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),

        ),
        body:
        ListView.separated(itemBuilder: (context,index){
          return
            ListTile(
                  leading: Container(
                    height: 100,
                    width: 100,

                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,


                    ),
                  ),
                  title: Text("User Name"),
                  subtitle: Text("Email"),
                  trailing: Icon(Icons.delete),

                );
        }, separatorBuilder: (context,seprator){
          return Container(
            height: 10,
            width: double.infinity,
            color: Colors.blue,

          );
        }, itemCount: 10)

      //ListViewBuilder.....
      // ListView.builder(itemBuilder: (context ,index){
      //
      //
      //   return  ListTile(
      //     leading: Container(
      //       height: 100,
      //       width: 100,
      //
      //       decoration: BoxDecoration(
      //         color: Colors.blueGrey,
      //         shape: BoxShape.circle,
      //
      //
      //       ),
      //     ),
      //     title: Text("User Name"),
      //     subtitle: Text("Email"),
      //     trailing: Icon(Icons.delete),
      //
      //   );
      // },itemCount: 10,)

      //Listview..
      // ListView(
      //   children: [
      //     ListTile(
      //       leading: Container(
      //         height: 100,
      //         width: 100,
      //
      //         decoration: BoxDecoration(
      //           color: Colors.blueGrey,
      //           shape: BoxShape.circle,
      //
      //
      //         ),
      //       ),
      //       title: Text("User Name"),
      //       subtitle: Text("Email"),
      //       trailing: Icon(Icons.delete),
      //
      //     )
      //   ],
      // ),
    );
  }
}

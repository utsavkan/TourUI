// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ThemeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5, top: 5),
        height: 150,
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            alignment: Alignment.topLeft,
            child: Text('Theme'),
          ),
          Expanded(
            //height: 130,
            child: ListView.custom(
                scrollDirection: Axis.horizontal,
                childrenDelegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      //child: Container(child: CircleAvatar(radius: 50)),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/nature.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                          Text('Theme1'),
                        ],
                      ),
                    );
                  },
                  childCount: 10,
                )),
          ),
        ]));
  }
}

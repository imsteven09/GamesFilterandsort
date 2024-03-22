import 'package:buddyfiltergames/core/constants/color_constants.dart';
import 'package:buddyfiltergames/core/constants/string_constants.dart';

import 'package:buddyfiltergames/core/repository/userrepository.dart';
import 'package:buddyfiltergames/ui/customwidgets/exploreusers.dart';
import 'package:buddyfiltergames/ui/customwidgets/isEmpty.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<ExploreData>(
        builder: (context, exploredatalistmodel, index) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appbarbg,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Explore'),
          actions: [
            IconButton(
                onPressed: () {
                  exploredatalistmodel.sortdata();
                },
                icon: Icon(Icons.sort_rounded)),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
              AppStrings.likedu,
              style: TextStyle(color: Colors.red, fontSize: 28),
            ),
          ),
          Container(
            //color: Colors.green,
            height: 32,
            margin: EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              children: [
                Container(
                  height: 32,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: AppColors.allbg),
                  child: InkWell(
                    onTap: () {
                      exploredatalistmodel.showall();
                    },
                    child: Text(
                      'All',
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: exploredatalistmodel.allgames.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print(exploredatalistmodel.allgames[index]
                                .toString());
                            String gamename =
                                exploredatalistmodel.allgames[index];
                            exploredatalistmodel.filterdata(gamename);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 4),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    style: BorderStyle.solid,
                                    color: AppColors.gamesborder),
                                borderRadius: BorderRadius.circular(7)),
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            height: 30,
                            child: Text(exploredatalistmodel.allgames[index]),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          //gridbiew
          exploredatalistmodel.exploredatalist.isEmpty
              ? Isempty()
              : Exploreusersgridview()
        ]),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.orange,
            currentIndex: val,
            onTap: (value) {
              setState(() {
                val = value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.map), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.messenger), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ]),
      );
    });
  }
}

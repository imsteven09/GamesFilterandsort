import 'package:buddyfiltergames/core/constants/color_constants.dart';
import 'package:buddyfiltergames/core/repository/userrepository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Exploreusersgridview extends StatefulWidget {
  const Exploreusersgridview({super.key});

  @override
  State<Exploreusersgridview> createState() => _ExploreusersgridviewState();
}

class _ExploreusersgridviewState extends State<Exploreusersgridview> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ExploreData>(
        builder: (context, exploredatalistmodel, child) {
      return Expanded(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
            itemCount: exploredatalistmodel.exploredatalist.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.95,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5),
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Stack(clipBehavior: Clip.none, children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: CircleAvatar(
                          radius: 75,
                          backgroundImage: AssetImage(exploredatalistmodel
                              .exploredatalist[index].image),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 100,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(colors: [
                                  Color.fromARGB(255, 253, 186, 85),
                                  Color.fromARGB(255, 255, 153, 0)
                                ])),
                            child: Icon(
                              Icons.diamond,
                              size: 16,
                              color: Colors.white,
                            )),
                      ),
                      Positioned(
                          top: 130,
                          left: 85,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(colors: [
                                    Color.fromARGB(255, 58, 209, 230),
                                    Colors.cyan
                                  ])),
                              child: Row(
                                children: [
                                  Text(
                                    exploredatalistmodel
                                        .exploredatalist[index].games[0],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  exploredatalistmodel.exploredatalist[index]
                                              .games.length >
                                          1
                                      ? CircleAvatar(
                                          backgroundColor:
                                              AppColors.gamecountbg,
                                          radius: 10,
                                          child: Text(
                                            exploredatalistmodel
                                                        .exploredatalist[index]
                                                        .games
                                                        .length >
                                                    1
                                                ? '+${(exploredatalistmodel.exploredatalist[index].games.length - 1).toString()}'
                                                : '',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        )
                                      : Text('')
                                ],
                              )))
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(exploredatalistmodel.exploredatalist[index].name),
                        SizedBox(
                          width: 10,
                        ),
                        Text(exploredatalistmodel.exploredatalist[index].age
                            .toString())
                      ],
                    )
                  ],
                ),
              );
            }),
      ));
    });
  }
}

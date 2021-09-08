import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_uis/projects/stag/model/place.dart';
import 'package:flutter_uis/projects/stag/widgets/place_item.dart';

class StagApp extends StatelessWidget {
  const StagApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placeList = Place.generatePlaces();
    return Scaffold(
      body: Container(
        child: StaggeredGridView.countBuilder(
          shrinkWrap: true,
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: ScrollPhysics(),
          itemCount: placeList.length,
          itemBuilder: (BuildContext context, int index) => PlaceItem(
            place: placeList[index],
          ),
          staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
        ),
      ),
    );
  }
}

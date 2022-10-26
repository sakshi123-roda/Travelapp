import 'package:flutter/material.dart';
import 'package:travelapp/model/place.dart';
import 'package:travelapp/model/place_details.dart';


class MovieListScreen extends StatelessWidget {
  // MovieListScreen(Type place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movies o watch'),
        ),
        body:SingleChildScrollView(

       child: Column(children: <Widget>[
    
      ListView.builder(
            itemCount: placeList.length,
            // scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              place p = placeList[index];
              return Card(
                child: ListTile(
                     leading: Image.asset(p.imgUrl),
                  title: Text(p.name),
                  subtitle: Text(p.Place.toString()),
                
                   trailing: Text(p.star),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => PlaceDetailsScreen(p)));
                  },
                ),
              );
            })],),
    ));
  }
}
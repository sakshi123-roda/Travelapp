import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/model/place.dart';

class placedetails extends StatelessWidget {
  final place p;
  placedetails(this.p);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        body: ListView(children: [
      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Center(
            child: Stack(children: <Widget>[
          Column(children: [
            SizedBox(
                height: 800,
                child: Container(
                    height: 900,
                    width: 383,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(p.imgUrl),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 290,
                          ),
                          Image.asset(
                            "images/Vector.png",
                            color: Colors.white,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 500)),
                      Container(
                          child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(25, 0, 20, 00),
                            child: Row(children: [
                              Text(p.name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal)),
                              const SizedBox(width: 50),
                              Container(
                                  child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () => null,
                                    icon: const Icon(
                                        FontAwesomeIcons.locationDot),
                                    color: Colors.white,
                                  ),
                                  Text(p.Place,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal)),
                                ],
                              )),
                            ]),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(25, 0, 20, 00),
                            child: Text(p.Description,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal)),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(children: [
                              RatingBarIndicator(
                                unratedColor: Colors.white,
                                rating: 4,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 20.0,
                                direction: Axis.horizontal,
                              ),
                              Text(p.star,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal))
                            ]),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
                                child: Text(p.rate,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal)),
                              ),
                              Container(
                                  height: 60,
                                  padding:
                                      const EdgeInsets.fromLTRB(130, 0, 0, 0),
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    color:
                                        const Color.fromRGBO(252, 210, 64, 1),
                                    child: const Text('Book Now',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Urbanis',
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal)),
                                    onPressed: () {},
                                  )),
                            ],
                          ),
                        ],
                      ))
                    ])))
          ])
        ]))
      ])
    ]));
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:travelapp/design/utils/colornotifire.dart';

import 'package:travelapp/design/utils/string.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelapp/model/place.dart';
import 'package:travelapp/model/place_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  late ColorNotifire notifire;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);

    return MaterialApp(
        home: Scaffold(
            backgroundColor: notifire.getprimerycolor,
            body: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Column(children: [
                      Stack(children: [
                        Column(children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              "images/Ellipse.png",
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Center(
                              child: Text(
                                CustomStrings.hello,
                                style: TextStyle(
                                    color: notifire.getdarkscolor,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 23),
                              ),
                            ),
                            const SizedBox(
                              width: 120,
                            ),
                            Image.asset(
                              "images/Vectorr.png",
            

                              fit: BoxFit.cover,
                            ),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                              child: const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    CustomStrings.where,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 30),
                                  ))),
                          const SizedBox(
                            height: 15,
                          ),

                          Container(
                              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                              child: const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    CustomStrings.today,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Gilroy Bold',
                                        fontSize: 30),
                                  ))),
                          // ignore: avoid_unnecessary_containers
                          Container(
                            margin: const EdgeInsets.all(18),
                            child: const TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                                border: OutlineInputBorder(),
                                hintText: 'Search ',
                              ),
                            ),
                          ),
                          Column(children: [
                            Row(children: [
                              Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 10, 0),
                                  child: const Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                       CustomStrings.category,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Inter',
                                            fontSize: 20),
                                      ))),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(100, 0, 0, 0),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 20),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                   CustomStrings.see,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                            ]),

                            //
                            Row(children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                width: 190,
                                height: 80,
                                // padding: new EdgeInsets.all(10.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  color: Colors.white,
                                  child: Row(
                                    // mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Image.asset(
                                        "images/beach.png",
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        CustomStrings.beach,
                                        style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(12, 5, 7, 1),
                                            fontStyle: FontStyle.normal),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                width: 190,
                                height: 80,
                                // padding: new EdgeInsets.all(10.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  // color: Colors.white,

                                  child: Row(
                                    // mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Image.asset(
                                        "images/img.png",
                                        fit: BoxFit.cover,
                                      ),
                                      //      SizedBox(
                                      //   width:  15,
                                      // ),
                                      const Text(
                                        CustomStrings.mountain,
                                        style: TextStyle(
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(12, 5, 7, 1),
                                            fontStyle: FontStyle.normal),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                          ]),

                          Column(
                            children: [
                              SizedBox(
                                height: 279,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: placeList.length,
                                    itemBuilder: (context, index) {
                                      place p = placeList[index];
                                      return Container(
                                        width: 190,
                                        // height: 279,
                                        padding: new EdgeInsets.all(10.0),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          // color: Colors.red,
                                          elevation: 10,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Center(
                                                child: Stack(
                                                  children: [
                                                    InkWell(
                                                      child: Container(
                                                          height: 251,
                                                          width: 170,
                                                          decoration:
                                                              BoxDecoration(
                                                                borderRadius: BorderRadius.circular(10.0),
                                                            image:
                                                                DecorationImage(
                                                              image: AssetImage(
                                                                  p.imgUrl),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              const Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          150)),
                                                                          Container( 
                                                     
                                                            ),
                                                              Container(
                                                                
                                                                  child: Text(
                                                                      p.name,
                                                                      style: const TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontFamily:
                                                                              'Urbanist',
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontStyle:
                                                                              FontStyle.normal))),
                                                              Container(
                                                                  child: Row(
                                                                children: [
                                                                  IconButton(
                                                                    onPressed:
                                                                        () =>
                                                                            null,
                                                                    icon: const Icon(
                                                                        FontAwesomeIcons.locationDot),
                                                                            color: Colors.white,
                                                                  ),
                                                                  Text(p.Place,
                                                                      style: const TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontFamily:
                                                                              'Urbanist',
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontStyle:
                                                                              FontStyle.normal)),
                                                                ],
                                                              )),
                                                              Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        15,
                                                                        0,
                                                                        0,
                                                                        0),
                                                                child: Row(
                                                                    children: [
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
                                                            ],
                                                          )),
                                                      onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    placedetails(p),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          ), //
                          Row(children: [
                            Container(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 10, 0),
                                child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                    CustomStrings.package,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 20),
                                    ))),
                            Container(
                              padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: () {},
                                child: const Text(
                                 CustomStrings.see,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ]),
                          Column(children: [
                        
                                

                             ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                     physics: const NeverScrollableScrollPhysics(),
                                    itemCount: resortList.length,
                                    itemBuilder: (context, index) {
                                      resort r = resortList[index];

                                      return Container(
                                          width: 200,
                                         
                                          padding: new EdgeInsets.all(8.0),
                                          child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                            
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                     
                                                      padding: const EdgeInsets.fromLTRB(10, 0, 1, 0),
                                                      child: Row(
                                                        children: <Widget>[
                                                       Container(
                                                          height: 120,
                                                          width: 97,
                                                          decoration:
                                                              BoxDecoration(
                                                                borderRadius: BorderRadius.circular(10.0),
                                                            image:
                                                                DecorationImage(
                                                              image: AssetImage(
                                                                  r.imgUrl),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),),
                                                          Column(children: [
                                                          Row(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        const EdgeInsets.fromLTRB(
                                                                            6,
                                                                            0,
                                                                            90,
                                                                            0),
                                                                    child: Text(
                                                                      r.name,
                                                                      style: const TextStyle(
                                                                          color: Color.fromRGBO(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              1),
                                                                          fontStyle: FontStyle
                                                                              .normal,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontFamily:
                                                                              'Urbanist',
                                                                          fontSize:
                                                                              15),
                                                                    ),
                                                                  ),
const SizedBox(width: 6),
                                                                  Container(
                                                              
                                                                    child: Image
                                                                        .asset(
                                                                      r.img,
                                                                    ),
                                                                  ),
                                                                
                                                                ],
                                                              ),
                                                            
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Container(
                                                             padding:
                                                                        const EdgeInsets.fromLTRB(
                                                                            6,
                                                                            0,
                                                                            180,
                                                                            0),
                                                              child: Text(
                                                                r.rate,
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            203,
                                                                            43,
                                                                            43),
                                                                    fontStyle: FontStyle
                                                                        .normal,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontFamily:
                                                                        'Urbanist',
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Container(
                                                           padding:
                                                                        const EdgeInsets.fromLTRB(
                                                                            6,
                                                                            0,
                                                                            114,
                                                                            0),
                                                              child: Row(
                                                                  children: [
                                                                  RatingBarIndicator(
    rating: 4,
    itemBuilder: (context, index) => const Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.horizontal,
),
                                                                    Text(r.star)
                                                                  ]),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Container(
                                                          padding:
                                                                        const EdgeInsets.fromLTRB(
                                                                            0,
                                                                            0,
                                                                            40,
                                                                            0),
                                                              child: Text(
                                                                r.Description,
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            118,
                                                                            116,
                                                                            116,
                                                                            87),
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .normal,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontFamily:
                                                                        'Urbanist',
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 5,
                                                            ),
                                                            Container(
                                                                   padding:
                                                                        const EdgeInsets.fromLTRB(
                                                                            0,
                                                                            0,
                                                                            2,
                                                                            0),
                                                              child: Text(
                                                                r.D,
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            118,
                                                                            116,
                                                                            116,
                                                                            87),
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .normal,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontFamily:
                                                                        'Urbanist',
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ),
                                                          ]),
                                                        ],
                                                      ),
                                                    )
                                                  ])));
                                    })
                          ])
                        ])
                      ])
                    ])))));
  }
}

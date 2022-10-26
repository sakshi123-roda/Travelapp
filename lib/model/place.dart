import 'package:flutter/material.dart';

class place {
  String imgUrl;
  String name;
  String location;
  String Place;
  String Description;
  String rate;
  String star;
  // ignore: empty_constructor_bodies
  place({
    required this.imgUrl,
    required this.name,
    required this.location,
    required this.Place,
    required this.Description,
    required this.rate,
    required this.star,
  });
}

List<place> placeList = [
  place(
      imgUrl: 'images/Rectangle 85.png',
      name: 'Kuta Beach',
      location: 'images/location.png',
      Place: 'Bali,Indoneshia',
      Description:
          'One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.',
      rate: '₹15,000/person',
      star: '4.2'),
  place(
      imgUrl: 'images/Rectangle.png',
      name: 'Baga Beach',
      location: 'images/location.png',
      Place: 'Goa,India',
      Description:
          'One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.',
      rate: '₹20,000/person',
      star: '4.8'),
];

class resort {
  String imgUrl;
  String name;
  String img;

  String rate;

  String Description;
  String D;
  String star;
  // ignore: empty_constructor_bodies
  resort(
      {required this.imgUrl,
      required this.name,
      required this.img,
      required this.rate,
      required this.Description,
      required this.D,
      required this.star});
}

List<resort> resortList = [
  resort(
      imgUrl: 'images/baga.png',
      name: 'Kuta Beach Resort',
      img: 'images/Vector.png',
      rate: '₹20,000',
      Description: 'A resort is a place used for ',
      D: ' vacation, relaxation or as a day... ',
      star: '4.2'),
  resort(
      imgUrl: 'images/unsplash.png',
      name: 'Baga Beach Resort',
      img: 'images/Vector.png',
      rate: '₹15,000',
      Description: 'A resort is a place used for ',
      D: ' vacation, relaxation or as a day... ',
      star: '4.8'),
];

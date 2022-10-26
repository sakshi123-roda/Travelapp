import 'package:flutter/material.dart';
import 'package:travelapp/design/homepage.dart';
import 'package:travelapp/design/utils/colornotifire.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ColorNotifire(),
        ),
      ],
      child: const MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

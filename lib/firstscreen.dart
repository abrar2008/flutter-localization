import 'package:example_locale/provider.dart';
import 'package:example_locale/seocndpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  _FirstscreenState createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  final provide =
                      context.read<LocaleProvider>().setLocale(Locale('hi'));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Seocdpage()),
                  );
                },
                child: Text("Urdu")),
            ElevatedButton(onPressed: () {}, child: Text("English")),
          ],
        ),
      ),
    ));
  }
}

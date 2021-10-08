import 'package:example_locale/third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Seocdpage extends StatefulWidget {
  const Seocdpage({Key? key}) : super(key: key);

  @override
  _SeocdpageState createState() => _SeocdpageState();
}

class _SeocdpageState extends State<Seocdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("welcome"),
                  Text(AppLocalizations.of(context)!.ride),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Third()),
                        );
                      },
                      child: Text("English")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

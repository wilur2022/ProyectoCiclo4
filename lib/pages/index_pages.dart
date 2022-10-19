import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPages extends StatefulWidget {
  const IndexPages({Key? key}) : super(key: key);
  final String title = "TURISMO POR COLOMBIA";
  @override
  State<IndexPages> createState() => _IndexPagesState();
}

class _IndexPagesState extends State<IndexPages> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Image(image: AssetImage('assets/images/login.png')),
                    SizedBox(
                      height: 12.0)

                  ],
                ),
              ),
            ),
        ));
  }
}

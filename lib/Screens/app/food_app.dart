import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class FoodAppPage extends StatefulWidget {
  final int number;
  final String name;
  final String raw_material;
  final String how_to;
  final String img;

  FoodAppPage({Key key,@required 
  this.number,
  this.name,
  this.raw_material,
  this.how_to,this.img}) : 
  super(key: key);
  @override
  _FoodAppPageState createState() => _FoodAppPageState();
}

class _FoodAppPageState extends State<FoodAppPage> {
  var templel;

  @override
  Widget build(BuildContext context) {
    @override
    // ignore: unused_element
    void initState() {
      super.initState();
      if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    }

    print(widget.img);

    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
         backgroundColor: Colors.orange.shade600,
        title: Text(
          'วัตถุดิบและวิธีการทำ',
          style: GoogleFonts.itim(
          fontSize: 26,
          color: Colors.white, 
          fontWeight: FontWeight.w100,),
          ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Card(
                child: Image.network('${widget.img}'),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                margin: EdgeInsets.all(0),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Text(
                    "${widget.name}",
                    style: GoogleFonts.sriracha(
                    fontSize: 24,
                    color: Colors.red, 
                    fontWeight: FontWeight.bold,),
                      ),
                  ),
                ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15 ),
                child: Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Text(
                    "${widget.raw_material}",
                    style: GoogleFonts.pridi(
                    fontSize: 16,
                    color: Colors.green, 
                    height: 2, 
                    fontWeight: FontWeight.normal,),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Text(
                    "${widget.how_to}",
                    style: GoogleFonts.pridi(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
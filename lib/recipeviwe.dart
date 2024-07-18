import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Recipeviwe extends StatefulWidget {

String url;
Recipeviwe(this.url);
  @override
  State<Recipeviwe> createState() => _RecipeviweState();
}

class _RecipeviweState extends State<Recipeviwe> {
  late String finalurl;
  final Completer<WebViewController> controller=Completer<WebViewController>();
  @override
  void initState() {
    if(widget.url.toString().contains("http://"))
  {
    finalurl=widget.url.toString().replaceAll("http://", "https://");
  }else{
      finalurl=widget.url;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Recipe App"),
      ),
      body: Container(
        child: WebView(
          initialUrl:finalurl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController){
            setState(() {
              controller.complete(webViewController);
            });
          },
        ),
      ),
    );
  }
}

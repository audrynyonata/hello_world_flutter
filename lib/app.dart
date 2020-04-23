import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatelessWidget {
  var _url = "http://localhost:3000"
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter WebView example'),
        ),
        body: new WebView(
          initialUrl: _url,
          javascriptMode: JavascriptMode.unrestricted,
          onPageStarted: (String url) {
            print('---Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('---Page finished loading: $url');
          },
          gestureNavigationEnabled: true,
        ),
      );
  } 
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Views',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Arial",
        textTheme: TextTheme(
            button: TextStyle(color: Colors.white, fontSize: 18.0),
            title: TextStyle(color: Colors.red))),
      home: Home(),
    );
  }
}
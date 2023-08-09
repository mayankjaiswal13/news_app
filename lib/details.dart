import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetailScreen extends StatelessWidget {
  final Map<String, dynamic> newsItem;

  NewsDetailScreen(this.newsItem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News Detail')),
      body: WebView(
        initialUrl: newsItem['url'],
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

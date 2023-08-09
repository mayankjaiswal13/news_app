import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/services/news_service.dart';
 // Import your NewsService class

class NewsListScreen extends StatefulWidget {
  @override
  _NewsListScreenState createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  final NewsService newsService = GetIt.instance<NewsService>(); // Using GetIt directly

  List<Map<String, dynamic>> newsList = [];

  Future<void> fetchTopHeadlines() async {
    try {
     setState(() async {
       newsList = await newsService.fetchTopHeadlines();

     });}
    catch (e) {
      // Handle error
      print('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News App')),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          final article = newsList[index];
          return ListTile(
            title: Text(article['title']),
            onTap: () {
              // Handle tap on news item
            },
          );
        },
      ),
    );
  }
}

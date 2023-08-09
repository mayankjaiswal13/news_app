import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsService {
  Future<List<Map<String, dynamic>>> fetchTopHeadlines() async {
    final apiKey = '0477a8639ea44792aeebd56720e643fe'; // Replace with your actual API key
    final url = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
    print(data);
      return List<Map<String, dynamic>>.from(data['articles']);
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}

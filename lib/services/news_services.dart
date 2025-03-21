import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsService {
  static const String _apiKey = '0df9e53f806347eeade8562f6130ea63';
  static const String _baseUrl =
      'https://newsapi.org/v2/everything?q=tesla&from=2025-02-21&sortBy=publishedAt&apiKey=';

  // Fetch news articles from NewsAPI
  static Future<List<dynamic>> fetchNews() async {
    final String url = '$_baseUrl$_apiKey';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return data['articles']; // Return the articles list
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}

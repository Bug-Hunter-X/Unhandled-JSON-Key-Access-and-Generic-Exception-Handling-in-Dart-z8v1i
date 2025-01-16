```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final someKey = jsonData['someKey'];
      if (someKey != null) {
        print(someKey);
      } else {
        print('Key 
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(
      const MaterialApp(
        home: DataConnection(),
      )
  );
}

class DataConnection extends StatefulWidget {
  const DataConnection({super.key});

  @override
  State<DataConnection> createState() => _DataConnectionState();
}

class _DataConnectionState extends State<DataConnection> {
  final Dio dio = Dio();
  List<dynamic> books = [];

  final TextEditingController titleController = TextEditingController();
  final TextEditingController authorController = TextEditingController();

  Future<void> fetchBooks() async {
    try {
      final response = await dio.get('http://10.222.97.57:5001/books');
      setState(() {
        books = response.data;
      });
    } catch (e) {
      print('GET 오류: $e');
    }
  }

  Future<void> addBook() async {
    try {
      await dio.post(
        'http://10.222.97.57:5001/books',
        data: {
          'title': titleController.text,
          'author': authorController.text,
        },
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      titleController.clear();
      authorController.clear();
      fetchBooks();
    } catch (e) {
      print('POST 오류: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BOOOOOOOOOK"),),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Book Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: authorController,
              decoration: InputDecoration(
                labelText: 'Author',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: addBook,
              child: Text('Add Book'),
            ),
            const Divider(height: 40,),
            const Text("Book List", style: TextStyle(fontSize: 20),),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(books[index]['title']),
                    subtitle: Text(books[index]['author']),
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}
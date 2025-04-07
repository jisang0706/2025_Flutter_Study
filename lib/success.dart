import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  final String id;
  final String password;
  final String email;

  const Success({
    super.key,
    required this.id,
    required this.password,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('가입 완료'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: $id', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Password: $password', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('E-Mail: $email', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
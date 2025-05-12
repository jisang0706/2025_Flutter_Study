import 'package:flutter/material.dart';

import 'success.dart';

void main() {
  runApp(MaterialApp(
      home: const Learn()
  ));
}

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  double _buttonTopPadding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: const [
              Color(0xFFF11FFF),
              Color(0xFF1976D2),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("회원가입 페이지"),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(controller: _idController,
                decoration: InputDecoration(labelText: "ID"),),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(controller: _emailController,
                decoration: InputDecoration(labelText: "E-mail"),),
            ),
            SizedBox(height: 500,),
            AnimatedPadding(
              duration: Duration(milliseconds: 50),
              padding: EdgeInsets.only(top: _buttonTopPadding),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFF11FFF), Color(0xFF1976D2)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _buttonTopPadding += _buttonTopPadding > 120? -30 : 30;
                    });
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Success(
                      id: _idController.text,
                      password: _passwordController.text,
                      email: _emailController.text,
                    ), ));
                  },
                  child: const Text("회원가입", style: TextStyle(color: Colors.black),),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "홈",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.html),
              label: "내정보",
            ),
          ],
      ),
    );
  }
}

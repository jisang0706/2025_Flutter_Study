import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: InstagramExample(),
    )
  );
}

class InstagramExample extends StatelessWidget {
  const InstagramExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Image.asset(
                'assets/images/instagram.png',
                width: 99,
                height: 33,
                fit: BoxFit.contain,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 5),
                child: Icon(Icons.heart_broken)
            ),
            Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(Icons.message)
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                story(),
              ],
            ),
          ),
            Column(
              children: [
                post(),
                LayoutBuilder(
                  builder: (context, constraints) {
                    return Image.asset(
                      'assets/images/profile.png',
                      width: constraints.maxWidth,
                      height: constraints.maxWidth,
                      fit: BoxFit.cover,
                    );
                  },
                ),
                Icon(Icons.list_outlined),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 5),
                      child: Icon(Icons.heart_broken),
                    ),
                    Text("0"),
                    Padding(padding: EdgeInsets.only(left: 5),
                      child: Icon(Icons.comment),
                    ),
                    Text("0"),
                    Padding(padding: EdgeInsets.only(left: 5),
                      child: Icon(Icons.message),
                    ),
                    Text("0"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                    child: Text("dkdkdkdkdkdkdkdkdkdkdkdkdkkdkdkdkddkdkdkdkdkdkdkdkdkdkkddkdkdkkdkdkdkdk")),
              ],
            )
        ]
        ),
      ),
    );
  }
}

Widget story() {
  return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/profile.png',
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
      ]
  );
}

Widget post() {
  return Row(
    children: [

      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Image.asset(
          'assets/images/profile.png',
          width: 40,
          height: 40,
          fit: BoxFit.contain,
        ),
      ),
      Text("w_ltkd"),
      Spacer(),
      Icon(Icons.density_medium)
    ],
  );
}
import 'package:assignment_1/image_container.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Flutter"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImageContainer(imagePath: 'assets/image.jpg'),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hello World!!",
              style: TextStyle(
                fontFamily: 'Anton',
                fontSize: 40,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Text can wrap without issue",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                const Text(
                  "My name is Muhammad Ali Raza Dar and I'm really excited about this course.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const Divider(
                  color: Colors.grey, // Set the color of the divider
                  thickness: 1, // Set the thickness of the divider
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Flutter text is '),
                      TextSpan(
                        text: "really ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          decorationColor: Colors.red,
                          decorationThickness: 2,
                        ),
                      ),
                      TextSpan(
                        text: 'powerful',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.red,
                          decorationThickness: 2,
                          fontSize: 32,
                        ),
                      ),
                      TextSpan(text: '.', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

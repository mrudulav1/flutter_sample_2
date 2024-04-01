import 'package:flutter/material.dart';

main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: ScreenHome(),
    );
  }
}

class ScreenHome extends StatefulWidget {
   ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
    final _textController= TextEditingController();

    String _displayText='text will be displayed here..';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
              // left: 20,
              // right: 20,
              // top: 20,
              // bottom: 20,
            
            child: Container(
              color: Colors.purple[100],
              child: Column(
                children: [
                  TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type Something here....'
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //get data
                      print(_textController.text);
                      setState(() {
                        _displayText=_textController.text;
                      });
                      
                    },
                    child: Text('Click here'),
                  ),
                  Text(_displayText),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

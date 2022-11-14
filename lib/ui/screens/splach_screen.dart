import 'package:flutter/material.dart';
import 'package:todo_db_provider/ui/screens/todo_main_screen.dart';

class SplachScreen extends StatefulWidget {
  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  navigationMethod() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return TodoMainScreen();
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigationMethod();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.list,
          size: 50,
        ),
      ),
    );
  }
}

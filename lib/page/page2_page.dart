import 'package:flutter/material.dart';


class TwoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2')
      ),
      body: Column(
        children: [
          MaterialButton(
            child: Text('Set user', style: TextStyle(color: Colors.white),),
            color: Colors.blue,
            onPressed: () {
              
            },
          ),
          MaterialButton(
            child: Text('Set age', style: TextStyle(color: Colors.white),),
            color: Colors.blue,
            onPressed: () {
              
            },
          ),
          MaterialButton(
            child: Text('Add profession', style: TextStyle(color: Colors.white),),
            color: Colors.blue,
            onPressed: () {
              
            },
          )
        ],
      )
   );
  }
}
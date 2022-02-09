import 'package:flutter/material.dart';

class SeconScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Press Any Button',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        title: Text('Alert'),
                        content: Text('Alert Dialog'),
                      );
                    });
              },
              child: Container(
                alignment: const Alignment(0, 0),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: const Text(
                  'Alert Dialog',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('hello!..'),
                    action:SnackBarAction(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      label: 'undo',
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment(0, 0),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: const Text(
                  'Snake bar',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

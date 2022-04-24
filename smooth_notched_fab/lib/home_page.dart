import 'package:circular_notched_fab/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: const Center(child: Text("Awesome")),
      floatingActionButton: Container(
        height: 64,
        width: 64,
        child: FittedBox(
          
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue[500],
            elevation: 5,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 15, 60, 0),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                children: const [
                  Icon(
                    Icons.home,
                    size: 24,
                  ),
                  Text("Home")
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(60, 15, 60, 0),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                children: const [
                  Icon(
                    Icons.supervised_user_circle,
                    size: 24,
                  ),
                  Text("Profile")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

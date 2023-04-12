import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resource/bottom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text('Drawer Header'),
      ),
      ListTile(
        title: const Text('Item 1'),
        onTap: () {
           Navigator.pop(context);
        },
      ),
      ListTile(
        title: const Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search))
        ],
        title:  Text(DateTime.now().toString()),
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalendarDatePicker(
                      initialDate: DateTime.now(), 
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2099), 
                      onDateChanged: (value){}),
                  ),
                
                ],
              ),
                Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: double.infinity,
                color: Colors.blue,
                child: const Text("Hoy")),
                
            ],
          ),
          
               Positioned(right:MediaQuery.of(context).size.width * 0.20 ,top: MediaQuery.of(context).size.height * 0.75 ,child: const CustomButtonNavigationBar()),
          ],
        ),
      ),
    );
  }
  
}
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.circular(20)
              ),
                child: Row( 
                  children:[
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20),
                    child: Icon(Icons.travel_explore, color: Colors.white  ),
                    ),
                  Text('Teavelling',
                  style: TextStyle (color: Colors.white, fontSize: 25),
                  ),],
                  
                
              ),
            ),


          ],
        ),
        ),
      ),
  ),
);

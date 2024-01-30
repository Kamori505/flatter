import 'package:flutter/material.dart';

import '../components/vidget1.dart';



class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
          Column(
            children: <Widget> [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index){
                        return Widget1() ;
                      }
                    ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index){
                        return Widget1() ;
                      }
                    ),
              ),
            ],
          ),
    );
  }
}
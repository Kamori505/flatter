
import 'package:flutter/material.dart';
import 'package:flutter_application_1/var.dart';




// ignore: must_be_immutable
class Human extends StatelessWidget {
  Human({super.key, required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( 
        border: Border.all(
                color: Colors.black,
                width: 2,
            ),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: 24, top: 8),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.2,
            child: Image.network(url),
            //color: Colors.amber,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.45,
            //color: Colors.pink,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: const EdgeInsets.all(4),
                  child: Text(
                    "${favorite[index].name}",
                    style: const TextStyle(fontSize: 24),
                  ),
                  //color: Colors.purple,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.023,
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: const EdgeInsets.all(4),
                  child: Text(
                    "${favorite[index].name}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  //color: Colors.purple,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.023,
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: const EdgeInsets.all(4),
                  child: Text(
                    "${favorite[index].price}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  //color: Colors.purple,
                ),
              ],
            ),
          ),
        
          
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/people.dart';
import 'package:flutter_application_1/var.dart';



class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => Page();
}



// ignore: must_be_immutable
class Page extends State<FirstPage> {
var MainColor= Color.fromRGBO(54, 120, 167, 1);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColor,
        title: const Center(
          child: Text('GiftShop',
          style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
      body: Container(
        //color: Colors.red,
        child: Column(
          children: <Widget> [
          Expanded(
          flex: 1,
        child: Column(
          children: <Widget>[
            //
            
            Expanded(
              flex:1,
              //height: MediaQuery.of(context).size.height * 0.05,
              //color: Colors.black,
              child: Center(
                child: Container( //finder
                child: Row(children: <Widget> [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Expanded(
                    flex:1,
                   child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const TextField(
                    textAlign: TextAlign.center ,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 22
                ),
                    decoration: InputDecoration(             
                        border: OutlineInputBorder(), hintText: 'Поиск',                    
                        ),
                  ),
                ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                ]
                )
                ),
              ),
            ),


            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.98,
              //color: Colors.amber,
              child:
                  Center(
                    child:Container( 
                      width: MediaQuery.of(context).size.width * 1,
                      child:Container(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 1,
                        child: ListView.builder(
                            itemCount: people.length,
                            itemBuilder: (BuildContext context, index) {
                              return Human(index: index);
                            }
                            )
                            )
                            )
                  ),
            ),
          ],
        ),
        ),
        ],
        ),
      ),    
    );
  }
}
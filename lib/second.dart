
import 'package:flutter/material.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/people.dart';
import 'package:flutter_application_1/var.dart';


class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appbar
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(48, 84, 120, 1),
        title: const Center(
          child: Text('DearPerson',
          style: TextStyle(
              color: Color.fromARGB(252, 238, 216, 16),
              fontSize: 32,
              fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),


      // body
      body: 
      // full screen
      Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[

            // top text
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: const Center(
                child: Text('Список избранного:',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24
                ),
                )
                )
            ),
          
            // center
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 0.98,
              //color: Colors.amber,
              child:
                  Center(

                    // the length of the list
                    child: Container(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 1,
                        child: ListView.builder(
                            itemCount: favorite.length,
                            itemBuilder: (BuildContext context, index) {
                              return Human(index: index);
                            }
                            )
                          ),
                    ),     
            ),

            // bottom bar
         Container(
              height: MediaQuery.of(context).size.height * 0.075,
              color: const Color.fromRGBO(48, 84, 120, 1),
              child: Row(
                children: <Widget> [

                  // home page
                  Container(
                   height: MediaQuery.of(context).size.height * 0.075, 
                   width: MediaQuery.of(context).size.width * 0.5,
                   color: const Color.fromRGBO(48, 84, 120, 1),
                  child: Center(
                    child:  TextButton( 
                      child: const Icon(
                        Icons.home,
                        color: Color.fromARGB(252, 238, 216, 16),
                       ),
                     onPressed: () => {  Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const FirstPage()),
                     )
                     },           
                    ),
                   )
                  ),

                  // favorite
                  Container(
                    height: MediaQuery.of(context).size.height * 0.075, 
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: const Color.fromRGBO(48, 84, 120, 1),
                    child: Center(
                      child:  TextButton( 
                       child: const Icon(
                          Icons.favorite,
                          color: Color.fromARGB(252, 238, 216, 16),
                           ),
                       onPressed: () => {  Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const Second ()),
                              )
                              },
                    ),      
                   )                
                  ),
                ]
              )   
            ),
          ]
      )
    )
    );
  }
}
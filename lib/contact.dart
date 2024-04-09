
import 'package:flutter/material.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/second.dart';
import 'package:flutter_application_1/var.dart';

// ignore: must_be_immutable
class Contact extends StatelessWidget {
   Contact({super.key, required this.index});

int index;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 124, 180, 236),
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


                body: Container(
                        color: const Color.fromARGB(255, 116, 30, 30),
                        child: Column( children: <Widget> [
                          SizedBox(height: MediaQuery.of(context).size.height * 0.022),

                          // image
                          Container( 
                            height: MediaQuery.of(context).size.height * 0.2,
                            //color: Colors.black,
                            child: Center(
                               child: Image.network(url),
                            ),
                          ),

                          SizedBox(height: MediaQuery.of(context).size.height * 0.022),

                          //name
                          Container( 
                            height: MediaQuery.of(context).size.height * 0.07,
                            //color: Colors.black,
                            child: Center(
                              child: Text(
                         
                    "${product[index].name}",
                    style: const TextStyle(fontSize: 32,

                    ),
                  ),
                            ),
                          ),
                      

                          // phone number
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            //color: Colors.black,
                            child: Center(
                               child: Text(
                                  "${product[index].name}",
                                  style: const TextStyle(fontSize: 20),
                            ),
                            ),
                          ),



                          // birthday
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            // color: Colors.black,
                            child: Center(
                              child: Text(
                    "${product[index].price}",
                    style: const TextStyle(fontSize: 18),
                  ),
                            ),
                          ),

                           // description
                          Container(
                             height: MediaQuery.of(context).size.height * 0.05,
                             // color: Colors.amber,
                             child: const Row(
                               children: <Widget> [
                                SizedBox(
                                  width: 10,
                                ),
                                 Align(
                                  alignment: Alignment.bottomLeft,
                                 child:  Text(
                                  style: TextStyle(
                                     fontSize: 18,
                                  ),
                                  "Описание:",
                                   ),
                                 ),
                               ],
                             ),
                          ),

                          // description field
                          Container(
                            height: MediaQuery.of(context).size.height * 0.36,
                           //  color: Colors.black,
                            child: const TextField(
                              textAlign: TextAlign.center ,
                              textAlignVertical: TextAlignVertical.bottom,
                              style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 24
                          ),
                              decoration: InputDecoration(             
                                  border: OutlineInputBorder(), 
                                  hintText: 'Пишите здесь',      
                                  contentPadding: EdgeInsets.symmetric(vertical: 120),              
                                  ),
                            ),
                          ),


                          //SizedBox(height: MediaQuery.of(context).size.height * 0.1),

                              // bottom bar
                                Container(
                                     height: MediaQuery.of(context).size.height * 0.0815,
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
                        ),     
                ),
                        ]
                        )
                )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/var.dart';



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
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.8,

     child: Column(
      children: <Widget>[

        Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 1,
                  //color: Colors.black,
                  child: Row(
                    children: <Widget>[
                            Container(
                          width: MediaQuery.of(context).size.width * 0.05,
                          //color: Colors.black,
                                      ),

          Expanded(
                   flex: 1,
                   child:  Container(
                                    //color: Colors.blue,
                                       child: Text(
                                                  "${people[index].name}",
                                                  style: const TextStyle(fontSize: 24),
                                                  ),
                                     ) 
                  ),



          Container(
                    width: MediaQuery.of(context).size.width * 0.11,
                    child: Center(
                    child: IconButton(
                                      onPressed: () {favorite.add(people[index],
                                      );
                                      },
                                      icon: const Icon(
                                      size: 27,
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      )
                                      ),
                                  )
                   ),

                     Container(
                              width: MediaQuery.of(context).size.width * 0.05,
                              //color: Colors.black,
                      ),


                    ],
                  ),
        ),

        Container(
                   height: MediaQuery.of(context).size.height * 0.19,
                   width: MediaQuery.of(context).size.width * 1,
                   //color: Colors.black,
                   child: Row(
                              children: <Widget>[

                                 Container(
                                           width: MediaQuery.of(context).size.width * 0.05,
                                           //color: Colors.red,
                                          ),

                                 Container(
                                           width: MediaQuery.of(context).size.width * 0.35,
                                           color: Colors.red,
                                           child: Image.network(url),
                                          ),  

                                  Container(
                                           width: MediaQuery.of(context).size.width * 0.04,
                                           //color: Colors.red,
                                          ),   

                                  Container(
                                           width: MediaQuery.of(context).size.width * 0.45,
                                           height: MediaQuery.of(context).size.width * 1,
                                           //color: Colors.red,
                                           child: Column(
                                                        children: <Widget>[

                                                          Container(
                                                                     width: MediaQuery.of(context).size.width * 0.45,
                                                                     height: MediaQuery.of(context).size.width * 0.06,
                                                                     //color: Colors.green,
                                                                      child: Text(
                                                                                  "${people[index].cost}",
                                                                                  style: const TextStyle(fontSize: 22),
                                                                                  ),
                                                          ),

                                                          Container(
                                                                     width: MediaQuery.of(context).size.width * 0.45,
                                                                     height: MediaQuery.of(context).size.width * 0.24,
                                                                     //color: Colors.black,
                                                                      child: Text(
                                                                                  "${people[index].phone}",
                                                                                  style: const TextStyle(fontSize: 14),
                                                                                  ),
                                                          ),

                                                          Container(
                                                                     width: MediaQuery.of(context).size.width * 0.45,
                                                                     height: MediaQuery.of(context).size.width * 0.1,
                                                                      decoration: BoxDecoration(                                                                           
                                                                                               borderRadius: BorderRadius.circular(16),
                                                                                               color: Color.fromRGBO(54, 120, 167, 1),
                                                                                                ),
                                                                      
                                                          ),
                                                        ],
                                                        ),
              
                                          ),    

                                  Container(
                                           width: MediaQuery.of(context).size.width * 0.05,
                                           //color: Colors.red,
                                          ),                        

                              ],
                             ),
        )







      ],
     ),
   );
       
  }
}
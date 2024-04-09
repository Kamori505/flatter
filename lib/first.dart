
import 'package:flutter/material.dart';
import 'package:flutter_application_1/product.dart';
import 'package:flutter_application_1/favorite.dart';
import 'package:flutter_application_1/var.dart';



class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => Page();
}



class Page extends State<FirstPage> {
var MainColor= Color.fromRGBO(191, 218, 237, 1);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColor,
        title: const Center(
          child: Text('Магазин',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 32,
              fontWeight: FontWeight.bold
          ),
          ),
          
        ),
      ),
      body: Container( ////Задний фон
        color: Colors.red,
        child: Column(
          children: <Widget> [
          Expanded(
          flex: 1,
        child: Column(
          children: <Widget>[
            
            Expanded(
              flex:1,
              child: Center(
                child: Container( //Задний фон поиска
                color: const Color.fromARGB(255, 160, 84, 78),
                child: Row(children: <Widget> [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Expanded(
                    flex:1,
                   child: Container(//Кнопка поиска
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 253, 253, 253),
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

                  Container(//Переход в избранное
                    color: const Color.fromARGB(255, 56, 46, 45),
                    width: MediaQuery.of(context).size.width * 0.10,
                  ),
                ]
                )
                ),
              ),
            ),


            Container( //Задний фон вывода
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.98,
              color: Colors.amber,
              child:
                  Center(
                    child:
                    Container( 
                          color: Color.fromARGB(255, 7, 7, 8),
                          width: MediaQuery.of(context).size.width * 1,
                          child:Container(
                            color: Colors.green,
                            width: MediaQuery.of(context).size.width * 1,
                            child: ListView.builder(
                                itemCount: product.length,
                                itemBuilder: (BuildContext context, index) {
                                  return ProductCard2(index: index);
                                }
                                )
                                )
                                ),
                  ),
            ),
            Container(//Нижняя панель для перехода по разделам
              height: MediaQuery.of(context).size.height * 0.075,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Row(
                children: <Widget> [

                  // Переход на главный экран
                  Container(
                   height: MediaQuery.of(context).size.height * 0.075, 
                   width: MediaQuery.of(context).size.width * 0.5,
                   color: Color.fromARGB(255, 255, 255, 255),
                  child: Center(
                    child:  TextButton( 
                      child: const Icon(
                        Icons.home,
                        color: Color.fromARGB(251, 0, 0, 0),
                       ),
                     onPressed: () => {  Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const FirstPage()),
                     )
                     },           
                    ),
                   )
                  ),

                  // Пееход на экран избранного
                  Container(
                    height: MediaQuery.of(context).size.height * 0.075, 
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Center(
                      child:  TextButton( 
                       child: const Icon(
                          Icons.favorite,
                          color: Color.fromARGB(251, 0, 0, 0),
                           ),
                       onPressed: () => {  Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const Favorite ()),
                              )
                              },
                    ),      
                   )                
                  ),
                ]
              )   
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
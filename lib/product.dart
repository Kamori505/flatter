
import 'package:flutter/material.dart';
import 'package:flutter_application_1/var.dart';



class ProductCard2 extends StatefulWidget {
  ProductCard2({super.key, required this.index});
  int index;
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard2> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        // Добавить продукт в избранное
         favorite.add(product[widget.index]);
      } else {
        // Удалить продукт из избранного
         favorite.remove(product[widget.index]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child:  Image.network(url),
              ),
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
                onPressed: toggleFavorite,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "${product[widget.index].name}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "${product[widget.index].description}",
                ),
                SizedBox(height: 4),
                Text(
                  "${product[widget.index].price}",
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "${product[widget.index].rating}",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Image.network(url),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "${product[index].name}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "${product[index].price}",
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Products extends StatelessWidget {
  Products({super.key, required this.index});
  int index;
  //late Color _iconColor;

  //@override
  //void initState(){
    //Начальное значение цвета иконки
  //  _iconColor = Colors.grey;
  //}

  @override
  Widget build(BuildContext context) {
    return Container(//Основной контейнер
      decoration: BoxDecoration( //Обводка котейнера
        border: Border.all(
                color: const Color.fromARGB(255, 211, 211, 211),
                width: 1,
            ),
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 214, 213, 213),
      ),
      margin: const EdgeInsets.only(bottom: 10, top: 10),//Отступы
      height: MediaQuery.of(context).size.height * 0.5,//Высота
      width: MediaQuery.of(context).size.width * 0.5,//Длинна

     child: Column(
      children: <Widget>[

        Container(//основного контейнера
                   height: MediaQuery.of(context).size.height * 0.5,
                   width: MediaQuery.of(context).size.width * 1,
                   color: Color.fromARGB(255, 155, 131, 131),
                   child: Column(
                              children: <Widget>[

                                 Container(//Изображение
                                           width: MediaQuery.of(context).size.width * 0.35,
                                           color: Color.fromARGB(255, 9, 193, 61),
                                           child: Image.network(url),
                                          ),  
  

                                  Container(//Контейнер справа от фото
                                           width: MediaQuery.of(context).size.width * 0.45,
                                           height: MediaQuery.of(context).size.width * 1,
                                           color: Colors.red,
                                           child: Column(
                                                        children: <Widget>[

                                                          Container(//Контейнер для цены
                                                                     width: MediaQuery.of(context).size.width * 0.45,
                                                                     height: MediaQuery.of(context).size.width * 0.06,
                                                                     color: Colors.green,
                                                                      child: Text(
                                                                                  "${product[index].price}",
                                                                                  style: const TextStyle(fontSize: 22),
                                                                                  ),
                                                          ),

                                                          Container(//Для описания
                                                                     width: MediaQuery.of(context).size.width * 0.45,
                                                                     height: MediaQuery.of(context).size.width * 0.24,
                                                                     color: const Color.fromARGB(255, 246, 234, 234),
                                                                      child: Text(
                                                                                  "${product[index].description}",
                                                                                  style: const TextStyle(fontSize: 14),
                                                                                  ),
                                                          ),

                                                          Container(//Контейнер для кнопки купить
                                                                     width: MediaQuery.of(context).size.width * 0.45,
                                                                     height: MediaQuery.of(context).size.width * 0.1,
                                                                      decoration: BoxDecoration(                                                                           
                                                                                               borderRadius: BorderRadius.circular(16),
                                                                                               color: Color.fromRGBO(239, 229, 52, 1),
                                                                                                ),
                                                                      
                                                          ),
                                                        ],
                                                        ),
              
                                          ),    

                                  Container(
                                           width: MediaQuery.of(context).size.width * 0.05,
                                           color: Colors.red,
                                          ),                        

                              ],
                             ),
        ),
        Container(//Верхняя панель , избранное ,название
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 1,
                  color: const Color.fromARGB(255, 251, 159, 159),
                  child: Row(
                    children: <Widget>[
                            Container(//Контейнер для отступа под название
                          width: MediaQuery.of(context).size.width * 0.05,
                          color: Colors.black,
                                      ),

          Expanded(//Название
                   flex: 1,
                   child:  Container(
                                    color: Colors.blue,
                                       child: Text(
                                                  "${product[index].name}",
                                                  style: const TextStyle(fontSize: 24),
                                                  ),
                                     ) 
                  ),



          Container(//Кнопка добавления в избранное
                    width: MediaQuery.of(context).size.width * 0.11,
                    child: Center(
                    child: IconButton(
                                      icon: const Icon(
                                      size: 27,
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                      ),
                                      onPressed: () {
                                      favorite.add(product[index],);
                                    
                                      },
                                      ),
                                  )
                   ),

                     Container(//Для отступа иконки избранного
                              width: MediaQuery.of(context).size.width * 0.05,
                              color: Colors.black,
                      ),


                    ],
                  ),
        ),







      ],
     ),
   );
       
  }
}
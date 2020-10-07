import 'package:flutter/material.dart';

class HotelsPage extends StatefulWidget {
  @override
  _HotelsPageState createState() => _HotelsPageState();
}

class _HotelsPageState extends State<HotelsPage> {
  String _textDescription = "Este resort amplo e totalmente para não fumantes se estende por uma área de 400000 m² e oferece quartos modernos com ar-condicionado e TV a cabo. As instalações incluem piscinas coberta e ao ar livre, academia e spa.\n\nTodos os quartos do Bourbon Atibaia Spa Resort contam com frigobar e banheiro no quarto.";  
  
  @override
  Widget build(BuildContext context) {
    

        return Scaffold(
          appBar: AppBar(
            title: Text("Titulo do hotel"),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(right: 20, left: 20, top: 8),
            child: Column(
              children: <Widget>[
                photoAlbum(),
                
                Padding(
                  padding: const EdgeInsets.only(top:15, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Bourbon Atibaia Resort', style: TextStyle(color: Colors.grey[700], fontSize: 24, fontWeight: FontWeight.bold),),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.grey,),
    
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text('4.5' ,style: TextStyle(color: Colors.grey[700], fontSize: 18, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
    
                Expanded(
                  child: Text( _textDescription,  
                  maxLines: 20,
                  style: TextStyle(color: Colors.grey[700], fontSize: 14,),
                  textAlign: TextAlign.justify,),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.deepOrangeAccent,
                          onPressed: (){
                            print('Reservou');
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Text("Reservar",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
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

Widget photoAlbum(){
  return Row(
    children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image(
          width:250,
          height: 250,
          image: NetworkImage(
            'https://cf.bstatic.com/images/hotel/max1024x768/524/52448132.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      
      Expanded(
        child: Column(
          children: <Widget>[
        
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  width: 75,
                  height: 75,
                  image: NetworkImage(
                    'https://cf.bstatic.com/images/hotel/max1024x768/432/43217622.jpg', 
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  width: 75,
                  height: 75,
                  image: NetworkImage(
                    'https://cf.bstatic.com/images/hotel/max1024x768/432/43217622.jpg', 
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  width: 75,
                  height: 75,
                  image: NetworkImage(
                    'https://cf.bstatic.com/images/hotel/max1024x768/432/43217622.jpg', 
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ],
        ),
      ),
    ],
  );
}
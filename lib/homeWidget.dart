
import 'package:flutter/material.dart';
import 'package:melhores_hoteis/pages/allHotelsPage.dart';

import 'components/formSearchHotels.dart';
import 'components/hotelsItem.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  void _openAllHotelsPage(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => AllHotelsPage())
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Melhores Hotéis"),
        actions: <Widget>[
          Icon(Icons.notifications_none)
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(right: 20, left: 20, top: 8),
        child: SingleChildScrollView(
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              formSearchHotels(),
              
               
              Column(
                children: <Widget>[
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Ultimos visualizados', 
                        style: TextStyle(color: Colors.grey[700], fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      FlatButton(
                        onPressed: (){
                          _openAllHotelsPage();
                        },
                        child:Text('VER TODOS',
                          style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        
                      ),
                      
                    ],
                  ), 


                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 280,
                          // width: 900,
                          child: new ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 6,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return new  HotelsItem(
                                  imageUrlHotel: "https://cf.bstatic.com/images/hotel/max1024x768/524/52448132.jpg",
                                  locationHotel: "São Paulo - Brasil",
                                  priceHotel: "80,00",
                                  titleHotel: "Bourbon Atibaia Resort",
                                );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}

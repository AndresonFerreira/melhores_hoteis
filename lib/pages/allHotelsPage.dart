
import 'package:flutter/material.dart';
import 'package:melhores_hoteis/components/hotelsItem.dart';

class AllHotelsPage extends StatefulWidget {
  @override
  _AllHotelsPageState createState() => _AllHotelsPageState();
}

class _AllHotelsPageState extends State<AllHotelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ultimos Hotéis visualizados"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index){
            return HotelsItem(
              imageUrlHotel: "https://cf.bstatic.com/images/hotel/max1024x768/524/52448132.jpg",
              locationHotel: "São Paulo - Brasil",
              priceHotel: "80,00",
              titleHotel: "Bourbon Atibaia Resort",
              );
          }
        ),
      ),
    );
  }
}

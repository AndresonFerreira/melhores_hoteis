
import 'package:flutter/material.dart';
import 'package:melhores_hoteis/pages/hotelsPage.dart';

class HotelsItem extends StatelessWidget {

  final String imageUrlHotel;  
  final String titleHotel;  
  final String locationHotel;  
  final String priceHotel;

  const HotelsItem({Key key, this.imageUrlHotel, this.titleHotel, this.locationHotel, this.priceHotel}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(imageUrlHotel),
      title: Text(titleHotel),
      subtitle: Text(locationHotel, style: TextStyle(fontSize: 14,)),

      trailing: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(5.0))
        ),
        child: Text('R\$ $priceHotel \n / noite', style: TextStyle(color: Colors.white, fontSize: 14,), textAlign: TextAlign.center, ),
      ),
      
      onTap: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => HotelsPage())
          );
        },
      );

      
  }
}
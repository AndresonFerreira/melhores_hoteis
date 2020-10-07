import 'package:flutter/material.dart';

Widget formSearchHotels(){
  
  TextEditingController localController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  return Column(
    children: <Widget>[
      
      Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Text('Olá Andreson,' ,style: TextStyle(color: Colors.grey, fontSize: 18),),
            Text('Ache os Melhores Hotéis', style: TextStyle(color: Colors.grey[700], fontSize: 24, fontWeight: FontWeight.bold),),
            ],
            
        )
      ),
      
      Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      // local
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Local",
                          labelStyle: TextStyle(color:Colors.grey[700]),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                        controller: localController,
                        validator: (valor){
                          if(valor.isEmpty){
                            return "insira o local!";
                          }
                          return null;
                        },
                      ),

                      // data
                      TextFormField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          labelText: "Data",
                          labelStyle: TextStyle(color:Colors.grey[700]),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                        validator: (valor){
                          if(valor.isEmpty){
                            return "insira a Data!";
                          }
                          return null;
                        },
                      ),
                      
                      
                      // QTD hospedes
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Pessoas",
                          labelStyle: TextStyle(color:Colors.grey[700]),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                        validator: (valor){
                          if(valor.isEmpty){
                            return "insira a quantidade de Pessoas!";
                          }
                          return null;
                        },
                      ),


                      // valor
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Valor máximo",
                          labelStyle: TextStyle(color:Colors.grey[700]),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                        validator: (valor){
                          if(valor.isEmpty){
                            return "insira o valor!";
                          }
                          return null;
                        },
                      ),
                      //btn
                      Container(
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
                                if(_formKey.currentState.validate()){
                                  print('pesquisou');
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20, bottom: 20),
                                child: Text("Pesquisar",
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ),
               



    ],
  );
}



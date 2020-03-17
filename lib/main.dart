import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController n1 =new TextEditingController();

  TextEditingController n2 =new TextEditingController();
  double nota1,nota2,r_nota1,r_nota2;
  double nota3 =0.0,nota_parcial=0.0;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Notas")
        ),
        body:Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
            _crearInputs(),
            _crearButton(),
            
            ],
          ),
        )
        )
      ),
    );
  }

Widget _crearInputs(){
final campos = Column(
  children: <Widget>[
  TextField(
    controller: n1,
                decoration: InputDecoration(
                  hintText: "Digite la nota 1",
                  labelText: "nota 1 - 30%",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                ),keyboardType:TextInputType.number
              ),
              Container(
                height: 10.0,
              ),
              TextField(
                controller: n2,
                decoration: InputDecoration(
                  hintText: "Digite la nota 2",
                  labelText: "nota 2 - 30%",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                ),keyboardType:TextInputType.number
              ),
              Container(
                height: 10.0,
              ),
              Text("Lo minimo en la nota 3 tiene que ser: $nota3")
  ],
);return campos;
}

Widget _crearButton(){
  return Row(children: <Widget>[
    Expanded(child: RaisedButton(
              child: Text("Calcula"),
              onPressed: (){
                print("tap");
                setState(() {
                  nota1 = double.parse(n1.text);
                  nota2 =double.parse(n2.text);
                  r_nota1= nota1 * (0.3); r_nota2 = nota2* (0.3);
                  nota_parcial= 3.0-(r_nota2+r_nota1);
                  nota3= nota_parcial*(40/100);
                });
                
              }
            ))
  ],);
}
}

import 'package:edspertid_tugas_bmi/constant/colors.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
         "kalkulasi BMI",
         style: TextStyle(color:accentHexColor,fontWeight: FontWeight.w300),
        ),
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 130,
              child: TextField(
                controller: _heightController,
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color: accentHexColor
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Tinggi",
                  hintStyle: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(.8)
                  )
                ),
              ),
            ),
            Container(
              width: 130,
              child: TextField(
                controller: _weightController,
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w300,
                  color: accentHexColor
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Berat",
                  hintStyle: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(.8)
                  )
                ),
              ),
            )


          ],
        ),
        SizedBox(height: 30,),
        GestureDetector(
          onTap: (){
            double _h = double.parse(_heightController.text)/100;
            double _w = double.parse(_weightController.text);
            setState(() {
              _bmiResult = _w / (_h * _h);
              if(_bmiResult>25){ _textResult="Kamu kelebihan berat badan";}
              else if(_bmiResult >= 18.5 && _bmiResult <= 25){_textResult = "Berat badan kamu normal";}
              else{_textResult="Kamu kekurangan berat badan";}
            });

          },
          child: Text("Hitung",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: accentHexColor),),
        ),
        
        SizedBox(height: 50,),
        Container(
          child: Text(_bmiResult.toStringAsFixed(2),style: TextStyle(fontSize: 90,color: accentHexColor),),
        ),
     
     SizedBox(height: 30,),
        Container(
          child: Text(_textResult,style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400 ,color: accentHexColor),),
        ),

     
      ]),)

    );
  }
}
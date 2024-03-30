import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget{
  
  const CurrencyConvertorMaterialPage({super.key});
  @override
  State<CurrencyConvertorMaterialPage> createState()=>_CurrencyConvertorMaterialPageState();
}
class _CurrencyConvertorMaterialPageState extends State<CurrencyConvertorMaterialPage>{
  double result=0;
  @override
 Widget build(BuildContext context) {
    
    final TextEditingController textEditing=TextEditingController();
    return Scaffold(
      appBar: AppBar(
backgroundColor: const Color.fromARGB(255, 26, 7, 51),
title: const Text("Currency Convertor",style: TextStyle(color: Colors.white,fontSize: 13),),
centerTitle: true,


      ),
      drawer:const Drawer(
        backgroundColor: Colors.black,

        child: Center(child: Text("MADE BY ROHIT TANWAR",style: TextStyle(color: Colors.white,fontSize:15
        ),
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

               
            Container(
              padding: const EdgeInsets.all(10),

              margin: const EdgeInsets.all(10),
              // Add padding if necessary
              // Set container color as per requirement
              
              
              child:
              
               Text(
                result.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Color.fromARGB(255, 225, 0, 255),
                ),
              ),
            ),
             Padding(
              padding:const EdgeInsets.all(8.0),
              child:TextField(
                controller: textEditing,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in INR',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: Icon(Icons.attach_money_outlined),
                  prefixIconColor: Color.fromARGB(255, 225, 0, 255),
                  filled: true,
                  fillColor: Color.fromARGB(255, 0, 0, 0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                
                 
                setState(() {
                   result =double.parse(textEditing.text)*84;
                });
                },
                style: ElevatedButton.styleFrom(  elevation: (14),
                    backgroundColor:  Colors.black,
                    foregroundColor:const  Color.fromARGB(255, 180, 15, 202),
                    fixedSize: const Size(100, 50),
                    shape:const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),
             
splashFactory:NoSplash.splashFactory,
),

                    
                child: const Text("Convert"),
                ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 26, 7, 51),
    );
  }
}





// class CurrencyConvertorMaterialPagee extends StatelessWidget {
//   const CurrencyConvertorMaterialPagee({super.key});



//   @override
 
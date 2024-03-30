
import 'package:currency_convertor/currency_convertor_material_page.dart';
import 'package:flutter/material.dart';

void main(){
runApp(const Rohit());

}

class Rohit extends StatelessWidget{
  const Rohit({super.key});
@override
Widget build (BuildContext context){
return const MaterialApp(
  title: "CURRENCY CRASH",
  home:CurrencyConvertorMaterialPage(), 
  
);

}
}
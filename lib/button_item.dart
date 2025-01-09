import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonItem extends StatelessWidget {
  String numbersAndOperator;
String buttonContent;
Color colorOfButton;
int flexAmount;
bool isEqualButton;
void Function(String) onPressed;
ButtonItem({required this.buttonContent,required this.colorOfButton,required this.onPressed,this.flexAmount=1,this.isEqualButton=false, this.numbersAndOperator="_"});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:flexAmount,
      child: Padding(
        padding:isEqualButton? const EdgeInsets.only(bottom: 20,left: 20): const EdgeInsets.only(bottom: 20),
        child: ElevatedButton (

        style:ElevatedButton.styleFrom(
          backgroundColor: colorOfButton,


          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)

          )


        ),

        onPressed:(){
          onPressed(numbersAndOperator);
        },
        child: SvgPicture.asset("assets/icons/${buttonContent}.svg",),
           ),
      ),
    );
  }
}

import 'package:calculator/button_item.dart';
import 'package:flutter/material.dart';

class Calculatorscreen extends StatefulWidget {


  @override
  State<Calculatorscreen> createState() => _CalculatorscreenState();
}

class _CalculatorscreenState extends State<Calculatorscreen> {
  String resultText="";
  String savedNumber="";
  String savedOperator="";
  void onDotClicked(String _){
    if(resultText.contains(".")) return;

      resultText += ".";
    setState(() {

    });
  }
  void ondigitClicked(String digit){

      resultText += digit;


    setState(() {

    });

  }
  void onOperatorClicked(String operator){
    if(resultText.isEmpty)return;
    if(savedNumber.isEmpty){
      savedNumber=resultText;


    }else{
savedNumber=Calculate(savedNumber, savedOperator, resultText);

    }
    savedOperator=operator;
    resultText="";
    setState(() {

    });
  }
  String Calculate(String lhs,String operator,String rhs){
    double num1=double.parse(lhs);
    double num2=double.parse(rhs);
    late double result;
switch(operator){
  case "+":
    result=num1+num2;
    break;
    case "-":
    result=num1-num2;
    break;
    case "*":
    result=num1*num2;
    break;
    case "/":
    result=num1+num2;
    break;

}
return result.toString();

  }
  void onEqualClicked(String _){
    if(savedNumber.isEmpty||resultText.isEmpty)return;
resultText=Calculate(savedNumber, savedOperator, resultText);
savedNumber="";
savedOperator="";
setState(() {

});

  }
  void backSpace(String _){
    if(resultText.isEmpty)return;
resultText=resultText.substring(0,resultText.length-1);
setState(() {

});
  }
  void clear(String _){
resultText="";
savedNumber="";
savedOperator="";
setState(() {

});
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xff17181A),

      body:
      SafeArea(
        child:
      Padding(
          padding:EdgeInsets.symmetric(horizontal: 16),
          child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Expanded(child:
              Align(
                alignment: Alignment.centerRight,
                child:
        Text(resultText,style: TextStyle(color: Color(0xffFFFFFF)
        ,
          fontSize: 48,
          fontWeight: FontWeight.w400

        ),


        )
      )
          ),
Expanded(child:
Column(

  children: [
    Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              ButtonItem(onPressed:clear ,buttonContent: "Ac", colorOfButton: Color(0xff616161)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(onPressed:backSpace ,buttonContent: "delete", colorOfButton: Color(0xff616161)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(onPressed: onOperatorClicked,numbersAndOperator: "/",buttonContent: "divider", colorOfButton: Color(0xff005DB2)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(onPressed: onOperatorClicked,numbersAndOperator: "*",buttonContent: "multiplier", colorOfButton: Color(0xff005DB2)),


            ],

          ),
    ),

    Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

             ButtonItem(onPressed: ondigitClicked,numbersAndOperator: "7",buttonContent: "7", colorOfButton: Color(0xff303136)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(onPressed: ondigitClicked,numbersAndOperator: "8",buttonContent: "8", colorOfButton: Color(0xff303136)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(onPressed: ondigitClicked,numbersAndOperator: "9",buttonContent: "9", colorOfButton: Color(0xff303136)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(onPressed: onOperatorClicked,numbersAndOperator: "-",buttonContent: "substract", colorOfButton: Color(0xff005DB2)),


            ],

          ),
    ),

    Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          ButtonItem(onPressed: ondigitClicked,numbersAndOperator: "4",buttonContent: "4", colorOfButton: Color(0xff303136)),
          SizedBox(width: 20,),
          ButtonItem(onPressed: ondigitClicked,numbersAndOperator: "5",buttonContent: "5", colorOfButton: Color(0xff303136)),
          SizedBox(width: 20,),
          ButtonItem(onPressed: ondigitClicked,numbersAndOperator: "6",buttonContent: "6", colorOfButton: Color(0xff303136)),
             SizedBox(width: 20,),
          ButtonItem(onPressed:onOperatorClicked,numbersAndOperator: "+",buttonContent: "plus", colorOfButton: Color(0xff005DB2)),

        ],

      ),
    ),

Expanded(
  flex: 2,
  child: Row(

    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Expanded(
        flex: 3,
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  ButtonItem(onPressed: ondigitClicked,numbersAndOperator: "1",buttonContent: "1", colorOfButton: Color(0xff303136)),
                  SizedBox(
                    width:20 ,
                  ),
                  ButtonItem(onPressed: ondigitClicked,numbersAndOperator: "2",buttonContent: "2", colorOfButton: Color(0xff303136)),
                  SizedBox(
                    width:20 ,
                  ),
                  ButtonItem(onPressed: ondigitClicked,numbersAndOperator: "3",buttonContent: "3", colorOfButton: Color(0xff303136)),


                ],

              ),
            ),

               Expanded(child:
               Row(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                ButtonItem(onPressed: ondigitClicked,numbersAndOperator: "0",buttonContent: "0", colorOfButton: Color(0xff303136),flexAmount: 2,),
                SizedBox(
                  width:20 ,
                ),
                ButtonItem(onPressed:onDotClicked,numbersAndOperator: ".",buttonContent: "dot", colorOfButton: Color(0xff303136)),



              ],

            )
               ),
          ],
        ),
      ),

      ButtonItem(onPressed: onEqualClicked,numbersAndOperator: "=",buttonContent: "equal", colorOfButton: Color(0xff1991FF),isEqualButton: true,)



    ],

  ),
)

          ]
      )),





      ],)
      )
      ) ,




    );
  }
}

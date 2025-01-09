import 'package:calculator/button_item.dart';
import 'package:flutter/material.dart';

class Calculatorscreen extends StatelessWidget {


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
        Text("123",style: TextStyle(color: Color(0xffFFFFFF)
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

              ButtonItem(buttonContent: "Ac", colorOfButton: Color(0xff616161)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(buttonContent: "delete", colorOfButton: Color(0xff616161)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(buttonContent: "divider", colorOfButton: Color(0xff005DB2)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(buttonContent: "multiplier", colorOfButton: Color(0xff005DB2)),


            ],

          ),
    ),

    Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

             ButtonItem(buttonContent: "7", colorOfButton: Color(0xff303136)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(buttonContent: "8", colorOfButton: Color(0xff303136)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(buttonContent: "9", colorOfButton: Color(0xff303136)),
              SizedBox(
                width:20 ,
              ),
             ButtonItem(buttonContent: "substract", colorOfButton: Color(0xff005DB2)),


            ],

          ),
    ),

    Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          ButtonItem(buttonContent: "4", colorOfButton: Color(0xff303136)),
          SizedBox(width: 20,),
          ButtonItem(buttonContent: "5", colorOfButton: Color(0xff303136)),
          SizedBox(width: 20,),
          ButtonItem(buttonContent: "6", colorOfButton: Color(0xff303136)),
             SizedBox(width: 20,),
          ButtonItem(buttonContent: "plus", colorOfButton: Color(0xff005DB2)),

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

                  ButtonItem(buttonContent: "1", colorOfButton: Color(0xff303136)),
                  SizedBox(
                    width:20 ,
                  ),
                  ButtonItem(buttonContent: "2", colorOfButton: Color(0xff303136)),
                  SizedBox(
                    width:20 ,
                  ),
                  ButtonItem(buttonContent: "3", colorOfButton: Color(0xff303136)),


                ],

              ),
            ),

               Expanded(child:
               Row(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                ButtonItem(buttonContent: "0", colorOfButton: Color(0xff303136),flexAmount: 2,),
                SizedBox(
                  width:20 ,
                ),
                ButtonItem(buttonContent: "dot", colorOfButton: Color(0xff303136)),



              ],

            )
               ),
          ],
        ),
      ),

      ButtonItem(buttonContent: "equal", colorOfButton: Color(0xff1991FF),isEqualButton: true,)



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

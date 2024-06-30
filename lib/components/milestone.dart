import 'package:flutter/material.dart';

class Milestones_wt extends StatelessWidget {
  const Milestones_wt({super.key,
  this.Mtitstyle,
  this.Msubtityle,
    this.Mltitle='',
    this.Mlsubtl= '',
    this.circle,
    this.micon,
    this.miconcolor,
    this.whitebarW,
    this.bluebarW,
    this.coinT = '50',
    this.coinIc = Icons.circle,
    this.coinclr = Colors.yellow,
    this.coinesize=10,
    this.boxShape= BoxShape.circle,
    this.showIcons = true,
    this.margin,
    });
     final String Mltitle;
        final String Mlsubtl;
        final TextStyle? Mtitstyle;
         final TextStyle? Msubtityle;
         final IconData? micon;
         final Color? miconcolor;
         final Color? circle;
         final double? whitebarW;
         final double? bluebarW;
         final String coinT;
         final IconData coinIc;
         final Color coinclr;
         final double coinesize;
         final BoxShape boxShape;
         final bool showIcons;
         final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return 
    Row(
      
      children: [
        if(showIcons)
        Container(
          height: 50,
          width: 30,
          margin: EdgeInsets.only( left: 20),
          decoration: BoxDecoration(
            shape: boxShape,  //BoxShape.circle,
            color: circle
          ),
          
          child: Icon(color: miconcolor,micon),
        ),
        SizedBox(width: 20,),
        // Positioned(
        //   left: 120,
        //   child: RichText(text: TextSpan(children: <InlineSpan>[
        //   TextSpan(text: '50'),
        //   WidgetSpan(child: Icon(Icons.circle,color: Colors.yellow,))
        // ]))),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
          margin: margin,//EdgeInsets.only(left: 200)
          child: Row(
            children: [
              Text(coinT,style: TextStyle(fontSize: 8,color: Colors.white),), //'50',style: TextStyle(fontSize: 6.2,color: Colors.white),
              Icon(coinIc,size: coinesize,color: coinclr,) //Icons.circle,size: 6.2,color: Colors.yellow,
            ],
          ),
        ),
        
        Text(Mltitle,style: Mtitstyle,),
        Text(Mlsubtl,style:Msubtityle,),//fontsize 8
        SizedBox(height: 10,),
        Container(
          // margin: EdgeInsets.only(left: 2),
          width:whitebarW,//MediaQuery.sizeOf(context).width * 0.50,
          height: 5,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                 width: bluebarW,//MediaQuery.sizeOf(context).width * 0.10,
          height: 5,
                color: Colors.indigo,
              )
            ],
          ),
        ),
     
        // ElevatedButton(onPressed: (){}, child: Text('sadasd'))
      ],
      ),
      ]
    );
  }
}
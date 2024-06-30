import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';

class LineChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 400,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(1, 2.5),
                        FlSpot(2, 1),
                        FlSpot(3, 3.5),
                        FlSpot(4, 2),
                        FlSpot(5, 2.5),
                        // FlSpot(6, 4),
                        FlSpot(7, 3.5),
                        FlSpot(8, 2),
                        FlSpot(9, 2.5),
                        FlSpot(10, 4),
                        
                      ],
                      isCurved: true,
                      color: Colors.indigo,
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 2),
                        FlSpot(1, 2.5),
                        FlSpot(2, 1.5),
                        FlSpot(3, 3),
                        FlSpot(4, 3),
                        FlSpot(5, 2),
                        FlSpot(6, 3),
                        FlSpot(7, 2.5),
                        FlSpot(8, 3.5),
                        FlSpot(9, 3),
                        FlSpot(10, 2),
                      ],
                      isCurved: true,

                      color: Colors.blue[300],
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                  titlesData: FlTitlesData(
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false,
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          const style = TextStyle(
                            color: Color(0xff68737d),
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          );
                          Widget text;
                          switch (value.toInt()) {
                            case 0:
                              text = Text('Jan', style: style);
                              break;
                            case 1:
                              text = Text('Feb', style: style);
                              break;
                            case 2:
                              text = Text('Mar', style: style);
                              break;
                            case 3:
                              text = Text('Apr', style: style);
                              break;
                            case 4:
                              text = Text('May', style: style);
                              break;
                            case 5:
                              text = Text('Jun', style: style);
                              break;
                            case 6:
                              text = Text('Jul', style: style);
                              break;
                            case 7:
                              text = Text('Aug', style: style);
                              break;
                            case 8:
                              text = Text('Sep', style: style);
                              break;
                            case 9:
                              text = Text('Oct', style: style);
                              break;
                            case 10:
                              text = Text('Nov', style: style);
                              break;
                            default:
                              text = Text('', style: style);
                              break;
                          }
                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            space: 4, // space between chart and text
                            child: text,
                          );
                        },
                      ),
                    ),
                  ),
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.fromLTRB(30,0,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Text('Weekly',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 9),),
                  SizedBox(width: 5,),
                  Text('Monthly',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 9),),
                  SizedBox(width: 5,),
                  Text('Yearly',style: TextStyle(decoration: TextDecoration.underline,decorationColor: Colors.indigo,decorationThickness: 3,fontWeight: FontWeight.bold,color: Colors.white,fontSize: 9),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 7),
                  child: Column(
                    children: [
                  Row(
                    children: [
                      Icon(Icons.circle,color: Colors.indigo,size: 12,),
                      Text('Membership',style: TextStyle(color: Colors.white,fontSize: 8),),
                    ],
                  ),
                  Row(
                    children: [
                        Icon(Icons.circle,color: Colors.blue,size: 12,),
                      Text('Subscription',style: TextStyle(color: Colors.white,fontSize: 8),),
                    ],
                  ),]),
                )
              ],
            ),
          ],
        ),
      );
    
  }
}



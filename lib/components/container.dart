import 'package:admin_ui/components/milestone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Container_wt extends StatelessWidget {
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;
  final Widget? child;
  final BoxShape shape;
  final bool showpositioned;
  final IconData? iconL;
  final bool Milestone;
  final bool RequestC;

  const Container_wt({
    this.RequestC = false,
    this.color,
    this.borderRadius,
    this.height = 90,
    this.width = 130,
    this.child,
    this.shape = BoxShape.rectangle,
    this.showpositioned = true,
    this.iconL,
    this.Milestone = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color ?? Colors.grey[800],
            borderRadius: borderRadius ?? BorderRadius.circular(20),
            shape: shape,
          ),
          height: height,
          width: width,
          child: Container(
            margin: EdgeInsets.all(8.0),
            child: child ??
                (Milestone
                    ? Milestones_wt()
                   
                    :  ColumnContent(
                        title: '',
                        percentage: '',
                        followers: '',
                        style: TextStyle(),
                      ))
          ),
        ),
        if (showpositioned)
          Positioned(
            left: 105,
            child: Container(
              height: 90,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.indigo[400],
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white38,
                size: 15,
              ),
            ),
          ),
          if(RequestC)
         Positioned(
        // left: 10,
           child: Container(
                height: 90,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.indigo[400],
                ),
              ),
         ),
        // if (Milestone)
        //   Positioned(
        //     top: 25,
        //     left: 15,
        //     child: Container(
        //       decoration: BoxDecoration(
        //         color: const Color.fromARGB(255, 101, 26, 37),
        //         shape: BoxShape.circle,
        //       ),
        //       child: Icon(
        //         iconL,
        //         color: Colors.blue,
        //         size: 40,
        //       ),
        //     ),
        //   ),
      ],
    );
  }
}


class ColumnContent extends StatelessWidget {
  final String title;

  final String? percentage;
  final TextStyle? style;
  final String followers;
   final TextStyle? flstyle;
  final IconData? icon;
  final Color Iconcolor;

  const ColumnContent({
     this.title = '',
     this.percentage,
     this.style,
     this.followers = '',
    this.flstyle,
    this.icon,
    this.Iconcolor = Colors.green,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        RichText(
          text: TextSpan(
            children: <InlineSpan>[
              WidgetSpan(child: Icon(icon, color: Iconcolor,size: 15,)),
              TextSpan(text: percentage,style: style),
            ],
          ),
        ),

        Text(
          followers,
          style: TextStyle(color: Colors.white,fontSize: 18)
        ),
      
      ],
    );
  }
}

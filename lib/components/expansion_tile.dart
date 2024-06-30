import 'package:admin_ui/components/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Exp_widget extends StatefulWidget {
  Exp_widget(
      {required this.title, this.children = const <Widget>[],this.subtitle,this.trailing,
      super.key});
  String title;
  List<Widget> children;
  String? subtitle;
  Widget? trailing;

  @override
  State<Exp_widget> createState() => _Exp_widgetState();
}

class _Exp_widgetState extends State<Exp_widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10, top: 20),
      // padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 1,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ExpansionTile(
              // subtitle:RichText(text: TextSpan(children: 
              // <InlineSpan>[
              //   TextSpan(text: widget.subtitle),

              //   WidgetSpan(child: Icon(Icons.circle,color: Colors.red,),
                
              //   )
              // ]
              // )
              // ),
              
              trailing:widget.trailing,
                shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                collapsedBackgroundColor: Colors.grey[900],
                collapsedShape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                backgroundColor: Colors.grey[900],
                title: Text(softWrap: false,
                  widget.title,
                  style: TextStyle(color: Colors.white,fontSize:15),
                ),
                children: widget.children),
          );
        },
      ),
    );
  }
}

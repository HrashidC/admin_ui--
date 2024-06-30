import 'package:admin_ui/components/chart.dart';
import 'package:admin_ui/components/container.dart';
import 'package:admin_ui/components/expansion_tile.dart';
import 'package:admin_ui/components/milestone.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Admin_Sc extends StatefulWidget {
  const Admin_Sc({super.key});

  @override
  State<Admin_Sc> createState() => _Admin_ScState();
}

class _Admin_ScState extends State<Admin_Sc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(
          Icons.menu_sharp,
          color: Colors.white,
        ),
        // toolbarHeight: 30,
        backgroundColor: Colors.grey[900],
        // centerTitle: true,
        title: Text(
          'Admin panel',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [Container(
          margin: EdgeInsets.only(right: 10),
          height: 30,
          width: 40,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/assets/images.png'),),shape: BoxShape.circle),
          // child: Image.asset('lib/assets/images.png'),
        )
         ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Exp_widget(
              title: 'Community Analytics',
              children: [
                Container(
                  // color: Colors.grey[900],
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[900],
                  ),
                  // height:220,
                  width: MediaQuery.sizeOf(context).width * 0.90,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container_wt(
                                  Milestone: false,
                                  child: ColumnContent(
                                    title: 'Total followers',
                                    percentage: '7.2%',
                                    followers: '50K',
                                    flstyle: TextStyle(color: Colors.white),
                                    icon: Icons.auto_graph_rounded,
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container_wt(
                                  Milestone: false,
                                  child: ColumnContent(
                                    title: 'Total posts',
                                    Iconcolor: Colors.red,
                                    percentage: '5.2%',
                                    followers: '17.6k',
                                    flstyle: TextStyle(),
                                    icon: Icons.arrow_downward_sharp,
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container_wt(
                                  Milestone: false,
                                  child: ColumnContent(
                                    title: 'Total views',
                                    percentage: '7.2%',
                                    followers: '200m',
                                    icon: Icons.auto_graph,
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container_wt(
                                  Milestone: false,
                                  child: ColumnContent(
                                    title: 'Total revenue',
                                    percentage: '5.2%',
                                    followers: '\$260.8',
                                    icon: Icons.arrow_downward_sharp,
                                    Iconcolor: Colors.red,
                                    style: TextStyle(color: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            Exp_widget(
              title: 'Membership & Subscription',
              children: [
                Container(
                    // color: Colors.grey[900],
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[900],
                    ),
                    // height: 250,
                    width: MediaQuery.sizeOf(context).width * 0.90,         ////////////////////
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container_wt(
                                   showpositioned: false,
                                  Milestone: false,
                                  child: ColumnContent(
                                    title: 'Membership',
                                    percentage: '10%',
                                    followers: '\$120.1',
                                    icon: Icons.auto_graph_sharp,
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container_wt(
                                  showpositioned: false,
                                  Milestone: false,
                                  child: ColumnContent(
                                    title: 'Subscription',
                                    percentage: '8.3%',
                                    followers: '\$55',
                                    icon: Icons.arrow_downward_sharp,
                                    style: TextStyle(color: Colors.red),
                                    Iconcolor: Colors.red,
                                  ),
                                ),
                                // ChartData()
                              ],
                            ),LineChartSample()
                          ],
                        );
                      },
                    ))
              ],
            ),
            Exp_widget(
              title: 'Milestones',
              // subtitle: 'Total coins earned',
              children: [
                Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[900],
                    ),
                    // height: 250,
                    width: MediaQuery.sizeOf(context).width * 0.90,
                    child: ListView.builder(
                      itemCount: 1,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(margin: EdgeInsets.only(bottom: 10),
                                child: Row(children: [
                                  Text('Total coins earned: 2000',style: TextStyle(color: Colors.white,fontSize: 10),),
                                  Icon(Icons.circle,color: Colors.yellow,size: 8,),
                                  SizedBox(width: 100,),
                                    Text('June',style: TextStyle(color: Colors.white,fontSize: 10),),
                                  Icon(Icons.arrow_drop_down_sharp,color: Colors.indigo,size: 18,),
                                ],),
                              ),
                              Container_wt(
                                // iconL: Icons.heart_broken,
                                showpositioned: false,
                                Milestone: true,
                                child: Milestones_wt(
                                  Mltitle: '7 posts 7 weeks',
                                  Mtitstyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),
                                  Mlsubtl: 'Post eacch week for 7 weeks to\nmaintain your streak',
                                  Msubtityle: TextStyle(fontSize: 8,color: Colors.white),
                                  micon: Icons.thumb_up_sharp,
                                  miconcolor: Colors.blue,
                                  circle: Colors.blue[200],
                                  whitebarW: MediaQuery.sizeOf(context).width * 0.50,
                                  bluebarW: MediaQuery.sizeOf(context).width * 0.20,
                                     margin: EdgeInsets.only(left: 180),
                                ),
                                width: MediaQuery.sizeOf(context).width * 0.85,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container_wt(
                                Milestone: true,
                                showpositioned: false,
                                width: MediaQuery.sizeOf(context).width * 0.85,
                                   child: Milestones_wt(
                                  Mltitle: '7 comments 7 weeks',
                                  Mtitstyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),
                                  Mlsubtl: 'comment each week for 7 weeks to\nmaintain your streak',
                                  Msubtityle: TextStyle(fontSize: 8,color: Colors.white),
                                  micon: Icons.comment,
                                  miconcolor: Colors.yellow[700],
                                  circle: Colors.yellow[100],
                                  whitebarW: MediaQuery.sizeOf(context).width * 0.50,
                                  bluebarW: MediaQuery.sizeOf(context).width * 0.20,
                                     margin: EdgeInsets.only(left: 180),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container_wt(
                                 Milestone: true,
                                showpositioned: false,
                                width: MediaQuery.sizeOf(context).width * 0.85,
                                   child: Milestones_wt(
                                    margin: EdgeInsets.only(left: 180),
                                  Mltitle: 'Update profile',
                                  Mtitstyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),
                                  Mlsubtl: 'update your profile to 100%',
                                  Msubtityle: TextStyle(fontSize: 8,color: Colors.white),
                                  micon: Icons.shopping_bag_rounded,
                                  miconcolor: Colors.red[400],
                                  circle: Colors.red[200],
                                  whitebarW: MediaQuery.sizeOf(context).width * 0.50,
                                  bluebarW: MediaQuery.sizeOf(context).width * 0.50,
                                ),
      
                              ),
                              SizedBox(height: 10,),
                              ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.indigo)),
                                onPressed: (){}, child: Text('Go to leaderboard',style: TextStyle(color: Colors.white),))
                            ],
                          ),
                        );
                      },
                    ))
              ],
            ),
            Exp_widget(title: 'Request a function',  trailing: Icon(Icons.add_box), children: [
                Container(
                    // color: Colors.grey[900],
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[900],
                    ),
                    // height: 250,
                    width: MediaQuery.sizeOf(context).width * 0.90,
                    child:ListView.builder(
                      itemCount: 1,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('processing',style: TextStyle(color: Colors.white,fontSize: 10),),
                                    SizedBox(width: 100,),
                                     Text('completed',style: TextStyle(color: Colors.white,decoration: TextDecoration.underline,decorationColor: Colors.indigo[800],decorationThickness:4,fontSize: 10),)
                                  ],
                                ),
                              ),
                              Container_wt(
                                
                                RequestC: true,
                                Milestone: true,
                                showpositioned: false,
                                    width: MediaQuery.sizeOf(context).width * 0.85,
                                child: Milestones_wt(showIcons: false,
                                margin: EdgeInsets.only(left: 230),
                                  coinIc: Icons.brush,
                                  coinclr: Colors.white,
                                  coinT: '',
                                  coinesize: 15,
                                  Mltitle: 'Badges for community',
                                  Mtitstyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white,),
                                  Mlsubtl: 'Reason for the requested function goes\nhere',
                                  Msubtityle: TextStyle(fontSize: 7,color: Colors.white),
                                
                                ),
                              )
                    
                            ],
                          ),
                        );
                      },)
            ),
            ],
            )
          ],
        ),
      ),
    );
  }
}


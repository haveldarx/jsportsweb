
// ignore_for_file: prefer_const_constructors

import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jsoprtsweb/colors.dart';
import 'package:pie_chart/pie_chart.dart';
Map<String, double> dataMap = {
    "Present": 5,
    "Absent": 2,
  };

class TestJobs extends StatefulWidget {
  const TestJobs({ Key? key }) : super(key: key);

  @override
  State<TestJobs> createState() => _TestJobsState();
}

class _TestJobsState extends State<TestJobs> {
  var colorList = [
      primaryColor1,
      primaryColor3
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test', style: TextStyle(color: Color(0xff8F1560),)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  BsRow(children: [
                    BsCol(
                      sizes: ColScreen(
                        xs: Col.col_12,
                        sm: Col.col_12,
                        md: Col.col_5,
                        lg: Col.col_5,
                        xl: Col.col_5,
                      ),
                      
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          direction: Axis.vertical,
                          children: [Text('Search Jobs',style: GoogleFonts.roboto(
                                              color: Color(0xff253269),
                                              fontSize: 24.0,
                                            fontWeight: FontWeight.bold),),
                                            Text('Find jobs that match your skills, interests and role',
                                            style: GoogleFonts.roboto(
                                              color: Color.fromARGB(255, 155, 155, 155),
                                              fontSize: 14.0,)
                                              )
                                              ]
                                              ),
                      ),),
                    BsCol(
                       sizes: ColScreen(
                        xs: Col.col_12,
                        sm: Col.col_12,
                        md: Col.col_5,
                        lg: Col.col_5,
                        xl: Col.col_5,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffCCD0F1),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        
                        ),
                        child: Card(
                          shadowColor: Color(0xffCCD0F1),
                          elevation: 0,
                          child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: BsRow(
                            children:[ BsCol(
                              sizes: ColScreen(
                                xs: Col.col_12,
                                sm: Col.col_12,
                                md: Col.col_5,
                                lg: Col.col_5,
                                xl: Col.col_5,
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Search',
                                  labelStyle: GoogleFonts.roboto(
                                    color: Color(0xff8F1560),
                                    fontSize: 14.0,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                            ),
                              ),
                            ),
                            BsCol(
                              sizes: ColScreen(
                                xs: Col.col_12,
                                sm: Col.col_12,
                                md: Col.col_5,
                                lg: Col.col_5,
                                xl: Col.col_5,
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Search',
                                  labelStyle: GoogleFonts.roboto(
                                    color: Color(0xff8F1560),
                                    fontSize: 14.0,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                            ),
                              ),
                            ),
                            BsCol(
                              constraints: BoxConstraints(
                                maxWidth: 150,
                                maxHeight: 40,
                                minHeight: 40,
                                minWidth: 150
                              ),
                              sizes: ColScreen(
                                xs: Col.col_6,
                                sm: Col.col_6,
                                md: Col.col_2,
                                lg: Col.col_2,
                                xl: Col.col_2,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Ink(
                                                                   decoration: BoxDecoration(
                                                                    
                                                                      borderRadius: BorderRadius.circular(5.0),
                                                                    gradient: LinearGradient(colors:[
                                                                      primaryColor1,
                                                                      primaryColor2
                                                                    ],
                                                                    begin: Alignment.topLeft,
                                                                    end: Alignment.bottomRight,
                                                                    ),
                                                                  ),
                                                                child: Container(
                                                                  // height: MediaQuery.of(context).size.width/60,
                                                                  // width: MediaQuery.of(context).size.width/14,
                                                                  constraints: BoxConstraints(
                                                                    maxWidth: 150,
                                                                    maxHeight: 40,
                                                                  ),
                                                               
                                                                  child: Center(
                                                                    child: Text('Search',
                                                                    style: GoogleFonts.roboto(
                                                                      fontSize: 12,
                                                                      color: Colors.white,
                                                                    ),),
                                                                  ),
                                                                ),
                                                              ),
                                ),
                              ),
                            )
                            ]
                          ),
                        )),
                      ),
                      ),
                      BsCol(
                        offset: ColScreen(
                          xs: Col.col_1,
                          sm: Col.col_1,
                          md: Col.col_1,
                          lg: Col.col_1,
                          xl: Col.col_1,
                        
                        ),
                        sizes: ColScreen(
                          xs: Col.col_12,
                          sm: Col.col_12,
                          md: Col.col_1,
                          lg: Col.col_1,
                          xl: Col.col_1,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top:30,left:8,right:8,bottom:8.0),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffCCD0F1),
                            child: CircleAvatar(
                              backgroundColor: Color(0xffFFFFFF),
                              child: Icon(Icons.menu,color: Color(0xffCCD0F1),))),
                        ),)
                      ]),
                  Divider(),
                  BsCol(
                    child: BsRow(
                      gutter: EdgeInsets.all(10.0),
                      children: List.generate(8, (index) => BsCol(
                        // padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                        sizes: ColScreen(
                          xs: Col.col_12,
                          sm: Col.col_12, md: Col.col_4, lg: Col.col_4, xl: Col.col_4, xxl: Col.col_3),
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BsRow(
                                  // direction: Axis.horizontal,
                                  children: 
                                        [
                                          BsCol(
                                            
                                          sizes: ColScreen(
                                            xs: Col.col_9,
                                            sm: Col.col_9, md: Col.col_9, lg: Col.col_9, xl: Col.col_9, xxl: Col.col_9),
                        
                                          child: Wrap(
                                                                direction: Axis.horizontal,
                                                                alignment: WrapAlignment.start,
                                                                crossAxisAlignment: WrapCrossAlignment.center,
                        
                                                                children: [
                                          CircleAvatar(
                                            radius: 20,
                                            child: Image.asset("assets/logo.png", )),
                                          Text("Freshworks", style: TextStyle(color: txtColorblk, fontSize: 15, fontWeight: FontWeight.w600),),
                                          ]),
                                        ),
                                        BsCol(
                                          sizes: ColScreen(
                                            xs: Col.col_3,
                                            sm: Col.col_3, md: Col.col_3, lg: Col.col_3, xl: Col.col_3, xxl: Col.col_3),
                                            child: Wrap(
                                              alignment: WrapAlignment.end,
                                              spacing: 5,
                                              children: [
                                                InkWell(child: Icon(Icons.bookmark, color: Colors.black45,), onTap: (){},),
                                                InkWell(child: Icon(Icons.more_vert, color: Colors.black45,), onTap: (){},),
                                              ],
                                            ),
                                        )
                                      ],
                                ),
                                const Divider(),
                                BsRow(
                                  children: [
                                    BsCol(
                                      sizes: ColScreen(
                                        xs: Col.col_9,
                                        sm: Col.col_9, md: Col.col_9, lg: Col.col_9, xl: Col.col_9, xxl: Col.col_9),
                                      child: Wrap(
                                        direction:Axis.vertical ,
                                        children:[ Text("Software Engineer", 
                                        style: TextStyle(color: txtColorblk, 
                                        fontSize: 21,
                                        
                                         fontWeight: FontWeight.bold),),
                                         Wrap(
                                           children: 
                                             List.generate(3, (index) => 
                                                Container(
                                                  constraints: BoxConstraints(
                                                    minHeight: 35,
                                                    minWidth: 60,
                                                    maxWidth: 60,
                                                    maxHeight: 35,
                                                  ),
                                                  child: Card(
                                                    elevation: 0,
                                                    color: Color(0xFFF7F8FC),
                                                    child: Center(
                                                      child: Text('Angular',
                                                      style: GoogleFonts.roboto(color: Color(0xff253269),
                                                       fontSize: 12, 
                                                       fontWeight: FontWeight.w600),),
                                                    ),
                                                  ),
                                                )
                                             )
                                           ,
                                         ),
                                         Column(
                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children :[
                                          Row(children: [
                                             Icon(Icons.stars_rounded,color: Color(0xff9B9B9B),size: 14,),
                                                 Text('1-3 Years Experience',style: GoogleFonts.roboto(
                                                    color: Color(0xff9B9B9B),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600
                                                  
                                                 ),)
                                          ],),
                                          Row(children: [
                                             Icon(Icons.stars_rounded,color: Color(0xff9B9B9B),
                                             size: 14,),
                                                 Text('1-3 Years Experience',style: GoogleFonts.roboto(
                                                    color: Color(0xff9B9B9B),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600
                                                  
                                                 ),)
                                          ],),
                                          Row(children: [
                                             Icon(Icons.stars_rounded,color: Color(0xff9B9B9B),size: 14,),
                                                 Text('1-3 Years Experience',style: GoogleFonts.roboto(
                                                    color: Color(0xff9B9B9B),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600
                                                  
                                                 ),)
                                          ],)])
                                        //       BsRow(
                                        //      children: [
                                        //        BsCol(child: Row(children: [
                                        //          Icon(Icons.stars_rounded,color: Color(0xff9B9B9B),),
                                        //          Text('1-3 Years Experience',style: GoogleFonts.roboto(
                                        //             color: Color(0xff9B9B9B),
                                        //             fontSize: 12,
                                        //             fontWeight: FontWeight.w600
                                                  
                                        //          ),)
                                        //        ]),)
                                        //      ]
                                         
                                        //  )
                                  ]),
                                      ),
                                      BsCol(
                                                                          sizes: ColScreen(
                                            xs: Col.col_3,
                                            sm: Col.col_3, md: Col.col_3, lg: Col.col_3, xl: Col.col_3, xxl: Col.col_3),
                                        child:Wrap(
                                          alignment: WrapAlignment.center,
                                          direction: Axis.vertical,
                                          children:[ PieChart(
                                                  dataMap: dataMap,
                                                  animationDuration:
                                                      Duration(milliseconds: 800),
                                                  chartLegendSpacing: 10,
                                                  chartRadius: MediaQuery.of(context).size.width/25,
                                                  colorList: colorList,
                                                  initialAngleInDegree: 0,
                                                  chartType: ChartType.ring,
                                                  centerTextStyle: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black),
                                                  ringStrokeWidth: 6  ,
                                                  centerText: "80%",
                                                  legendOptions: LegendOptions(
                                                      showLegends: false,
                                                      legendPosition:
                                                          LegendPosition.right),
                                                  chartValuesOptions:
                                                      ChartValuesOptions(
                                                    showChartValueBackground: true,
                                                    showChartValues: false,
                                                    showChartValuesInPercentage: false,
                                                    showChartValuesOutside: true,
                                                    decimalPlaces: 1,
                                                  ),
                                                  // gradientList: ---To add gradient colors---
                                                  // emptyColorGradient: ---Empty Color gradient---
                                                ),
                                                Text('Match',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xffD1D1D1),
                                                ),
                                                )
                                                ,
                                                Ink(
                                                               decoration: BoxDecoration(
                                                                
                                                                  borderRadius: BorderRadius.circular(5.0),
                                                                gradient: LinearGradient(colors:[
                                                                  primaryColor1,
                                                                  primaryColor2
                                                                ],
                                                                begin: Alignment.topLeft,
                                                                end: Alignment.bottomRight,
                                                                ),
                                                              ),
                                                            child: Container(
                                                              // height: MediaQuery.of(context).size.width/60,
                                                              // width: MediaQuery.of(context).size.width/14,
                                                              constraints: BoxConstraints(
                                                                maxWidth: 80,
                                                                maxHeight: 30,
                                                              ),
                                                           
                                                              child: Center(
                                                                child: Text('Show More',
                                                                style: GoogleFonts.roboto(
                                                                  color: Colors.white,
                                                                ),),
                                                              ),
                                                            ),
                                                          ),]
                                        ),
                                      )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                    ),
                  ),
                ],
              ),
              
              
            ),
          ],
        ),
      ),
    );
  }

}
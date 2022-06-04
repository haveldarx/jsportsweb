// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jsoprtsweb/test.dart';
import 'package:pie_chart/pie_chart.dart';
Map<String, double> dataMap = {
    "Present": 5,
    "Absent": 2,
  };
class SearchJobs extends StatelessWidget {
  const SearchJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colorList = [
      Color(0xff8F1560),
      Color(0xffD1D1D1)
    ];
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(bottom: 20.0),
        height: MediaQuery.of(context).size.height,
        child: BsCol(
          child: Row(
            children: [
              Expanded(child: Container(),flex: 1,),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Expanded(child:Container(),
                    flex:1),
                            
                    Expanded(
                      flex:16,
                      child: BsCard(
                        children: [
                          BsCardContainer(
                            child: BsRow(
                              gutter: EdgeInsets.only(left: 50.0, right: 50.0, top: 5.0, bottom: 5.0),
                              children: [
                                                   
                                BsCol(
                                  
                                                
                                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                  sizes: ColScreen(
                                     xs: Col.col_6,
                                          sm: Col.col_4,
                                                  
                                          md: Col.col_4,
                                          lg: Col.col_4,
                                          xl: Col.col_6,),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 40),
                                    child: Container(
                                      height: MediaQuery.of(context).size.height/8,
                                      child: BsRow(
                                        children: [
                                          BsCol(child:Text('Search Jobs',style: GoogleFonts.roboto(
                                            color: Color(0xff253269),
                                            fontSize: 24.0,
                                          fontWeight: FontWeight.bold),),),
                                          BsCol(child:Text('Find jobs that match your skills, interests and role',
                                          style: GoogleFonts.roboto(
                                            color: Color.fromARGB(255, 155, 155, 155),
                                            fontSize: 14.0,)),)
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              
                                  BsCol(
                                  
                                
                                  sizes: ColScreen(
                                     xs: Col.col_2,
                                          sm: Col.col_4,
                                                  
                                          md: Col.col_4,
                                          lg: Col.col_4,
                                          xl: Col.col_6,),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/6,
                                    child: BsRow(
                                    
                                      children: [
                                        BsCol(
                                          
                                         
                                     
                                          child:Padding(
                                            padding: const EdgeInsets.only(top:40.0),
                                            child: Container(  
                                              // width: MediaQuery.of(context).size.width/30,
                                              // height: MediaQuery.of(context).size.width/20,
                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                Container(
                                                  
                                                  child: Row(children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(3.0),
                                                      child: ImageIcon(
                                                        AssetImage('assets/jobs.png'),
                                                        color:Color(0xff5F6368),
                                                        
                                                      )),
                                                      Text('Job Title or Skills',
                                                      style: GoogleFonts.roboto(
                                                        color: Color(0xff9B9B9B),
                                                        fontSize: 9.0,
                                                      ),)
                                                    
                                                  ]),
                                                  // width: MediaQuery.of(context).size.width/10,
                                                  // height: MediaQuery.of(context).size.width/60,
                                                  decoration: BoxDecoration(
                                                   border: Border.all(
                                              // color: Color(0xff253269),
                                              width: 1.0),
                                              borderRadius: BorderRadius.circular(5.0),
                                                  )
                                                ),
                                            Container(
                                              constraints: BoxConstraints(
                                                maxWidth: 200,
                                                maxHeight: 40,
                                              ),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: 'Job Title or Skills',
                                                  hintStyle: GoogleFonts.roboto(
                                                    color: Color(0xff9B9B9B),
                                                    fontSize: 9.0,
                                                  ),
                                                ),
                                              
                                              ),
                                                  // child: Row(children: [
                                                  //   // TextField(
                                                  //   //   decoration: InputDecoration(
                                                  //   //     border: InputBorder.none,
                                                  //   //     hintText: 'Job Title or Skills',
                                                  //   //     hintStyle: GoogleFonts.roboto(
                                                  //   //       color: Color(0xff9B9B9B),
                                                  //   //       fontSize: 9.0,
                                                  //   //     ),
                                                  //   //   ),
                                                    
                                                  //   // )
                                                  //   // Padding(
                                                  //   //   padding: const EdgeInsets.all(3.0),
                                                  //   //   child: ImageIcon(
                                                  //   //     AssetImage('assets/location.png'),
                                                  //   //     color:Color(0xff5F6368),
                                                        
                                                  //   //   )),
                                                  //   //   Text('Job Title or Skills',
                                                  //   //   style: GoogleFonts.roboto(
                                                  //   //     color: Color(0xff9B9B9B),
                                                  //   //     fontSize: 9.0,
                                                  //   //   ),),
                                                  //   //    Padding(
                                                  //   //   padding: const EdgeInsets.only(top:3,bottom:3,right:3,left:12.0),
                                                  //   //   child: ImageIcon(
                                                  //   //     AssetImage('assets/arrow.png'),
                                                  //   //     color:Color(0xff5F6368),
                                                        
                                                  //   //   )
                                                  //   //   ),
                                                    
                                                  // ]),
                                                  // width: MediaQuery.of(context).size.width/10,
                                                  // height: MediaQuery.of(context).size.width/60,
                                                  decoration: BoxDecoration(
                                                   border: Border.all(
                                              // color: Color(0xff253269),
                                              width: 1.0),
                                              borderRadius: BorderRadius.circular(5.0),
                                                  )
                                                ),
                                                
                                                MaterialButton(
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TestJobs()));
                                                  },
                                                  child: Ink(
                                                       decoration: BoxDecoration(
                                                        
                                                          borderRadius: BorderRadius.circular(5.0),
                                                        gradient: LinearGradient(colors:[
                                                          Color(0xff8F1560),
                                                          Color(0xff253269)
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
                                                          color: Colors.white,
                                                        ),),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                                
                                              ]), 
                                            
                                            decoration: BoxDecoration(
                                              
                                              border: Border.all(
                                              color: Color(0xff253269),
                                              width: 1.0),
                                              borderRadius: BorderRadius.circular(5.0),
                                         
                                                                        
                                              
                                            ),
                                            
                                            
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          BsCardContainer(
                            
                            child: BsRow(
                              gutter: EdgeInsets.only(left: 50.0, right: 50.0, top: 5.0, bottom: 5.0),
                              children: [
                         
                                BsCol(
                                  
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                    
                                      color: Color(0xffCCD0F1))),
                                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                  sizes: ColScreen(
                                     xs: Col.col_6,
                                          sm: Col.col_4,
                        
                                          md: Col.col_4,
                                          lg: Col.col_4,
                                          xl: Col.col_4,),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/4,
                                    child: BsRow(
                                      children: [
                                        BsCol(
                                         
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          
                                          ),
                                          padding: EdgeInsets.all(10.0),
                                          sizes: ColScreen(
                                               xs: Col.col_12,
                                            sm: Col.col_12,
                        
                                            md: Col.col_12,
                                            lg: Col.col_12,
                                            xl: Col.col_12,),
                                          child: BsRow(
                                            children: [
                                              BsCol(child:
                                            BsRow(
                                        
                                              children: [
                                                BsCol(
                                                  sizes: ColScreen(
                                               xl: Col.col_9,),
                                                  child:Row(children: [
                                                  Image.asset('assets/logo.png'),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text('Freshworks',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff202124),
                                                      fontSize: 16.0,
                                                    )),
                                                    Text('Chennai, Tamil Nadu',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff9B9B9B),
                                                      fontSize: 10.0,
                                                    )),],)
                      
                                                ],
                                              ),),
                                              BsCol(
                                                sizes: ColScreen(
                                                  sm:Col.col_10,
                                                  md: Col.col_9,
                                                  lg: Col.col_9,
                                               xl: Col.col_3,),
                                                child:Padding(
                                                  padding: const EdgeInsets.only(left:20.0),
                                                  child: Row(children: [
                                                  Icon(Icons.bookmark,color: Color(0xff253269),),
                                                  Icon(Icons.more_vert)
                                              ],),
                                                ))
                                                
                                              ],
                                            ),)
                                            ],
                                          )
                                        ),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_8,),
                                        
                                          padding: EdgeInsets.all(10.0),
                                          child: BsRow(children: [
                                            BsCol(child: Column(
                                             children:[
                                               Text('Software Engineer',
                                               style: GoogleFonts.roboto(
                                                 color: Color(0xff202124),
                                                 fontSize: 21.0,
                                               )),
                                               BsRow(
                                                 padding: EdgeInsets.only(left: 10.0),
                                                 children: [
                                                   BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Padding(
                                                         padding: const EdgeInsets.all(2.0),
                                                         child: Text('Angular',
                                                         style: TextStyle(
                                                            color: Color(0xff253269),
                                                            fontSize: 12.0,
                                                          
                                                         ),),
                                                       ),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                      
                                                 ],
                                               ),
                                               Padding(
                                                 padding: const EdgeInsets.only(left:8.0),
                                                 child: Column(children: [
                                                   Row(children: [
                                                     Icon(Icons.star,
                                                     size: 12,
                                                     ),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                 
                                                 ],),
                                               )
                                              
                                               ]
                                            ),),
                                            
                                          ],)),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_4,),
                                            child:Column(children: [
                                              PieChart(
                                        dataMap: dataMap,
                                        animationDuration:
                                            Duration(milliseconds: 800),
                                        chartLegendSpacing: 10,
                                        chartRadius: MediaQuery.of(context).size.width/30,
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
                                      Container(
                                                height: MediaQuery.of(context).size.width/50,
                                                width: MediaQuery.of(context).size.width/18,
                                                decoration: BoxDecoration(
                                                  
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  gradient: LinearGradient(colors:[
                                                    Color(0xff8F1560),
                                                    Color(0xff253269)
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text('Show more',
                                                  style: GoogleFonts.roboto(
                                                    color: Colors.white,
                                                  ),),
                                                ),
                                              )
                                            ],)
                                        )
                      
                      
                                        
                                      ],
                                    ),
                                  ),
                                ),
                               BsCol(
                                  
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                    
                                      color: Color(0xffCCD0F1))),
                                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                  sizes: ColScreen(
                                     xs: Col.col_6,
                                          sm: Col.col_4,
                        
                                          md: Col.col_4,
                                          lg: Col.col_4,
                                          xl: Col.col_4,),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/4,
                                    child: BsRow(
                                      children: [
                                        BsCol(
                                         
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          
                                          ),
                                          padding: EdgeInsets.all(10.0),
                                          sizes: ColScreen(
                                               xs: Col.col_12,
                                            sm: Col.col_12,
                        
                                            md: Col.col_12,
                                            lg: Col.col_12,
                                            xl: Col.col_12,),
                                          child: BsRow(
                                            children: [
                                              BsCol(child:
                                            BsRow(
                                        
                                              children: [
                                                BsCol(
                                                  sizes: ColScreen(
                                               xl: Col.col_9,),
                                                  child:Row(children: [
                                                  Image.asset('assets/logo.png'),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text('Freshworks',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff202124),
                                                      fontSize: 16.0,
                                                    )),
                                                    Text('Chennai, Tamil Nadu',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff9B9B9B),
                                                      fontSize: 10.0,
                                                    )),],)
                      
                                                ],
                                              ),),
                                              BsCol(
                                                sizes: ColScreen(
                                                  sm:Col.col_10,
                                                  md: Col.col_9,
                                                  lg: Col.col_9,
                                               xl: Col.col_3,),
                                                child:Padding(
                                                  padding: const EdgeInsets.only(left:20.0),
                                                  child: Row(children: [
                                                  Icon(Icons.bookmark,color: Color(0xff253269),),
                                                  Icon(Icons.more_vert)
                                              ],),
                                                ))
                                                
                                              ],
                                            ),)
                                            ],
                                          )
                                        ),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_8,),
                                        
                                          padding: EdgeInsets.all(10.0),
                                          child: BsRow(children: [
                                            BsCol(child: Column(
                                             children:[
                                               Text('Software Engineer',
                                               style: GoogleFonts.roboto(
                                                 color: Color(0xff202124),
                                                 fontSize: 21.0,
                                               )),
                                               BsRow(
                                                 padding: EdgeInsets.only(left: 10.0),
                                                 children: [
                                                   BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Padding(
                                                         padding: const EdgeInsets.all(2.0),
                                                         child: Text('Angular',
                                                         style: TextStyle(
                                                            color: Color(0xff253269),
                                                            fontSize: 12.0,
                                                          
                                                         ),),
                                                       ),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                      
                                                 ],
                                               ),
                                               Padding(
                                                 padding: const EdgeInsets.only(left:8.0),
                                                 child: Column(children: [
                                                   Row(children: [
                                                     Icon(Icons.star,
                                                     size: 12,
                                                     ),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                 
                                                 ],),
                                               )
                                              
                                               ]
                                            ),),
                                            
                                          ],)),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_4,),
                                            child:Column(children: [
                                              PieChart(
                                        dataMap: dataMap,
                                        animationDuration:
                                            Duration(milliseconds: 800),
                                        chartLegendSpacing: 10,
                                        chartRadius: MediaQuery.of(context).size.width/30,
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
                                      Container(
                                                height: MediaQuery.of(context).size.width/50,
                                                width: MediaQuery.of(context).size.width/18,
                                                decoration: BoxDecoration(
                                                  
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  gradient: LinearGradient(colors:[
                                                    Color(0xff8F1560),
                                                    Color(0xff253269)
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text('Show more',
                                                  style: GoogleFonts.roboto(
                                                    color: Colors.white,
                                                  ),),
                                                ),
                                              )
                                            ],)
                                        )
                      
                      
                                        
                                      ],
                                    ),
                                  ),
                                ),
                                 BsCol(
                                  
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                    
                                      color: Color(0xffCCD0F1))),
                                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                  sizes: ColScreen(
                                     xs: Col.col_6,
                                          sm: Col.col_4,
                        
                                          md: Col.col_4,
                                          lg: Col.col_4,
                                          xl: Col.col_4,),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/4,
                                    child: BsRow(
                                      children: [
                                        BsCol(
                                         
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          
                                          ),
                                          padding: EdgeInsets.all(10.0),
                                          sizes: ColScreen(
                                               xs: Col.col_12,
                                            sm: Col.col_12,
                        
                                            md: Col.col_12,
                                            lg: Col.col_12,
                                            xl: Col.col_12,),
                                          child: BsRow(
                                            children: [
                                              BsCol(child:
                                            BsRow(
                                        
                                              children: [
                                                BsCol(
                                                  sizes: ColScreen(
                                               xl: Col.col_9,),
                                                  child:Row(children: [
                                                  Image.asset('assets/logo.png'),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text('Freshworks',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff202124),
                                                      fontSize: 16.0,
                                                    )),
                                                    Text('Chennai, Tamil Nadu',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff9B9B9B),
                                                      fontSize: 10.0,
                                                    )),],)
                      
                                                ],
                                              ),),
                                              BsCol(
                                                sizes: ColScreen(
                                                  sm:Col.col_10,
                                                  md: Col.col_9,
                                                  lg: Col.col_9,
                                               xl: Col.col_3,),
                                                child:Padding(
                                                  padding: const EdgeInsets.only(left:20.0),
                                                  child: Row(children: [
                                                  Icon(Icons.bookmark,color: Color(0xff253269),),
                                                  Icon(Icons.more_vert)
                                              ],),
                                                ))
                                                
                                              ],
                                            ),)
                                            ],
                                          )
                                        ),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_8,),
                                        
                                          padding: EdgeInsets.all(10.0),
                                          child: BsRow(children: [
                                            BsCol(child: Column(
                                             children:[
                                               Text('Software Engineer',
                                               style: GoogleFonts.roboto(
                                                 color: Color(0xff202124),
                                                 fontSize: 21.0,
                                               )),
                                               BsRow(
                                                 padding: EdgeInsets.only(left: 10.0),
                                                 children: [
                                                   BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Padding(
                                                         padding: const EdgeInsets.all(2.0),
                                                         child: Text('Angular',
                                                         style: TextStyle(
                                                            color: Color(0xff253269),
                                                            fontSize: 12.0,
                                                          
                                                         ),),
                                                       ),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                      
                                                 ],
                                               ),
                                               Padding(
                                                 padding: const EdgeInsets.only(left:8.0),
                                                 child: Column(children: [
                                                   Row(children: [
                                                     Icon(Icons.star,
                                                     size: 12,
                                                     ),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                 
                                                 ],),
                                               )
                                              
                                               ]
                                            ),),
                                            
                                          ],)),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_4,),
                                            child:Column(children: [
                                              PieChart(
                                        dataMap: dataMap,
                                        animationDuration:
                                            Duration(milliseconds: 800),
                                        chartLegendSpacing: 10,
                                        chartRadius: MediaQuery.of(context).size.width/30,
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
                                      Container(
                                                height: MediaQuery.of(context).size.width/50,
                                                width: MediaQuery.of(context).size.width/18,
                                                decoration: BoxDecoration(
                                                  
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  gradient: LinearGradient(colors:[
                                                    Color(0xff8F1560),
                                                    Color(0xff253269)
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text('Show more',
                                                  style: GoogleFonts.roboto(
                                                    color: Colors.white,
                                                  ),),
                                                ),
                                              )
                                            ],)
                                        )
                      
                      
                                        
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          BsCardContainer(
                            
                            child: BsRow(
                              gutter: EdgeInsets.only(left: 50.0, right: 50.0, top: 5.0, bottom: 5.0),
                              children: [
                         
                                BsCol(
                                  
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                    
                                      color: Color(0xffCCD0F1))),
                                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                  sizes: ColScreen(
                                     xs: Col.col_6,
                                          sm: Col.col_4,
                        
                                          md: Col.col_4,
                                          lg: Col.col_4,
                                          xl: Col.col_4,),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/4,
                                    child: BsRow(
                                      children: [
                                        BsCol(
                                         
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          
                                          ),
                                          padding: EdgeInsets.all(10.0),
                                          sizes: ColScreen(
                                               xs: Col.col_12,
                                            sm: Col.col_12,
                        
                                            md: Col.col_12,
                                            lg: Col.col_12,
                                            xl: Col.col_12,),
                                          child: BsRow(
                                            children: [
                                              BsCol(child:
                                            BsRow(
                                        
                                              children: [
                                                BsCol(
                                                  sizes: ColScreen(
                                               xl: Col.col_9,),
                                                  child:Row(children: [
                                                  Image.asset('assets/logo.png'),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text('Freshworks',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff202124),
                                                      fontSize: 16.0,
                                                    )),
                                                    Text('Chennai, Tamil Nadu',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff9B9B9B),
                                                      fontSize: 10.0,
                                                    )),],)
                      
                                                ],
                                              ),),
                                              BsCol(
                                                sizes: ColScreen(
                                                  sm:Col.col_10,
                                                  md: Col.col_9,
                                                  lg: Col.col_9,
                                               xl: Col.col_3,),
                                                child:Padding(
                                                  padding: const EdgeInsets.only(left:20.0),
                                                  child: Row(children: [
                                                  Icon(Icons.bookmark,color: Color(0xff253269),),
                                                  Icon(Icons.more_vert)
                                              ],),
                                                ))
                                                
                                              ],
                                            ),)
                                            ],
                                          )
                                        ),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_8,),
                                        
                                          padding: EdgeInsets.all(10.0),
                                          child: BsRow(children: [
                                            BsCol(child: Column(
                                             children:[
                                               Text('Software Engineer',
                                               style: GoogleFonts.roboto(
                                                 color: Color(0xff202124),
                                                 fontSize: 21.0,
                                               )),
                                               BsRow(
                                                 padding: EdgeInsets.only(left: 10.0),
                                                 children: [
                                                   BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Padding(
                                                         padding: const EdgeInsets.all(2.0),
                                                         child: Text('Angular',
                                                         style: TextStyle(
                                                            color: Color(0xff253269),
                                                            fontSize: 12.0,
                                                          
                                                         ),),
                                                       ),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                      
                                                 ],
                                               ),
                                               Padding(
                                                 padding: const EdgeInsets.only(left:8.0),
                                                 child: Column(children: [
                                                   Row(children: [
                                                     Icon(Icons.star,
                                                     size: 12,
                                                     ),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                 
                                                 ],),
                                               )
                                              
                                               ]
                                            ),),
                                            
                                          ],)),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_4,),
                                            child:Column(children: [
                                              PieChart(
                                        dataMap: dataMap,
                                        animationDuration:
                                            Duration(milliseconds: 800),
                                        chartLegendSpacing: 10,
                                        chartRadius: MediaQuery.of(context).size.width/30,
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
                                      Container(
                                                height: MediaQuery.of(context).size.width/50,
                                                width: MediaQuery.of(context).size.width/18,
                                                decoration: BoxDecoration(
                                                  
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  gradient: LinearGradient(colors:[
                                                    Color(0xff8F1560),
                                                    Color(0xff253269)
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text('Show more',
                                                  style: GoogleFonts.roboto(
                                                    color: Colors.white,
                                                  ),),
                                                ),
                                              )
                                            ],)
                                        )
                      
                      
                                        
                                      ],
                                    ),
                                  ),
                                ),
                               BsCol(
                                  
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                    
                                      color: Color(0xffCCD0F1))),
                                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                  sizes: ColScreen(
                                     xs: Col.col_6,
                                          sm: Col.col_4,
                        
                                          md: Col.col_4,
                                          lg: Col.col_4,
                                          xl: Col.col_4,),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/4,
                                    child: BsRow(
                                      children: [
                                        BsCol(
                                         
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          
                                          ),
                                          padding: EdgeInsets.all(10.0),
                                          sizes: ColScreen(
                                               xs: Col.col_12,
                                            sm: Col.col_12,
                        
                                            md: Col.col_12,
                                            lg: Col.col_12,
                                            xl: Col.col_12,),
                                          child: BsRow(
                                            children: [
                                              BsCol(child:
                                            BsRow(
                                        
                                              children: [
                                                BsCol(
                                                  sizes: ColScreen(
                                               xl: Col.col_9,),
                                                  child:Row(children: [
                                                  Image.asset('assets/logo.png'),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text('Freshworks',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff202124),
                                                      fontSize: 16.0,
                                                    )),
                                                    Text('Chennai, Tamil Nadu',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff9B9B9B),
                                                      fontSize: 10.0,
                                                    )),],)
                      
                                                ],
                                              ),),
                                              BsCol(
                                                sizes: ColScreen(
                                                  sm:Col.col_10,
                                                  md: Col.col_9,
                                                  lg: Col.col_9,
                                               xl: Col.col_3,),
                                                child:Padding(
                                                  padding: const EdgeInsets.only(left:20.0),
                                                  child: Row(children: [
                                                  Icon(Icons.bookmark,color: Color(0xff253269),),
                                                  Icon(Icons.more_vert)
                                              ],),
                                                ))
                                                
                                              ],
                                            ),)
                                            ],
                                          )
                                        ),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_8,),
                                        
                                          padding: EdgeInsets.all(10.0),
                                          child: BsRow(children: [
                                            BsCol(child: Column(
                                             children:[
                                               Text('Software Engineer',
                                               style: GoogleFonts.roboto(
                                                 color: Color(0xff202124),
                                                 fontSize: 21.0,
                                               )),
                                               BsRow(
                                                 padding: EdgeInsets.only(left: 10.0),
                                                 children: [
                                                   BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Padding(
                                                         padding: const EdgeInsets.all(2.0),
                                                         child: Text('Angular',
                                                         style: TextStyle(
                                                            color: Color(0xff253269),
                                                            fontSize: 12.0,
                                                          
                                                         ),),
                                                       ),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                      
                                                 ],
                                               ),
                                               Padding(
                                                 padding: const EdgeInsets.only(left:8.0),
                                                 child: Column(children: [
                                                   Row(children: [
                                                     Icon(Icons.star,
                                                     size: 12,
                                                     ),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                 
                                                 ],),
                                               )
                                              
                                               ]
                                            ),),
                                            
                                          ],)),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_4,),
                                            child:Column(children: [
                                              PieChart(
                                        dataMap: dataMap,
                                        animationDuration:
                                            Duration(milliseconds: 800),
                                        chartLegendSpacing: 10,
                                        chartRadius: MediaQuery.of(context).size.width/30,
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
                                      Container(
                                                height: MediaQuery.of(context).size.width/50,
                                                width: MediaQuery.of(context).size.width/18,
                                                decoration: BoxDecoration(
                                                  
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  gradient: LinearGradient(colors:[
                                                    Color(0xff8F1560),
                                                    Color(0xff253269)
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text('Show more',
                                                  style: GoogleFonts.roboto(
                                                    color: Colors.white,
                                                  ),),
                                                ),
                                              )
                                            ],)
                                        )
                      
                      
                                        
                                      ],
                                    ),
                                  ),
                                ),
                                 BsCol(
                                  
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                    
                                      color: Color(0xffCCD0F1))),
                                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                  sizes: ColScreen(
                                     xs: Col.col_6,
                                          sm: Col.col_4,
                        
                                          md: Col.col_4,
                                          lg: Col.col_4,
                                          xl: Col.col_4,),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height/4,
                                    child: BsRow(
                                      children: [
                                        BsCol(
                                         
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          
                                          ),
                                          padding: EdgeInsets.all(10.0),
                                          sizes: ColScreen(
                                               xs: Col.col_12,
                                            sm: Col.col_12,
                        
                                            md: Col.col_12,
                                            lg: Col.col_12,
                                            xl: Col.col_12,),
                                          child: BsRow(
                                            children: [
                                              BsCol(child:
                                            BsRow(
                                        
                                              children: [
                                                BsCol(
                                                  sizes: ColScreen(
                                               xl: Col.col_9,),
                                                  child:Row(children: [
                                                  Image.asset('assets/logo.png'),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text('Freshworks',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff202124),
                                                      fontSize: 16.0,
                                                    )),
                                                    Text('Chennai, Tamil Nadu',
                                                    style:GoogleFonts.roboto(
                                                      color: Color(0xff9B9B9B),
                                                      fontSize: 10.0,
                                                    )),],)
                      
                                                ],
                                              ),),
                                              BsCol(
                                                sizes: ColScreen(
                                                  sm:Col.col_10,
                                                  md: Col.col_9,
                                                  lg: Col.col_9,
                                               xl: Col.col_3,),
                                                child:Padding(
                                                  padding: const EdgeInsets.only(left:20.0),
                                                  child: Row(children: [
                                                  Icon(Icons.bookmark,color: Color(0xff253269),),
                                                  Icon(Icons.more_vert)
                                              ],),
                                                ))
                                                
                                              ],
                                            ),)
                                            ],
                                          )
                                        ),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_8,),
                                        
                                          padding: EdgeInsets.all(10.0),
                                          child: BsRow(children: [
                                            BsCol(child: Column(
                                             children:[
                                               Text('Software Engineer',
                                               style: GoogleFonts.roboto(
                                                 color: Color(0xff202124),
                                                 fontSize: 21.0,
                                               )),
                                               BsRow(
                                                 padding: EdgeInsets.only(left: 10.0),
                                                 children: [
                                                   BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Text('Angular',
                                                       style: TextStyle(
                                                          color: Color(0xff253269),
                                                          fontSize: 12.0,
                                                        
                                                       ),),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                                                  BsCol(
                                                     padding: EdgeInsets.all(8),
                                                     sizes:ColScreen(xl:Col.col_4),
                                                     child:Container(
                                                       child: Padding(
                                                         padding: const EdgeInsets.all(2.0),
                                                         child: Text('Angular',
                                                         style: TextStyle(
                                                            color: Color(0xff253269),
                                                            fontSize: 12.0,
                                                          
                                                         ),),
                                                       ),
                                                       decoration: BoxDecoration(
                                                          color: Color(0xffF7F8FC),
                                                         borderRadius: BorderRadius.circular(5.0),
                                                       ),
                                                       height:MediaQuery.of(context).size.width/70,
                                                      )),
                      
                                                 ],
                                               ),
                                               Padding(
                                                 padding: const EdgeInsets.only(left:8.0),
                                                 child: Column(children: [
                                                   Row(children: [
                                                     Icon(Icons.star,
                                                     size: 12,
                                                     ),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                   Row(children: [
                                                     Icon(Icons.cases,size: 12,),
                                                     Text('1-3 Years Experience',
                                                     style: TextStyle(fontSize: 12,
                                                     color:Color(0xff9B9B9B),))
                                                   ]),
                                                 
                                                 ],),
                                               )
                                              
                                               ]
                                            ),),
                                            
                                          ],)),
                                        BsCol(
                                          sizes: ColScreen(
                                            lg:Col.col_6,
                                            xl:Col.col_4,),
                                            child:Column(children: [
                                              PieChart(
                                        dataMap: dataMap,
                                        animationDuration:
                                            Duration(milliseconds: 800),
                                        chartLegendSpacing: 10,
                                        chartRadius: MediaQuery.of(context).size.width/30,
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
                                      Container(
                                                height: MediaQuery.of(context).size.width/50,
                                                width: MediaQuery.of(context).size.width/18,
                                                decoration: BoxDecoration(
                                                  
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  gradient: LinearGradient(colors:[
                                                    Color(0xff8F1560),
                                                    Color(0xff253269)
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text('Show more',
                                                  style: GoogleFonts.roboto(
                                                    color: Colors.white,
                                                  ),),
                                                ),
                                              )
                                            ],)
                                        )
                      
                      
                                        
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
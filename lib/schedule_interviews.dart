// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables


import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jsoprtsweb/colors.dart';
class ScheduleInterview extends StatefulWidget {
  const ScheduleInterview({ Key? key }) : super(key: key);

  @override
  State<ScheduleInterview> createState() => _ScheduleInterviewState();
}

class _ScheduleInterviewState extends State<ScheduleInterview> {
  Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xffF7F8FC);
      }
      return Color(0xffF7F8FC);
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(children: [
          Card(
           child: Padding(
             padding: const EdgeInsets.only(top:30.0,left: 40,right: 40,bottom: 30),
             child: Column(
               children: [
                 BsRow(
                    children: [
                    BsCol(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text('Scheduled Interviews',
                       style: TextStyle(
                         fontSize: 24,
                         fontWeight: FontWeight.w500,
                         color:primaryColor1
                       ),),
                     ),
                      
                    ),
                    BsCol(
                     child: Padding(
                       padding: const EdgeInsets.only(left:8,bottom:8.0),
                       child: Text('These are the interviews that are confirmed, See more details and attend an interview from here.',
                       style: GoogleFonts.roboto(
                         fontSize: 14,
                         color:Color(0xff9B9B9B)
                       ),),
                     ),
                      
                    ),
                    BsCol(
                      child: DataTable(
                        headingTextStyle: TextStyle(color: primaryColor1,fontSize: 14,fontWeight: FontWeight.w500),
                        dataRowHeight: MediaQuery.of(context).size.height*0.12,
                        decoration: BoxDecoration(
                        
                          borderRadius: BorderRadius.circular(10)),
                        headingRowColor:MaterialStateProperty.resolveWith(getColor),
      columns:  [
      
        DataColumn(
          label: Padding(
            padding: EdgeInsets.only(left:MediaQuery.of(context).size.height*0.1   ),
            child: Text(
              'JOB  TITLE',
        
            ),
          ),
        ),
        DataColumn(
          label: Padding(
            padding: EdgeInsets.only(left:MediaQuery.of(context).size.height*0.05),
            child: Text(
              'DETAILS',
              
            ),
          ),
        ),
        DataColumn(
          
          label: Wrap(
            children:[ Text(
              'INTERVIEW TIME',
              
            ),]
          ),
        ),
        DataColumn(label: Text('MATCH %')),
        DataColumn(label: Padding(
          padding:  EdgeInsets.only(left:MediaQuery.of(context).size.height*0.05),
          child: Wrap(children: [Text('ACTION')]),
        )),
      ],
      rows:  <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Row(children: [
              Image.asset('assets/logo.png'),
              Wrap(
                direction: Axis.vertical,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment: WrapCrossAlignment.start,
                                          children: [
                                            Wrap(
                                              children:[ Padding(
                                                padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                                                child: Text('Excecutive Assistant',
                                                overflow: TextOverflow.visible,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18,
                                                  color:Color(0xff212121)
                                                
                                                ),),
                                              ),
                                          ]),
                                            Padding(
                                              padding: EdgeInsets.only(left:MediaQuery.of(context).size.height*0.01),
                                              child: Text('Freshworks Inc.',
                                              style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                color:Color(0xff9B9B9B))),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left:MediaQuery.of(context).size.height*0.01),
                                              child: Text('Job ID : 5718294',
                                              style: GoogleFonts.roboto(
                                                fontSize: 11,
                                                color:Color(0xff9B9B9B))),
                                            ),
                                          ],
                                      ),
            ],)),
            DataCell(Padding(
              padding: EdgeInsets.only(left:MediaQuery.of(context).size.height*0.05),
              child: Wrap(
                children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  Padding(
                    padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01,bottom:MediaQuery.of(context).size.height*0.01),
                    child: Row(children: [
                      Icon(Icons.stars,size: 15 ,color: Color(0xff995F6368),),
                      Padding(
                        padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01,left:MediaQuery.of(context).size.height*0.01),
                        child: Text('1-3 years of experience',
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 14
                          ),),
                      )
                    ],),
                  ),
                  Row(children: [
                    Icon(Icons.work,size: 15 ,color: Color(0xff995F6368),),
                    Padding(
                      padding:  EdgeInsets.only(left:MediaQuery.of(context).size.height*0.01),
                      child: Text('Full time / Onsitence',style: TextStyle(
                        color: Color(0xff9B9B9B),
                        fontSize: 14
                        ),),
                    )
                  ],),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Row(children: [
                      Icon(Icons.location_on,size: 15 ,color: Color(0xff995F6368),),
                      Padding(
                        padding:  EdgeInsets.only(left:MediaQuery.of(context).size.height*0.01), 
                        
                        child: Text('Chennai, Bangalore',style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 14
                          ),),
                      )
                    ],),
                  )
                ],),
            ),),
            
            DataCell(Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Wrap(
                children: [
                  Text('22nd March 2022',
                  style: TextStyle(
                        color: Color(0xff9B9B9B),
                        fontSize: 14
                        ),),
                  Text('04:00 PM',style: TextStyle(
                        color: Color(0xff9B9B9B),
                        fontSize: 14
                        ))
                ],
              ),
            )),
            DataCell( Padding(
              padding: EdgeInsets.only(left:MediaQuery.of(context).size.height*0.03),
              child: Text('70%',style: TextStyle(
                color: Color(0xffFD8D3C),
                fontSize: 14
                ),),
            )),
            DataCell(
                                                MaterialButton(
                                                  onPressed: (){
                                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>TestJobs()));
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
                                                        child: Text('Attend Interview',
                                                        style: GoogleFonts.roboto(
                                                          color: Colors.white,
                                                        ),),
                                                      ),
                                                    ),
                                                  ),
                                                ))
          ],
        ),
        // DataRow(
        //   cells: <DataCell>[
        //     DataCell(Text('Janine')),
        //     DataCell(Text('43')),
        //     DataCell(Text('Professor')),
        //   ],
        // ),
        // DataRow(
        //   cells: <DataCell>[
        //     DataCell(Text('William')),
        //     DataCell(Text('27')),
        //     DataCell(Text('Associate Professor')),
        //   ],
        // ),
      ],
    ),
                    )
                  //   BsCol(
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(5),
                  //     ),
                  //     constraints: BoxConstraints(
                  //       maxWidth: double.infinity,
                  //       maxHeight: 40,
                  //       minHeight: 40
                  //     ),
                  //     child: Card(
                  //       elevation: 0,
                  //       color: Color(0xffF7F8FC),
                  //       child: Padding(
                  //         padding: const EdgeInsets.only(left:200,right:200.0),
                  //         child: Row(
                            
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //           Text('JOB TITLE',
                  //           style: GoogleFonts.roboto(
                  //             fontSize: 14,
                  //             color:primaryColor1
                            
                  //           ),),
                  //           Text('DETAILS',
                  //           style: GoogleFonts.roboto(
                  //             fontSize: 14,
                  //             color:primaryColor1
                            
                  //           )),
                  //           // _dropDownButton(),
                  //           Text('CTC OFFERED',
                  //           style: GoogleFonts.roboto(
                  //             fontSize: 14,
                  //             color:primaryColor1
                            
                  //           )),
                  //           Text('MATCH %',
                  //           style: GoogleFonts.roboto(
                  //             fontSize: 14,
                  //             color:primaryColor1
                            
                  //           )),
                  //           Text('STATUS',
                  //           style: GoogleFonts.roboto(
                  //             fontSize: 14,
                  //             color:primaryColor1
                            
                  //           )),
                            
      
      
                  //         ]),
                  //       ),
                  //     ),
                  //   ),),
                  //   BsCol(
      
                  //           child: Wrap(
                  //             alignment: WrapAlignment.spaceBetween,
                  //             children: List.generate(20, (index) => Padding(
                  //               padding: const EdgeInsets.only(top:8,bottom:8.0),
                  //               child: Container(
                  //                 decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.circular(5),
                  //                   border: 
                  //                 Border.all(
                  //                   color: Color(0xffE6E6E6),
                                    
                  //                 width: 1),),
                  //                 child: Card(
                  //                   elevation: 0,
                  //                 child:Padding(
                  //                   padding: const EdgeInsets.all(8.0),
                  //                   child: Row(
                  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                     // alignment: WrapAlignment.spaceEvenly,
                  //                     // crossAxisAlignment:WrapCrossAlignment.center,
                  //                     // direction: Axis.horizontal,
                  //                     children: [
                  //                       Padding(
                  //                         padding: const EdgeInsets.only(left:50.0),
                  //                         child: Row(
                  //                           children: [
                  //                     Image.asset('assets/logo.png'),
                  //                     Column(
                  //                         mainAxisAlignment: MainAxisAlignment.start,
                  //                         crossAxisAlignment: CrossAxisAlignment.start,
                  //                         children: [
                  //                           Padding(
                  //                             padding: const EdgeInsets.all(5.0),
                  //                             child: Text('Excecutive Assistant',
                  //                             style: TextStyle(
                  //                               fontWeight: FontWeight.w500,
                  //                               fontSize: 18,
                  //                               color:Color(0xff212121)
                                              
                  //                             ),),
                  //                           ),
                  //                           Padding(
                  //                             padding: const EdgeInsets.only(left:5.0),
                  //                             child: Text('Freshworks Inc.',
                  //                             style: GoogleFonts.roboto(
                  //                               fontSize: 16,
                  //                               color:Color(0xff9B9B9B))),
                  //                           ),
                  //                           Padding(
                  //                             padding: const EdgeInsets.all(5.0),
                  //                             child: Text('Job ID : 5718294',
                  //                             style: GoogleFonts.roboto(
                  //                               fontSize: 11,
                  //                               color:Color(0xff9B9B9B))),
                  //                           ),
                  //                         ],
                  //                     ),]),
                  //                       ),
                  //                     Column(children: List.generate(3, (index) => Wrap(
                  //                       children: 
                  //                          [
                  //                            Padding(
                  //                              padding: const EdgeInsets.all(8.0),
                  //                              child: Icon(Icons.work,color:Color(0xff995F6368),size: 18,),
                  //                            ),
                  //                           Padding(
                  //                             padding: const EdgeInsets.all(8.0),
                  //                             child: Text('1-3 Years Experience',
                  //                             style: GoogleFonts.roboto(
                  //                               fontSize: 14,
                  //                               color:Color(0xff9B9B9B)
                  //                             ),),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )),
                  //                      Text('3.5 - 4 LPA',
                  //                     style: GoogleFonts.roboto(
                  //                             fontSize: 14,
                  //                             color:Color(0xff9B9B9B)
                  //                           ),),
                  //                     Text('84% Match',
                  //                     style: GoogleFonts.roboto(
                  //                             fontSize: 14,
                  //                             color:Color(0xffFD8D3C)
                  //                           ),),
                  //                     Text('Application Under Review',
                  //                     style: GoogleFonts.roboto(
                  //                             fontSize: 14,
                  //                             color:Color(0xffFD8D3C)
                  //                           ),),
                  //                           Icon(Icons.more_vert)
                                     
                  //                   ],),
                  //                 )
                  //           ),
                  //               ),
                  //             ))),
                  //         )
                  // ]),
               ],)]
             ),
           ),
          )
        ],),
      )
    );
  }
}
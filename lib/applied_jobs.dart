// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:html';

import 'package:google_fonts/google_fonts.dart';
import 'package:jsoprtsweb/colors.dart';
class AppliedJobs extends StatefulWidget {
  const AppliedJobs({ Key? key }) : super(key: key);

  @override
  State<AppliedJobs> createState() => _AppliedJobsState();
}

class _AppliedJobsState extends State<AppliedJobs> {
   
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
                       child: Text('Applied Jobs',
                       style: GoogleFonts.roboto(
                         fontSize: 24,
                         color:primaryColor1
                       ),),
                     ),
                      
                    ),
                    BsCol(
                     child: Padding(
                       padding: const EdgeInsets.only(left:8,bottom:8.0),
                       child: Text('See more details about the jobs you have applied for and your application status',
                       style: GoogleFonts.roboto(
                         fontSize: 14,
                         color:Color(0xff9B9B9B)
                       ),),
                     ),
                      
                    ),
                    BsCol(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: 40,
                        minHeight: 40
                      ),
                      child: Card(
                        elevation: 0,
                        color: Color(0xffF7F8FC),
                        child: Padding(
                          padding: const EdgeInsets.only(left:200,right:200.0),
                          child: Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text('JOB TITLE',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color:primaryColor1
                            
                            ),),
                            Text('DETAILS',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color:primaryColor1
                            
                            )),
                            // _dropDownButton(),
                            Text('CTC OFFERED',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color:primaryColor1
                            
                            )),
                            Text('MATCH %',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color:primaryColor1
                            
                            )),
                            Text('STATUS',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color:primaryColor1
                            
                            )),
                            
      
      
                          ]),
                        ),
                      ),
                    ),),
                    BsCol(
      
                            child: Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              children: List.generate(20, (index) => Padding(
                                padding: const EdgeInsets.only(top:8,bottom:8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: 
                                  Border.all(
                                    color: Color(0xffE6E6E6),
                                    
                                  width: 1),),
                                  child: Card(
                                    elevation: 0,
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      // alignment: WrapAlignment.spaceEvenly,
                                      // crossAxisAlignment:WrapCrossAlignment.center,
                                      // direction: Axis.horizontal,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left:50.0),
                                          child: Row(
                                            children: [
                                      Image.asset('assets/logo.png'),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Text('Excecutive Assistant',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18,
                                                color:Color(0xff212121)
                                              
                                              ),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:5.0),
                                              child: Text('Freshworks Inc.',
                                              style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                color:Color(0xff9B9B9B))),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Text('Job ID : 5718294',
                                              style: GoogleFonts.roboto(
                                                fontSize: 11,
                                                color:Color(0xff9B9B9B))),
                                            ),
                                          ],
                                      ),]),
                                        ),
                                      Column(children: List.generate(3, (index) => Wrap(
                                        children: 
                                           [
                                             Padding(
                                               padding: const EdgeInsets.all(8.0),
                                               child: Icon(Icons.work,color:Color(0xff995F6368),size: 18,),
                                             ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('1-3 Years Experience',
                                              style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                color:Color(0xff9B9B9B)
                                              ),),
                                            ),
                                          ],
                                        ),
                                      )),
                                       Text('3.5 - 4 LPA',
                                      style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              color:Color(0xff9B9B9B)
                                            ),),
                                      Text('84% Match',
                                      style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              color:Color(0xffFD8D3C)
                                            ),),
                                      Text('Application Under Review',
                                      style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              color:Color(0xffFD8D3C)
                                            ),),
                                            Icon(Icons.more_vert)
                                     
                                    ],),
                                  )
                            ),
                                ),
                              ))),
                          )
                  ]),
               ],
             ),
           ),
          )
        ],),
      )
    );
  }
}
// Widget _dropDownButton () {
//   String dropdownvalue = 'CTC OFFERED';   
  
  
//   var items = [    
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//   ];
//   return DropdownButton(
                
//               // Initial Value
//               value: dropdownvalue,
                
//               // Down Arrow Icon
//               icon: const Icon(Icons.keyboard_arrow_down),    
                
//               // Array list of items
//               items: items.map((String items) {
//                 return DropdownMenuItem(
//                   value: items,
//                   child: Text(items,
//                     style: GoogleFonts.roboto(
//                          fontSize: 24,
//                          color:primaryColor1
//                        ),),
//                 );
//               }).toList(),
//               // After selecting the desired option,it will
//               // change button value to selected value
//               onChanged: (String? newValue) { 
                
//               },
//             );
// }
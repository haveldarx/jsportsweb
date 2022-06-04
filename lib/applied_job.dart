// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:bs_flutter/bs_flutter.dart';
import 'package:bs_flutter_card/bs_flutter_card.dart';
import 'package:bs_flutter_datatable/bs_flutter_datatable.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:jsoprtsweb/colors.dart';


class My extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing',
    
      
    );
  }
}

class AppliedJob extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Datatables()
      ),
    );
  }
}

class Datatables extends StatefulWidget {
  @override
  _DatatablesState createState() => _DatatablesState();
}

class _DatatablesState extends State<Datatables> {
  ExampleSource _source = ExampleSource(data: [
    {'typeid': 0, 'typecd': 'TP1', 'typenm': 'Type Baru'},
  ]);
  ExampleSource _source1 = ExampleSource(
      data: [
        {'typeid': 0, 'typecd': 'hi', 'typenm': 'Type 1'},
        {'typeid': 0, 'typecd': 'TP2', 'typenm': 'Type 2'},
        {'typeid': 0, 'typecd': 'TP3', 'typenm': 'Type 3'},
        {'typeid': 0, 'typecd': 'TP4', 'typenm': 'Type 4'},
        {'typeid': 0, 'typecd': 'TP5', 'typenm': 'Type 5'},
      ],
      // editListener: (value, index, sources, source) {
      //   final data = source.get(index);
      //   value['typenm'] = 'Edited';

      //   source.put(index, data);
      // }
      );

  @override
  void initState() {
    _source.controller = BsDatatableController();
    super.initState();
  }

  Future loadApi(Map<String, dynamic> params) {
    return http
        .post(
      Uri.parse('http://localhost/flutter_crud/api/public/types/datatables'),
      body: params,
    )
        .then((value) {
      Map<String, dynamic> json = jsonDecode(value.body);
      setState(() {
        _source.response = BsDatatableResponse.createFromJson(json['data']);
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Datatables.net'),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: BsCard(
                children: [
                  
                  BsCardContainer(
                    decoration: BoxDecoration(color: Colors.white),
                    child: BsDatatable(
                      source: _source1,
                      title: Text('Datatables Data'),
                      columns: ExampleSource.columns,
                      style: BsDatatableStyle(
                        color: Colors.white24,
                        
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class ExampleSource extends BsDatatableSource {

  ExampleSource({
    var data = const [],
  }) : super(data: data);

  Function(dynamic, int) onEditListener = (value, index) {};
  Function(dynamic, int) onDeleteListener = (value, index) {};

  static List<BsDataColumn> get columns => <BsDataColumn>[
    BsDataColumn(
      
      label: BsCardContainer(
        decoration: BoxDecoration(color: Color(0xffF7F8FC)),
        child: Center(
          child: Text('JOB TITLE',
          style: TextStyle(color: primaryColor1,fontWeight: FontWeight.w400,fontSize: 12),
          ),
        ),
      ), orderable: false, searchable: false),
    BsDataColumn(label: Row(
      children: [
        BsCardContainer(
          
          decoration: BoxDecoration(
            
            color: Color(0xffF7F8FC)),
          child: Center(child: Text('DETAILS',style: TextStyle(color: primaryColor1,fontWeight: FontWeight.w400,fontSize: 12),))),
      ],
    ),orderable: false, width: 200.0),
    BsDataColumn(label: BsCardContainer(
      decoration: BoxDecoration(color: Color(0xffF7F8FC)),
      child: Center(child: Text('CTC OFFERED',style: TextStyle(color: primaryColor1,fontWeight: FontWeight.w400,fontSize: 12),))), columnName: 'typenm'),
    BsDataColumn(label: BsCardContainer(
      
      decoration: BoxDecoration(color: Color(0xffF7F8FC)),
      child: Center(child: Text('MATCH %',style: TextStyle(color: primaryColor1,fontWeight: FontWeight.w400,fontSize: 12),))), columnName: 'typecd',  width: 200.0),
      BsDataColumn(label: BsCardContainer(
        decoration: BoxDecoration(color: Color(0xffF7F8FC)),
        child: Center(child: Text('STATUS',style: TextStyle(color: primaryColor1,fontWeight: FontWeight.w400,fontSize: 12),))), orderable: false, searchable: false, width: 200.0),
    BsDataColumn(label: BsCardContainer(
      decoration: BoxDecoration(color: Color(0xffF7F8FC)),
      child: Center(child: Text('',style: TextStyle(color: primaryColor1,fontWeight: FontWeight.w400,fontSize: 12),))), orderable: false, searchable: false, width: 50.0),

  ];

  @override
  BsDataRow getRow(int index) {
    return BsDataRow(

      index: index, cells: <BsDataCell>[
      BsDataCell(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.png'),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(children:const [ 
                  Text('Executive Assistant',style: TextStyle(fontSize:18,color: Color(0xff212121),fontWeight: FontWeight.bold),)]),
                Text('Freshworks Inc.',style:TextStyle(color: Color(0xff9B9B9B),fontSize: 16),),
                Text('Job ID : 5718294',style:TextStyle(color: Color(0xff9B9B9B),fontSize: 11),),
                
              ],
            ),
          ),
        ],
      )),
      BsDataCell(Column(
        children: [
          Row(
            children: [
              Icon(Icons.stars,color: Color(0xff9B9B9B),size: 14,),
              Text('1-3 yeras of experience',style:TextStyle(color: Color(0xff9B9B9B),fontSize: 12),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:8,bottom:8.0),
            child: Row(
              children: [
                Icon(Icons.work,color: Color(0xff9B9B9B),size: 14,),
                Text('Full Time/Onsite',style:TextStyle(color: Color(0xff9B9B9B),fontSize: 12),),
              ],
            ),
          ),
          Row(
            children: [
              Icon(Icons.location_on,color: Color(0xff9B9B9B),size: 14,),
              Text('Chennai, Bangalore',style:TextStyle(color: Color(0xff9B9B9B),fontSize: 12),),
            ],
          ),
        ],
      )),
      BsDataCell(Column(
        children: [
          Text('3.5 - 4 LPA',
                                          style: GoogleFonts.roboto(
                                                  fontSize: 14,
                                                  color:Color(0xff9B9B9B)
                                                ),),
        ],
      ),),
      BsDataCell(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [
          Padding(
            padding:  EdgeInsets.only(top:8.0),
            child:Text('84% Match',style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              color:Color(0xff9B9B9B)
                                            ),),        ),
          
        ],)
      ),
      BsDataCell(
        Center(child: Text('Request Viewed',style: TextStyle(color: Color(0xffFD8D3C)),))
      ),
            BsDataCell(
        Center(child: Icon(Icons.more_vert_rounded))
      )
    ]);
  }
}
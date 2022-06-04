import 'dart:html';

import 'package:flutter/material.dart';
import 'package:bs_flutter/bs_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jsoprtsweb/applied_job.dart';
import 'package:jsoprtsweb/applied_jobs.dart';
import 'package:jsoprtsweb/reschedule_requests.dart';
import 'package:jsoprtsweb/sample.dart';
import 'package:jsoprtsweb/schedule_interview.dart';
import 'package:jsoprtsweb/schedule_interviews.dart';
import 'package:jsoprtsweb/search_jobs_candidate.dart';
import 'package:jsoprtsweb/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: AppliedJobs(),
    );
  }
}


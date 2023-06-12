// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class JuneBillPage extends StatefulWidget {
  const JuneBillPage({super.key});

  @override
  _JuneBillPageState createState() => _JuneBillPageState();
}

class _JuneBillPageState extends State<JuneBillPage> {
  Future<String> _getTempFilePath() async {
    final response = await http
        .get(Uri.parse('http://192.168.100.26/racitelcom_php/fetch_bills.php'));
    final encodedData = response.body;

    // Decode the base64-encoded PDF data
    final pdfData = base64Decode(encodedData);

    // Save the decoded data as a temporary PDF file
    final tempDir = await getTemporaryDirectory();
    final tempFilePath = path.join(tempDir.path, 'temp.pdf');
    await File(tempFilePath).writeAsBytes(pdfData);

    return tempFilePath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
      ),
      body: FutureBuilder<String>(
        future: _getTempFilePath(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SfPdfViewer.file(File(snapshot.data!));
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading PDF'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

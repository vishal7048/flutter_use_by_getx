// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_use_by_getx/api_without_getx/model.dart';
// import 'package:http/http.dart' as http;

// class ApiGet extends StatefulWidget {
//   const ApiGet({Key? key}) : super(key: key);

//   @override
//   State<ApiGet> createState() => _ApiGetState();
// }

// class _ApiGetState extends State<ApiGet> {
//   List<Welcome> samplePosts = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Api Test'),
//         backgroundColor: Color.fromARGB(255, 135, 209, 85),
//       ),
//       body: FutureBuilder(
//         future: getData(),
//         builder: (context, snapshot) {
//           return ListView.builder(
//             itemCount: samplePosts.length,
//             itemBuilder: (context, index) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               } else if (snapshot.hasError) {
//                 return Center(
//                   child: Text('Error: ${snapshot.error}'),
//                 );
//               } else if (snapshot.hasData) {
//                 return Container(
//                   height: 350,
//                   padding: const EdgeInsets.all(12),
//                   margin: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: const Color.fromARGB(255, 146, 142, 128),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'User id: ${samplePosts[index].userId}',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                       Text(
//                         'Id: ${samplePosts[index].id}',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                       Text(
//                         'Title: ${samplePosts[index].title}',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                       Text(
//                         'Body: ${samplePosts[index].body}',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ],
//                   ),
//                 );
//               } else {
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             },
//           );
//         },
//       ),
//     );
//   }

//   Future<List<Welcome>> getData() async {
//     try {
//       final response = await http
//           .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//       var data = jsonDecode(response.body.toString());

//       if (response.statusCode == 200) {
//         samplePosts =
//             data.map<Welcome>((index) => Welcome.fromJson(index)).toList();
//         return samplePosts;
//       } else {
//         throw Exception('Failed to load data');
//       }
//     } catch (e) {
//       throw Exception('Error: $e');
//     }
//   }
// }

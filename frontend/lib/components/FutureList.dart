// import 'dart:js_util';

// import 'package:flutter/material.dart';

// class FutureList extends StatelessWidget {
//   Future<dynamic> future_function;
//   List<dynamic> ListOF; 
//   Widget ReturnWidget;
//   const FutureList({
//     Key? key,
//     required this.future_function,
//     required this.listOF,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: future_function,
//       builder: (context, data) {
//         if (data.hasError) {
//           return Center(
//             child: Text("${data.error}"),
//           );
//         } else if (data.hasData) {
//           var items = data.data as ListOF;
//           return ListView.builder(
//               itemCount: items == null ? 0 : items.length,
//               itemBuilder: (context, index) {
//                 return ReturnWidget({data: items[index]});
//               });
//         }
//         return const Center(
//           child: Text("got null"),
//         );
//       },
//     );
//   }
// }

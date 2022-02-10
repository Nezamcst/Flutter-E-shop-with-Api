import 'package:flutter/material.dart';

CheckProduct(var Price, var IconFav, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(Price),
      Icon(IconFav),


    ],
  );
}





// Container(
//       height: 200,
//       padding: const EdgeInsets.all(12),
//       width: MediaQuery.of(context).size.width,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             fullName,
//             style:
//                 const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
//           ),
//           Text(
//             email,
//             style: const TextStyle(fontSize: 12),
//           ),
//         ],
//       ),
//       );
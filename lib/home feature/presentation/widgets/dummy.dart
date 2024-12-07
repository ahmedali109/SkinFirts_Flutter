// // const DoctorTile(
// //                   doctorName: 'Dr. Olivia Turner, M.D.',
// //                   doctorSpecification: 'Dermato-Endocrinology',
// //                   doctorImage: 'assets/images/doc1.png',
// //                 ),
// //                 const SizedBox(
// //                   height: 10,
// //                 ),
// //                 const DoctorTile(
// //                   doctorName: 'Dr. Olivia Turner, M.D.',
// //                   doctorSpecification: 'Dermato-Endocrinology',
// //                   doctorImage: 'assets/images/doc2.png',
// //                 ),
// //                 const SizedBox(
// //                   height: 10,
// //                 ),
// //                 const DoctorTile(
// //                   doctorName: 'Dr. Olivia Turner, M.D.',
// //                   doctorSpecification: 'Dermato-Endocrinology',
// //                   doctorImage: 'assets/images/doc3.png',
// //                 ),
// //                 const SizedBox(
// //                   height: 80,
// //                 ),


//  Stack(
//     children: [
//       Positioned(
//         left: 0,
//         top: 0,
//         child: Container(
//           width: 300,
//           height: 283,
//           decoration: ShapeDecoration(
//             color: const Color(0xFFC9D5FF),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(17),
//             ),
//           ),
//         ),
//       ),
//       Positioned(
//         left: 22,
//         top: 170,
//         child: SizedBox(
//           width: 257,
//           height: 39,
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Container(
//                   width: 257,
//                   height: 39,
//                   decoration: ShapeDecoration(
//                     color: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(13),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 21,
//                 top: 7,
//                 child: SizedBox(
//                   width: 215,
//                   height: 15,
//                   child: Text(
//                     doctor.name,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                       color: Color(0xFF225FFF),
//                       fontSize: 15,
                     
//                       fontWeight: FontWeight.w500,
//                       height: 0,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 54,
//                 top: 21,
//                 child: SizedBox(
//                   width: 148,
//                   height: 12,
//                   child: Text(
//                     doctor.specialization,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 13,

//                       fontWeight: FontWeight.w300,
//                       height: 0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       Positioned(
//         left: 22,
//         top: 18,
//         child: SizedBox(
//           width: 139.25,
//           height: 140,
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Container(
//                   width: 139.25,
//                   height: 140,
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFFD9D9D9),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(74.53),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: -47,
//                 top: -53,
//                 child: Container(
//                   width: 233,
//                   height: 235,
//                   decoration: ShapeDecoration(
//                     image: DecorationImage(
//                       image: Image.asset(doctor.image).image,
//                       fit: BoxFit.fill,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(100),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       Positioned(
//         left: 22,
//         top: 221,
//         child: Container(
//           width: 43,
//           height: 18,
//           decoration: ShapeDecoration(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(13),
//             ),
//           ),
//         ),
//       ),
//       Positioned(
//         left: 113,
//         top: 221,
//         child: Container(
//           width: 166,
//           height: 18,
//           decoration: ShapeDecoration(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(13),
//             ),
//           ),
//         ),
//       ),
//       Positioned(
//         left: 67,
//         top: 221,
//         child: Container(
//           width: 41,
//           height: 18,
//           decoration: ShapeDecoration(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(13),
//             ),
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 72,
//         top: 225,
//         child: SizedBox(
//           width: 35,
//           height: 13,
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 14,
//                 top: 1,
//                 child: SizedBox(
//                   width: 21,
//                   height: 12,
//                   child: Text(
//                     '40',
//                     style: TextStyle(
//                       color: Color(0xFF225FFF),
//                       fontSize: 12,

//                       fontWeight: FontWeight.w300,
//                       height: 0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       Positioned(
//         left: 27,
//         top: 225,
//         child: SizedBox(
//           width: 35,
//           height: 13,
//           child: Stack(
//             children: [
//               const Positioned(
//                 left: 15,
//                 top: 1,
//                 child: SizedBox(
//                   width: 20,
//                   height: 12,
//                   child: Text(
//                     '5 ',
//                     style: TextStyle(
//                       color: Color(0xFF225FFF),
//                       fontSize: 12,

//                       fontWeight: FontWeight.w300,
//                       height: 0,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Container(
//                   width: 10,
//                   height: 10,
//                   decoration: const ShapeDecoration(
//                     color: Color(0xFF225FFF),
//                     shape: StarBorder(
//                       side: BorderSide(
//                         width: 1,
//                         strokeAlign: BorderSide.strokeAlignCenter,
//                         color: Color(0xFF225FFF),
//                       ),
//                       points: 5,
//                       innerRadiusRatio: 0.45,
//                       pointRounding: 0,
//                       valleyRounding: 0,
//                       rotation: 0,
//                       squash: 0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       Positioned(
//         left: 27,
//         top: 225,
//         child: SizedBox(
//           width: 35,
//           height: 13,
//           child: Stack(
//             children: [
//               const Positioned(
//                 left: 15,
//                 top: 1,
//                 child: SizedBox(
//                   width: 20,
//                   height: 12,
//                   child: Text(
//                     '5 ',
//                     style: TextStyle(
//                       color: Color(0xFF225FFF),
//                       fontSize: 12,

//                       fontWeight: FontWeight.w300,
//                       height: 0,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Container(
//                   width: 10,
//                   height: 10,
//                   decoration: const ShapeDecoration(
//                     color: Color(0xFF225FFF),
//                     shape: StarBorder(
//                       side: BorderSide(
//                         width: 1,
//                         strokeAlign: BorderSide.strokeAlignCenter,
//                         color: Color(0xFF225FFF),
//                       ),
//                       points: 5,
//                       innerRadiusRatio: 0.45,
//                       pointRounding: 0,
//                       valleyRounding: 0,
//                       rotation: 0,
//                       squash: 0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 133,
//         top: 226,
//         child: SizedBox(
//           width: 141,
//           height: 12,
//           child: Text(
//             'Mon-Sat / 9:00AM - 5:00PM',
//             style: TextStyle(
//               color: Color(0xFF225FFF),
//               fontSize: 12,

//               fontWeight: FontWeight.w300,
//               height: 0,
//             ),
//           ),
//         ),
//       ),
//       Positioned(
//         left: 171,
//         top: 18,
//         child: Container(
//           width: 108,
//           height: 27,
//           decoration: ShapeDecoration(
//             color: const Color(0xFF225FFF),
//             shape: RoundedRectangleBorder(
//               side: const BorderSide(width: 1, color: Color(0xFF225FFF)),
//               borderRadius: BorderRadius.circular(18),
//             ),
//           ),
//         ),
//       ),
//       Positioned(
//         left: 202,
//         top: 23,
//         child: SizedBox(
//           width: 62,
//           height: 12,
//           child: Text(
//             doctor.experienceYears.toString(),
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 12,
 
//               fontWeight: FontWeight.w400,
//               height: 0,
//             ),
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 202,
//         top: 32,
//         child: SizedBox(
//           width: 59,
//           height: 10,
//           child: Text(
//             'experience',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 12,

//               fontWeight: FontWeight.w300,
//               height: 0,
//             ),
//           ),
//         ),
//       ),
//       Positioned(
//         left: 171,
//         top: 48,
//         child: Container(
//           width: 108,
//           height: 108,
//           decoration: ShapeDecoration(
//             color: const Color(0xFF225FFF),
//             shape: RoundedRectangleBorder(
//               side: const BorderSide(width: 1, color: Color(0xFF225FFF)),
//               borderRadius: BorderRadius.circular(18),
//             ),
//           ),
//         ),
//       ),
//       const Positioned(
//         left: 183,
//         top: 58,
//         child: SizedBox(
//           width: 87,
//           height: 83,
//           child: Text.rich(
//             TextSpan(
//               children: [
//                 TextSpan(
//                   text: 'Focus:',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w600,
//                     height: 0,
//                   ),
//                 ),
//                 TextSpan(
//                   text: ' The impact of hormonal imbalances on skin conditions, specializing in acne, hirsutism, and other skin disorders.',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 12,

//                     fontWeight: FontWeight.w300,
//                     height: 0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       Positioned(
//         left: 175,
//         top: 21,
//         child: SizedBox(
//           width: 21,
//           height: 21,
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Container(
//                   width: 21,
//                   height: 21,
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFFC9D5FF),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(13),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 5.74,
//                 top: 4,
//                 child: SizedBox(
//                   width: 9.72,
//                   height: 13.05,
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         left: 0,
//                         top: 0,
//                         child: Container(
//                           width: 9.72,
//                           height: 9.72,
//                           decoration: const ShapeDecoration(
//                             shape: StarBorder(
//                               side: BorderSide(
//                                 width: 1,
//                                 strokeAlign: BorderSide.strokeAlignCenter,
//                                 color: Color(0xFF225FFF),
//                               ),
//                               points: 11,
//                               innerRadiusRatio: 0.75,
//                               pointRounding: 0,
//                               valleyRounding: 0,
//                               rotation: 0,
//                               squash: 0,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       Positioned(
//         left: 22,
//         top: 245,
//         child: SizedBox(
//           width: 257,
//           height: 21,
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 236,
//                 top: 0,
//                 child: Container(
//                   width: 21,
//                   height: 21,
//                   decoration: ShapeDecoration(
//                     color: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(13),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 213,
//                 top: 0,
//                 child: Container(
//                   width: 21,
//                   height: 21,
//                   decoration: ShapeDecoration(
//                     color: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(13),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 190,
//                 top: 0,
//                 child: Container(
//                   width: 21,
//                   height: 21,
//                   decoration: ShapeDecoration(
//                     color: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(13),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 167,
//                 top: 0,
//                 child: Container(
//                   width: 21,
//                   height: 21,
//                   decoration: ShapeDecoration(
//                     color: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(13),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Container(
//                   width: 82,
//                   height: 21,
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF225FFF),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(13),
//                     ),
//                   ),
//                 ),
//               ),
//               const Positioned(
//                 left: 177,
//                 top: 6,
//                 child: SizedBox(height: 8.50, child: Stack()),
//               ),
//               const Positioned(
//                 left: 26,
//                 top: 6,
//                 child: SizedBox(
//                   width: 47,
//                   height: 12,
//                   child: Text(
//                     'Schedule',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 12,

//                       fontWeight: FontWeight.w300,
//                       height: 0,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 218,
//                 top: 5,
//                 child: Container(
//                   width: 11,
//                   height: 11,
//                   decoration: const ShapeDecoration(
//                     shape: StarBorder(
//                       side: BorderSide(
//                         width: 1,
//                         strokeAlign: BorderSide.strokeAlignCenter,
//                         color: Color(0xFF225FFF),
//                       ),
//                       points: 5,
//                       innerRadiusRatio: 0.45,
//                       pointRounding: 0,
//                       valleyRounding: 0,
//                       rotation: 0,
//                       squash: 0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   ),
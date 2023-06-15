

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:onlineshoui/models/Product.dart';
//
// class DatabaseService {
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//
//
//   Stream<List<Product>> streamProducts(User user) {
//
//     var ref = _db.collection('products');
//     return ref.snapshots()
//         .map((list) =>
//         list.documents.map((doc) => Product.fromMap(doc.data)).toList()
//     );
//
//   }
//
//
// }
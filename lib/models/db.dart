

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:onlineshoui/models/Product.dart';

class DatabaseService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Product>> streamProducts()  {
    var ref =  _db.collection('Products');


    return ref.snapshots().map((list) =>
    list.docs.map((doc) => Product.fromMap(doc.data())).toList())
      ;

  }


}
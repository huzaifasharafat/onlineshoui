import 'package:flutter/material.dart';
import 'package:onlineshoui/models/Product.dart';


class body extends StatelessWidget {
  final Product product;

  const body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget> [
                Container(
                  margin: EdgeInsets.only(top: size.height *0.3),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(24))
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:onlineshoui/constants.dart';
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget> [
                      const Text(
                        "Aristocratic Hand Bag",
                        style:  TextStyle(
                          color: Colors.white
                        ),
                      ),
                      Text(
                          product.title,
                        style:
                        Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(
                            color : Colors.white,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: kDefaultPaddin,),
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: "Price"),
                                TextSpan(
                                  text: "\$${product.price}",
                                  style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,

                                  )
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: kDefaultPaddin,),
                          Expanded(child: Image.asset(
                              product.image,
                              fit: BoxFit.fitWidth,
                          )
                          ),
                        ],
                      ),
                    ],
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

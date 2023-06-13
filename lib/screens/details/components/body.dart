import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlineshoui/constants.dart';
import 'package:onlineshoui/models/Product.dart';
import 'package:onlineshoui/screens/details/components/cart_counter.dart';
import 'package:onlineshoui/screens/details/components/color_and_size.dart';
import 'package:onlineshoui/screens/details/components/counter_with_fav_btn.dart';
import 'package:onlineshoui/screens/details/components/description.dart';
import 'package:onlineshoui/screens/details/components/product_title_with_image.dart';


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
                  padding: EdgeInsets.only(
                      top: size.height*0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                  ),
                  //height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24)
                    ),
                  ),
                  child: Column(
                    children: <Widget> [
                      ColorAndSize(product: product),
                      Description(product: product),
                      const CounterWithFavBtn(),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPaddin
                          ),
                        child: Row(
                          children: <Widget> [
                            Container(
                              height: 50,
                              width: 58,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: product.color,
                                )
                              ),
                              child: IconButton(
                                icon: SvgPicture.asset(
                                  "assets/icons/add_to_cart.svg"
                                ),
                                onPressed: () {} ,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}





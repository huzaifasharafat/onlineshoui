import 'package:flutter/material.dart';
import 'package:onlineshoui/constants.dart';
import 'package:onlineshoui/models/Product.dart';
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

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text("Color"),
              Row(children: <Widget> [
                ColorDot(color: Color(0xff356c95), isSelected: true,),
                ColorDot(color: Color(0xfff7c078)),
                ColorDot(color: Color(0xffa29b9b)),
              ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan( text: "Size\n"),
                TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold)
                )
              ],
          ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPaddin/4,
        right: kDefaultPaddin /2,

      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color
        ),
      ),
    );
  }
}


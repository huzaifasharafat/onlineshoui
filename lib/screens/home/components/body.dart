import 'package:flutter/material.dart';
import 'package:onlineshoui/constants.dart';
import 'package:onlineshoui/models/Product.dart';
import 'package:onlineshoui/screens/home/components/categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold)
            ,
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics()
                ),// make scroll bounce
                scrollDirection: Axis.vertical,
                itemCount: products.length,
                  gridDelegate: const
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.75,
                          mainAxisSpacing: kDefaultPaddin,
                          crossAxisSpacing: kDefaultPaddin,
                      ),
                  itemBuilder: (context, index) => ItemCard(
                    product: products[index]
                  ),
              ),
            ),
        ),
      ],

    );
  }
}

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function? press;

  const ItemCard({
     Key? key,
     this.product,
     this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          // height: 180,
          // width: 160,
          decoration: BoxDecoration(
            color: product?.color,
            borderRadius: BorderRadius.circular(16)
          ),
          child: Image.asset(product!.image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric( vertical: kDefaultPaddin/4 ),
          child: Text(
            product!.title,
            style: TextStyle(color: kTextLightColor),),
        ),
        Text(
          "\$${product!.price}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

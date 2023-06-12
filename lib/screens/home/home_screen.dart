import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshoui/constants.dart';
import 'package:onlineshoui/screens/home/components/body.dart';
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg",
            color: kTextColor,
          ),
          // By default our icon color is white
          onPressed: (){},

        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg",
            color: kTextColor,
          ),
          // By default our icon color is white
          onPressed: (){},
        ),
        SizedBox(width: kDefaultPaddin / 2,)

      ],
    );
  }
}

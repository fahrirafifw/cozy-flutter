import 'package:cozy/models/city.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(
        vertical: edge,
      ),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              'Explore Now',
              style: blackTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              'Mencari kosan yang cozy',
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text(
              'Popular Cities',
              style: regularTextStyle.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 24,
                ),
                CityCard(
                    City(id: 1, name: 'Jakarta', imageUrl: 'assets/city1.png')),
                SizedBox(
                  width: 20,
                ),
                CityCard(
                    City(id: 2, name: 'Bandung', imageUrl: 'assets/city2.png')),
                SizedBox(
                  width: 20,
                ),
                CityCard(City(
                    id: 3, name: 'Surabaya', imageUrl: 'assets/city3.png')),
                SizedBox(
                  width: 24,
                )
              ],
            ),
          )
        ],
      ),
    )));
  }
}

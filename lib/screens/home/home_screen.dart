import 'package:flutter/material.dart';
import 'package:food_ui_kit/demoData.dart';

import '../../constants.dart';
// import '../../demoData.dart';
import '../components/image_carousel.dart';
import '../components/restaurant_info_medium_card.dart';
import '../components/section_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
        elevation: 0,
        floating: true,
        title: Column(
          children: [
            Text(
              "Delivery to".toUpperCase(),
              style: Theme.of(context).textTheme.caption!.copyWith(color: kAccentColor),
            ),
            Text("San Francisco",
            style: TextStyle(color: Colors.black),)
          ],
        ),
        actions: [
          TextButton(onPressed: (){}, child: Text("Filter", style: TextStyle(color: Colors.black),))
        ],
          ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  sliver: SliverToBoxAdapter(
            child: ImageCarousel()
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(defaultPadding),
          sliver: SectionTitle(
            title: "Featered Partners",
            press: (){},
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoMediumCardData.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: RestaurantInfoMediumCard(
                    title: demoMediumCardData[index]['name'],
                    location: demoMediumCardData[index]['location'],
                    image: demoMediumCardData[index]['image'],
                    delivertTime: demoMediumCardData[index]['delivertTime'],
                    rating: demoMediumCardData[index]['rating'],
                    press: (){},
                  ),
                ),),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(defaultPadding),
          sliver: SliverToBoxAdapter(
            child: Image.asset("assets/images/Banner.png")
          ),
        ),

      
        SliverPadding(
          padding: EdgeInsets.all(defaultPadding),
          sliver: SectionTitle(
            title: "Best Pick",
            press: (){},
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoMediumCardData.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: RestaurantInfoMediumCard(
                    title: demoMediumCardData[index]['name'],
                    location: demoMediumCardData[index]['location'],
                    image: demoMediumCardData[index]['image'],
                    delivertTime: demoMediumCardData[index]['delivertTime'],
                    rating: demoMediumCardData[index]['rating'],
                    press: (){},
                  ),
                ),),
            ),
          ),
        ),
        ],)
    );
  }
}





import 'dart:io';

import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/model/restaurants.dart';

class restaurantPage extends StatelessWidget {
  final Restaurant restaurant;

  restaurantPage(this.restaurant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UniMeals'),
        backgroundColor: Color(0xFF8C2D19),
        centerTitle: true,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container( //apply margin and padding using Container Widget.
                padding: EdgeInsets.all(30),
                child: Text(
                  restaurant.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 30,
                    color: mainRed,  //
                  ),
                ),
              ),
              Image.asset(
                restaurant.imageUrl,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Horário: 8:30 às 19:00',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: mainRed),
                ),
              ),
              FloatingActionButton.extended(
                label: Text('Ver localização'), // <-- Text
                backgroundColor: mainRed,
                icon: Icon( // <-- Icon
                  Icons.location_pin,
                  size: 24.0,
                ),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  restaurant.location,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Dá o teu feedback',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,
                      color: Colors.amber),
                  Text(restaurant.rating.toString()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  FloatingActionButton.extended(
                    label: Text('Gosto'), // <-- Text
                    backgroundColor: mainOrange,
                    icon: Icon( // <-- Icon
                      Icons.thumb_up_alt_outlined,
                      size: 15.0,
                    ),
                    onPressed: () {},
                  ),
                  FloatingActionButton.extended(
                    label: Text('Não gosto'), // <-- Text
                    backgroundColor: mainOrange,
                    icon: Icon( // <-- Icon
                      Icons.thumb_down_alt_outlined,
                      size: 15.0,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../base/app_styles.dart';

class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return ListView(
                padding: const EdgeInsets.all(20),
                children: [
        Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        Text('Good morning', style: AppStyles.headLineStyle3),
                  const SizedBox(height: 5),
        Text('Book Tickets', style: AppStyles.headLineStyle1),
                ],
              ),
        Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Search icon'), Text('Empty space')],
          ),
        ],
      );
    }
}
import 'package:flutter/material.dart';
import 'package:planting_life/widgets/bottom_menu.dart';
import 'package:planting_life/widgets/sidebar.dart';

import '../models/plant.dart';

class HomeScreen extends StatelessWidget {
  final List<Plant> plants = [
    Plant(
      name: 'Jade Plant',
      imageUrl: 'assets/images/jade.jpg',
      careInfo: 'jade plants do best in daytime temperatures of 65 to 75 degrees F (18-24 C), and 50 to 55 degrees F (10-13 C) at night.',
      tips: [
        'Plant in loose, well-draining soil.',
        'Place in a bright window that receives indirect light; a south-facing or west-facing window works well.',
        'Water the plant frequently during the spring and summer to keep the soil moist—but never soggy.'
      ], price: '750',
    ),
    Plant(
      name: 'white rose',
      imageUrl: 'assets/images/whiterose.jpg',
      careInfo: 'Prune your white roses in late winter or early spring before new growth appears.',
      tips: [
        'Fertilizer: Roses grow more vigorously, bloom more prolifically, and show greater resistance to diseases if fertilized during the growing season.'
      ], price: '800',
    ),
    Plant(
      name: 'lilly',
      imageUrl: 'assets/images/lilly.jpg',
      careInfo: 'They grow well in full sun, part sun, dappled shade, and sometimes even light shade.',
      tips: [
        ' Water the plants deeply once or twice a week.',
        'Be sure to water at the base of the plant to reduce the risk of fungal diseases.',
      ], price: '650',
    ),
    Plant(
      name: 'moneyplant',
      imageUrl: 'assets/images/moneyplant.jpg',
      careInfo: 'Money plants grow well in bright indirect sunlight and partially shady areas.',
      tips: [
        'Watering: Water your money plant when the top inch of soil becomes dry.',
        'Soil: Use well-draining, peat-based potting mix.',
        'Propagation: Propagate using stem cuttings or air layering'
      ], price: '300',
    ),
    Plant(
      name: 'lavender',
      imageUrl: 'assets/images/lavender.jpg',
      careInfo: 'Established lavender plants are extremely drought tolerant and only need to be watered during prolonged dry spells.',
      tips: [
        'Lavender needs full sun to grow and thrive. ',
        ' It requires at least six hours of direct sunlight each day. ',
        'During the winter, when plants are dormant, no supplemental watering is needed.'
      ], price: '850',
    ),
    Plant(
      name: 'lotus',
      imageUrl: 'assets/images/lotus.jpg',
      careInfo: 'Fill a container with the soil and cover it with rhizomes, leaving the pointed tips exposed.',
      tips: [
        'Make sure your container has no drainage hole',
        'Lotus need 6 hours sun a day.',
        'Fertilize in summer.'
      ], price: '450',
    ),
    Plant(
      name: 'jasmine',
      imageUrl: 'assets/images/jasmine.jpg',
      careInfo: 'If it is unusually dry or hot, increase the frequency, but let the soil dry out in between.',
      tips: [
        'Water when top inch of soil is dry.',
        'Jasmine needs full sun or part shade – usually about 6 hours ',
        'Rotate plant for even growth.'
      ], price: '500',
    ),
    Plant(
      name: 'rose',
      imageUrl: 'assets/images/roja.jpg',
      careInfo: 'roses require at least 6 hours of full sun a day (preferably in the morning), a well-drained and nutrient-rich soil, and moderate amounts of water.',
      tips: [
        'Water when top inch of soil is dry.',
        'Place in bright, indirect light.',
        ' Ensure good air circulation around the plant to prevent fungal infections. Avoid crowded areas.'
      ], price: '199',
    ),
    // Add more plants as needed
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const Sidebar(),
      bottomNavigationBar: const BottomMenu(),
      body: ListView.builder(
        itemCount: plants.length,
        itemBuilder: (context, index) {
          return _buildPlantCard(context, plants[index]);
        },
      ),
    );
  }

  Widget _buildPlantCard(BuildContext context, Plant plant) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(
              plant.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plant.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  plant.careInfo,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Tips to Protect Your Plant:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: plant.tips.map((tip) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text('• $tip'),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

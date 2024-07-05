// Example structure of plant.dart
class Plant {
  final String name;
  final String imageUrl;
  final String careInfo;
  final List<String> tips;
  final String price; // Add price field

  Plant({
    required this.name,
    required this.imageUrl,
    required this.careInfo,
    required this.tips,
    required this.price, // Initialize price
  });
}

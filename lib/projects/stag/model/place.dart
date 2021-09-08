class Place {
  final String title, subtitle, imageUrl;
  final double height;

  Place({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.height,
  });

  static List<Place> generatePlaces() {
    return [
      Place(
          height: 200,
          title: "Rai Forest",
          subtitle: "Costa Rica",
          imageUrl: 'assets/general/1.jpg'),
      Place(
          height: 150,
          title: "Rai Forest",
          subtitle: "Costa Rica",
          imageUrl: 'assets/general/2.jpg'),
      Place(
          height: 200,
          title: "Rai Forest",
          subtitle: "Costa Rica",
          imageUrl: 'assets/general/3.jpeg'),
      Place(
          height: 240,
          title: "Rai Forest",
          subtitle: "Costa Rica",
          imageUrl: 'assets/general/4.jpeg'),
      Place(
          height: 120,
          title: "Rai Forest",
          subtitle: "Costa Rica",
          imageUrl: 'assets/general/5.jpeg'),
      Place(
          height: 200,
          title: "Rai Forest",
          subtitle: "Costa Rica",
          imageUrl: 'assets/general/6.jpg'),
      Place(
          height: 200,
          title: "Rai Forest",
          subtitle: "Costa Rica",
          imageUrl: 'assets/general/7.jpg'),
    ];
  }
}

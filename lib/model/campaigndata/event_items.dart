class EventItems {
  final String image;
  final String title;
  final String caption;

  EventItems({required this.image, required this.title, required this.caption});

  static List<EventItems> eventItems = [
    EventItems(
        image: 'assets/images/carevent1.jpg',
        title: "Car Event 1",
        caption: "This is Event 1"),
    EventItems(
        image: 'assets/images/carevent2.jpg',
        title: "Car Event 2",
        caption: "This is Event 2"),
  ];
}

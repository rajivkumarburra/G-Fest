class Orders {
  final String id;
  final String title;
  final double price;
  final String date;

  Orders({
    required this.id,
    required this.title,
    required this.price,
    required this.date,
  });

  static List<Orders> orders = [
    Orders(id: 'BCJSJAK', title: "Oppenheimer", price: 299, date: '22-09-2021'),
    Orders(id: 'BCJSJAK', title: "Oppenheimer", price: 299, date: '22-09-2021'),
    Orders(id: 'BCJSJAK', title: "Oppenheimer", price: 299, date: '22-09-2021'),
    Orders(id: 'BCJSJAK', title: "Oppenheimer", price: 299, date: '22-09-2021'),
    Orders(id: 'BCJSJAK', title: "Oppenheimer", price: 299, date: '22-09-2021'),
    Orders(id: 'BCJSJAK', title: "Oppenheimer", price: 299, date: '22-09-2021'),
  ];
}

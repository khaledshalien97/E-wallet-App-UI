class RecentActivityDataModel {
  final String name;
  final String date;
  final double amount;

  RecentActivityDataModel({
    required this.name,
    required this.date,
    required this.amount,
  });

  static List<RecentActivityDataModel> recentActData = [
    RecentActivityDataModel(
      name: "Martin Botosh",
      date: "May 29, 2018",
      amount: 29.00,
    ),
    RecentActivityDataModel(name: "Skylar  ", date: "May 11, 2018", amount: -24.52),
    RecentActivityDataModel(
      name: "Rayna Dorwart",
      date: "May 9, 2018",
      amount: -14.37,
    ),
    RecentActivityDataModel(
      name: "Jaydon Korsgaard",
      date: "May 2, 2018",
      amount: 4.40,
    ),


    
  ];
}

class TransactionHistoryDataModel {
  final String name;
  final String date;
  final double amount;

  TransactionHistoryDataModel({
    required this.name,
    required this.date,
    required this.amount,
  });

  static List<TransactionHistoryDataModel> transactionData = [
    TransactionHistoryDataModel(
      name: "Steven Ricardo",
      date: "Sunday, 12 Jan 22",
      amount: 29.00,
    ),
    TransactionHistoryDataModel(
      name: "Idlix",
      date: "Sunday, 8 Jan 22",
      amount: 29.00,
    ),
    TransactionHistoryDataModel(
      name: "Melia Purwanti",
      date: "Friday, 26 Dec 21",
      amount: -14.37,
    ),
    TransactionHistoryDataModel(
      name: "Robin Swan",
      date: "Friday, 16 Dec 21",
      amount: -71.57,
    ),
  ];
}

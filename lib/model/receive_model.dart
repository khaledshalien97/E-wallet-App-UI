class ReceiveItem {
  final String name;
  final String dateText;
  final double amount;

  const ReceiveItem({
    required this.name,
    required this.dateText,
    required this.amount,
  });
}

class ReceiveSection {
  final String title; // March, February, ...
  final List<ReceiveItem> items;

  const ReceiveSection({required this.title, required this.items});
}

final dummySections = <ReceiveSection>[
  ReceiveSection(
    title: "March",
    items: const [
      ReceiveItem(
        name: "Mjaika Ricardo",
        dateText: "Maret 23, 2018",
        amount: 36.47,
      ),
      ReceiveItem(
        name: "Geyrad Renaildy",
        dateText: "Maret 12, 2018",
        amount: 14.79,
      ),
    ],
  ),
  ReceiveSection(
    title: "February",
    items: const [
      ReceiveItem(
        name: "Lydia Stanton",
        dateText: "February 30, 2018",
        amount: 29.13,
      ),
      ReceiveItem(
        name: "Justin Arcand",
        dateText: "February 24, 2018",
        amount: 26.33,
      ),
      ReceiveItem(
        name: "Lincoln Levin",
        dateText: "February 2, 2018",
        amount: 7.31,
      ),
    ],
  ),
  ReceiveSection(
    title: "January",
    items: const [
      ReceiveItem(
        name: "Carla Vetrovs",
        dateText: "January 6, 2018",
        amount: 32.13,
      ),
      ReceiveItem(
        name: "Kianna Geidt",
        dateText: "January 5, 2018",
        amount: 26.68,
      ),
      ReceiveItem(
        name: "Randy Press",
        dateText: "January 3, 2018",
        amount: 47.40,
      ),
    ],
  ),
];

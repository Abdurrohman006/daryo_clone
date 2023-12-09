import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Daryo",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              selectLang(),
            ],
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Tashkent",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.cloud_queue_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "+12.0",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              currencyRate(Icons.monetization_on_outlined, '11440.00'),
              currencyRate(Icons.euro_symbol, '12265.16'),
              currencyRate(Icons.currency_ruble_outlined, '141.51'),
            ],
          ),
        ],
      ),
    );
  }

  final List<bool> _isSelected = [true, false];

  Widget selectLang() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30),
      ),
      height: 30,
      width: 165,
      child: ToggleButtons(
          isSelected: _isSelected,
          selectedBorderColor: Colors.transparent,
          borderColor: Colors.transparent,
          onPressed: (index) {
            setState(() {
              if (index == 0) {
                _isSelected[0] = true;
                _isSelected[1] = false;
              } else {
                _isSelected[0] = false;
                _isSelected[1] = true;
              }
            });
          },
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: _isSelected[0] ? Colors.white : Colors.blue,
              ),
              width: 80,
              height: 30,
              alignment: Alignment.center,
              child: Text(
                "Кирилча",
                style: TextStyle(
                  color: _isSelected[0] ? Colors.blue : Colors.white,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: _isSelected[1] ? Colors.white : Colors.blue,
              ),
              width: 80,
              height: 30,
              alignment: Alignment.center,
              child: Text(
                "Lotincha",
                style: TextStyle(
                  color: _isSelected[1] ? Colors.blue : Colors.white,
                ),
              ),
            ),
          ]),
    );
  }

  Widget currencyRate(IconData icon, String rate) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        Text(
          rate,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

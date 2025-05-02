import 'package:flutter/material.dart';

class ListileComponent extends StatelessWidget {
  const ListileComponent(
      {super.key,
      required this.icon,
      this.colorIcon = Colors.grey,
      this.bgIcon = Colors.white,
      required this.titleText,
      this.count,
      this.trainling});

  final IconData icon;
  final Color colorIcon;
  final Color bgIcon;

  final String titleText;
  final String? count;

  final Widget? trainling;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: bgIcon,
              borderRadius: const BorderRadius.all(Radius.circular(7))),
          child: Icon(
            icon,
            color: colorIcon,
            size: 20,
          )),
      title: Row(
        children: [
          Text(titleText),
          if (count != null)
            Container(
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                    color: Colors.green, shape: BoxShape.circle),
                child: Text(
                  count!,
                  style: const TextStyle(color: Colors.white),
                ))
        ],
      ),
      trailing: trainling,
    );
  }
}

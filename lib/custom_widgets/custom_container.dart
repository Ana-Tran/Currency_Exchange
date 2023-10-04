import 'package:flutter/material.dart';

Container buildContainer(DropdownButton dropdownWidget) {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(10.0),
    height: 100.0,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Select the currency you wish to convert'),
        dropdownWidget,
      ],
    ),
  );
}

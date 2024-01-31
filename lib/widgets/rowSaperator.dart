import 'package:flutter/material.dart';

class RowMaterial extends StatelessWidget {
  var name;
  var descraption;
  RowMaterial(this.name, this.descraption);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(fontSize: 17),
        ),
        Text(
          descraption,
          style: TextStyle(fontSize: 17),
        ),
      ],
    );
  }
}

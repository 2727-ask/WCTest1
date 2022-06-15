import 'package:flutter/material.dart';

import 'info_header.dart';

class RootDivision extends StatelessWidget {
  final InfoHeader? divisionHeader;
  final Widget? child;
  final double? childMargin;

  const RootDivision(
      {Key? key, this.divisionHeader, this.child, this.childMargin = 0.05})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
          left: width * 0.07, right: width * 0.07, top: width * 0.05),
      width: width * 0.8,
      child: Column(
        children: [
          divisionHeader!,
          Container(
            margin: EdgeInsets.only(top: width * 0.05),
            padding: EdgeInsets.all(width * childMargin!),
            decoration: BoxDecoration(
              color: const Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(12),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}

import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/header.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "My Files",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon:
                                SvgPicture.asset("assets/icons/Documents.svg"),
                            label: ,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

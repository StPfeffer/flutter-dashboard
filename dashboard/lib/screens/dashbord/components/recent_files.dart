import 'package:dashboard/constants.dart';
import 'package:dashboard/models/recent_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Container RecentFiles(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(defaultPadding),
    decoration: BoxDecoration(
      color: darkSecondaryColor,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Files",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(
          width: double.infinity,
          child: DataTable(
            horizontalMargin: 0,
            columnSpacing: defaultPadding,
            columns: [
              DataColumn(
                label: Text("File Name"),
              ),
              DataColumn(
                label: Text("Date"),
              ),
              DataColumn(
                label: Text("Size"),
              ),
            ],
            rows: List.generate(
              demoRecentFiles.length,
              (index) => RecentFilesDataRow(
                demoRecentFiles[index],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

DataRow RecentFilesDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon,
              width: 30,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Text(fileInfo.title),
            ),
          ],
        ),
      ),
      DataCell(
        Text(fileInfo.date),
      ),
      DataCell(
        Text(fileInfo.size),
      ),
    ],
  );
}

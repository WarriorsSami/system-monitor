import 'package:flutter/material.dart';
import 'package:frontend/models/user_stat.dart';
import 'package:frontend/ui/common/ui_helpers.dart';

class UserStatWidget extends StatelessWidget {
  final List<UserStat> usersStat;

  const UserStatWidget({
    required this.usersStat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'User Info',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        verticalSpaceSmall,
        DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'User',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Terminal',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                ),
              ),
            ),
          ],
          rows: usersStat
              .map(
                (userStat) => DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text(
                        userStat.name,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        userStat.terminal,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        )
      ],
    );
  }
}

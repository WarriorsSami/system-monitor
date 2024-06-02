import 'package:flutter/material.dart';
import 'package:frontend/models/net_connection_stat.dart';
import 'package:frontend/ui/common/ui_helpers.dart';

class NetConnectionsStatWidget extends StatelessWidget {
  final List<NetConnectionStat> netConnectionsStat;

  const NetConnectionsStatWidget({
    required this.netConnectionsStat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Network connections',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        verticalSpaceSmall,
        DataTable(
          columns: const [
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Bytes sent',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Bytes received',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
          rows: netConnectionsStat
              .map(
                (netConnectionStat) => DataRow(
                  cells: [
                    DataCell(
                      Text(
                        netConnectionStat.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        netConnectionStat.bytesSent.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        netConnectionStat.bytesRecv.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

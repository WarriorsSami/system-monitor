import 'package:flutter/material.dart';
import 'package:frontend/models/process_stat.dart';
import 'package:frontend/ui/common/ui_helpers.dart';

class ProcessesStatWidget extends StatelessWidget {
  final List<ProcessStat> processesStat;

  const ProcessesStatWidget({
    required this.processesStat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Processes Info',
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
                'PID',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
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
                'Status',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'CPU %',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Memory %',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
          rows: processesStat
              .map(
                (processStat) => DataRow(
                  cells: [
                    DataCell(
                      Text(
                        '${processStat.pid}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        processStat.name.length > 20
                            ? '${processStat.name.substring(0, 20)}...'
                            : processStat.name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        processStat.status,
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        processStat.cpuPercent.toStringAsFixed(3),
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        processStat.memoryPercent.toStringAsFixed(3),
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

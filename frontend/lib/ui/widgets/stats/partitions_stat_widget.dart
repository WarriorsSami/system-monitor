import 'package:flutter/material.dart';
import 'package:frontend/models/partition_stat.dart';
import 'package:frontend/ui/common/ui_helpers.dart';

class PartitionsStatWidget extends StatelessWidget {
  final List<PartitionStat> partitionsStat;

  const PartitionsStatWidget({
    required this.partitionsStat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Partitions Info',
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
                'Device',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Mount point',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Filesystem type',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Options',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
          rows: partitionsStat
              .map(
                (partitionStat) => DataRow(
                  cells: [
                    DataCell(
                      Text(
                        partitionStat.device,
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        partitionStat.mountpoint,
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        partitionStat.fstype,
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        partitionStat.opts.join(', '),
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

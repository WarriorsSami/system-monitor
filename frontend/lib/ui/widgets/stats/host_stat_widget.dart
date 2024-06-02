import 'package:flutter/material.dart';
import 'package:frontend/models/host_stat.dart';
import 'package:frontend/ui/common/ui_helpers.dart';

class HostStatWidget extends StatelessWidget {
  final HostStat hostStat;

  const HostStatWidget({
    required this.hostStat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Host Info',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        verticalSpaceSmall,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hostname: ${hostStat.hostname}',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            horizontalSpaceSmall,
            Text(
              'OS: ${hostStat.os}',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            horizontalSpaceSmall,
            Text(
              'Platform: ${hostStat.platform}',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            horizontalSpaceSmall,
            Text(
              'Procs: ${hostStat.procs}',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            horizontalSpaceSmall,
            Text(
              'Uptime: ${hostStat.uptime}',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

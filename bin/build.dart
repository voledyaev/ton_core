import 'dart:io';

import 'package:collection/collection.dart';

Future<void> main(List<String> arguments) async {
  final androidNdkHome = arguments.firstOrNull;
  if (androidNdkHome == null) {
    // ignore: avoid_print
    print('Provide Android NDK path');
    exit(1);
  }

  const workingDirectory = '../rust';

  Future<Process> execute({
    required String executable,
    required String command,
    Map<String, String>? environment,
  }) async =>
      Process.start(
        executable,
        [command],
        environment: environment,
        workingDirectory: workingDirectory,
        runInShell: true,
        mode: ProcessStartMode.inheritStdio,
      );

  await execute(
    executable: 'make',
    command: 'init',
  );

  await execute(
    executable: 'make',
    command: 'all',
    environment: {
      'ANDROID_NDK_HOME': androidNdkHome,
    },
  );

  exit(0);
}

import 'package:shorebird_code_push/shorebird_code_push.dart';

class CheckUpdateService {
  final ShorebirdUpdater _updater = ShorebirdUpdater();

  /// Returns the current patch number or null if none.
  Future<int?> getCurrentPatchNumber() async {
    final currentPatch = await _updater.readCurrentPatch();
    return currentPatch?.number;
  }

  /// Checks for updates and applies if an update is available.
  /// Returns true if an update was applied, false if not needed,
  /// and throws if an error occurs.
  Future<bool> checkAndUpdate() async {
    final status = await _updater.checkForUpdate();
    if (status == UpdateStatus.outdated) {
      try {
        await _updater.update();
        return true; // Update was applied
      } on UpdateException catch (error) {
        // You can log or rethrow with more context
        print('Update failed: $error');
        rethrow;
      }
    }

    return false; // Already up to date
  }

  /// Checks if a new version (patch) is available without applying it.
  Future<bool> hasNewVersion() async {
    final status = await _updater.checkForUpdate();
    return status == UpdateStatus.outdated;
  }
}

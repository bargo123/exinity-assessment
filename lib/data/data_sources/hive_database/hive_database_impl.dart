import 'package:exinity_assessment/data/data_sources/hive_database/exceptions.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'hive_database_base.dart';

class HiveDatabaseService implements HiveDatabaseBase {
  @override
  TaskEither<HiveDatabaseException, Unit> openBox<T>(String boxName) {
    return TaskEither.tryCatch(
      () async {
        await Hive.openBox<T>(boxName);
        return unit;
      },
      (e, _) => HiveDatabaseException('Failed to open box: $e', e),
    );
  }

  @override
  Either<HiveDatabaseException, int> getBoxRecordsCount<T>(String boxName) {
    return Either.tryCatch(() {
      final box = Hive.box<T>(boxName);
      return box.length;
    }, (error, stack) => HiveDatabaseException(error.toString(), error));
  }

  @override
  Either<HiveDatabaseException, List<T>> getBoxValues<T>(String boxName) {
    return Either.tryCatch(() {
      final box = Hive.box<T>(boxName);
      final values = box.values.toList();
      return values;
    }, (error, stack) {
      return HiveDatabaseException(
          'Error retrieving values from box: ${error.toString()}', error);
    });
  }

  @override
  TaskEither<HiveDatabaseException, Unit> setValue<T>(String boxName, T value) {
    return TaskEither.tryCatch(
      () async {
        final box = Hive.box<T>(boxName);
        await box.add(value);
        return unit;
      },
      (e, _) {
        return HiveDatabaseException('Failed to set value: $e', e);
      },
    );
  }

  @override
  TaskEither<HiveDatabaseException, Unit> clearBox<T>(String boxName) {
    return TaskEither.tryCatch(
      () async {
        final box = Hive.box<T>(boxName);
        await box.clear();
        return unit;
      },
      (e, _) => HiveDatabaseException('Failed to clear box: $e', e),
    );
  }

  @override
  TaskEither<HiveDatabaseException, Unit> deleteAtIndex<T>(
      String boxName, dynamic index) {
    return TaskEither.tryCatch(
      () async {
        final box = Hive.box<T>(boxName);
        await box.deleteAt(index);
        return unit;
      },
      (e, _) {
        return HiveDatabaseException('Failed to delete value: $e', e);
      },
    );
  }
}

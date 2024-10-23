import 'package:exinity_assessment/data/data_sources/hive_database/exceptions.dart';
import 'package:fpdart/fpdart.dart';

abstract class HiveDatabaseBase {
  TaskEither<HiveDatabaseException, Unit> openBox<T>(String boxName);
  TaskEither<HiveDatabaseException, Unit> setValue<T>(String boxName, T value);
  TaskEither<HiveDatabaseException, Unit> clearBox<T>(String boxName);
  TaskEither<HiveDatabaseException, Unit> deleteAtIndex<T>(
      String boxName, int index);
  Either<HiveDatabaseException, int> getBoxRecordsCount<T>(String boxName);
  Either<HiveDatabaseException, List<T>> getBoxValues<T>(String boxName);
}

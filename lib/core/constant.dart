import 'package:hive_flutter/hive_flutter.dart';
import 'package:yanvar31/model2/model.dart';

class ConstIslam {
  static adapter() {
    Hive.registerAdapter(IslamModelAdapter());
    Hive.registerAdapter(DatumAdapter());
    Hive.registerAdapter(DateAdapter());
    Hive.registerAdapter(GregorianAdapter());
    Hive.registerAdapter(DesignationAdapter());
    Hive.registerAdapter(GregorianMonthAdapter());
    Hive.registerAdapter(GregorianWeekdayAdapter());
    Hive.registerAdapter(HijriAdapter());
    Hive.registerAdapter(HijriMonthAdapter());
    Hive.registerAdapter(HijriWeekdayAdapter());
    Hive.registerAdapter(MetaAdapter());
    Hive.registerAdapter(MethodAdapter());
    Hive.registerAdapter(LocationAdapter());
    Hive.registerAdapter(ParamsAdapter());
    Hive.registerAdapter(TimingsAdapter());
  }
}

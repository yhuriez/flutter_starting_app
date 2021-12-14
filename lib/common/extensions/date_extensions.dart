
import 'package:intl/intl.dart';


extension DateExt on DateTime {

  static final DateFormat timeFormatter =  DateFormat("HH:mm");
  static final DateFormat dateFormatter =  DateFormat("dd MMMM");

    String toTimeString() => timeFormatter.format(this);

    String toDateString() => dateFormatter.format(this);
}
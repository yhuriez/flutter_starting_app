
import 'package:path_provider/path_provider.dart';

late String appDirectory;

initAppDirectory() async {
  final directory = await getApplicationDocumentsDirectory();
  appDirectory = directory.path;
}


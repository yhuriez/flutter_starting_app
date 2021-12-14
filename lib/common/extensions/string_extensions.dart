

extension StringExt on String {
  String replaceSymbols({String replacement = '_'}) {
    final regex = RegExp(r'[<>:"\/\\|?%$*+]');
    return replaceAll(regex, replacement);
  }

  String? nullIfEmpty(){
    if(isEmpty) return null;
    return this;
  }
}
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

extension FormatterExtension on double {
  String get currencyPTBR {
    final currencyFormat =
        NumberFormat.currency(locale: 'pt _BR', symbol: r'R$*');

    return currencyFormat.format(this);
  }
}

// estado = isDarkMode = boolean

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// listado de Colores inmutable
final colorListProvider = Provider((ref) => colorList);
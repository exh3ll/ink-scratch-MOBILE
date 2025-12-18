import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Holds the currently selected bottom navigation index
final dashboardIndexProvider = StateProvider<int>((ref) {
  return 0; // Default tab: Home
});

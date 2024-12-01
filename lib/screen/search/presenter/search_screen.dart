
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../share/theme/provider/theme_provider.dart';
import 'components/search_filter.dart';

@RoutePage()
class SearchScreen extends StatefulHookConsumerWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchState();
}

class _SearchState extends ConsumerState<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(themeModeNotifierProvider.notifier);
    final state = ref.watch(themeModeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('検索画面'),
              CupertinoButton(
                padding: const EdgeInsets.all( 3 ), // Remove padding if you only want the icon to be clickable
                onPressed: () {
                  notifier.toggleTheme();
                },
                child: Icon(
                  state != ThemeMode.dark
                      ? CupertinoIcons.sun_max_fill
                      : CupertinoIcons.moon,
                  size: 20,  // Set the size of the icon
                  color: CupertinoColors.systemYellow,  // Set the color of the icon
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Column(
        children: [
          SearchFilter(),
        ],
      ),
    );
  }
}
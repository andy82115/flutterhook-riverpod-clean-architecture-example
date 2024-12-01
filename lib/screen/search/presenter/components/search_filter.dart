import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../share/components/number_input_field.dart';
import '../../model/search_param.dart';
import '../provider/search_notifier.dart';

class SearchFilter extends HookConsumerWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isExtend = useState(false);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        children: [
          SearchFilterTop(
            isExtended: isExtend.value,
            onClick: () {
              isExtend.value = !isExtend.value;
            },
          ),
          isExtend.value
              ? Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withRed(200),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const SearchFilterExtend(),
                )
              : Container(),
        ],
      ),
    );
  }
}

///#[SearchFilterTop] Components

///[isExtended] will control the ExtendIcon
///[onClick] is the call back when ExtendIcon been clicked
///[isExtended] はExtendIconを制御します。
///[onClick] は、ExtendIconがクリックされたときのコールバックです。
class SearchFilterTop extends HookConsumerWidget {
  final bool isExtended;
  final Function onClick;

  const SearchFilterTop(
      {required this.isExtended, required this.onClick, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InWhereRow(),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 50),
              child: KeyWordTextField(),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CupertinoButton(
            padding: const EdgeInsets.all(
                3), // Remove padding if you only want the icon to be clickable
            onPressed: () {
              onClick();
            },
            child: Icon(
              isExtended ? CupertinoIcons.minus : CupertinoIcons.add,
              size: 20, // Set the size of the icon
              color: CupertinoColors.inactiveGray, // Set the color of the icon
            ),
          ),
        ),
      ],
    );
  }
}

class InWhereRow extends HookConsumerWidget {
  const InWhereRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(searchStateNotifierProvider.notifier);
    final inWhereData = InWhere.getStringList();
    final selectedIndex =
        useState(notifier.searchParam.queryFilter.inWhere.index);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(inWhereData.length, (index) {
          final data = inWhereData[index];

          return InkWell(
            onTap: () {
              selectedIndex.value = index;
              notifier.setSearchCondition(
                  inWhere: InWhere.values[selectedIndex.value]);
              notifier.checkKeywordAndSearch();
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: selectedIndex.value == index
                    ? Theme.of(context).colorScheme.primary.withAlpha(210)
                    : Theme.of(context).colorScheme.primary.withAlpha(120),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                data,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          );
        }),
      ),
    );
  }
}

class KeyWordTextField extends HookConsumerWidget {
  const KeyWordTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(searchStateNotifierProvider.notifier);

    return TextField(
      decoration: const InputDecoration(
          border: UnderlineInputBorder(), labelText: 'キーワード'),
      onChanged: (inputValue) {
        notifier.setSearchCondition(keyword: inputValue);
        notifier.checkKeywordAndSearch();
      },
    );
  }
}

///#[SearchFilterExtend] Components
class SearchFilterExtend extends HookConsumerWidget {
  const SearchFilterExtend({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        NumberFilter(),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: LanguageInput(),
        ),
      ],
    );
  }
}

class NumberFilter extends HookConsumerWidget {
  const NumberFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(searchStateNotifierProvider.notifier);
    var followers = useState(notifier.searchParam.queryFilter.followers);
    var forks = useState(notifier.searchParam.queryFilter.forks);
    var stars = useState(notifier.searchParam.queryFilter.stars);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: NumberInputField(
                labelText: 'フォロワーズ',
                controller:
                    TextEditingController(text: followers.value.toString()),
                onInputChange: (inputValue) {
                  followers.value = inputValue;
                  notifier.setSearchCondition(followers: inputValue);
                  notifier.checkKeywordAndSearch();
                }),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: NumberInputField(
                labelText: 'フォーク',
                controller: TextEditingController(text: forks.value.toString()),
                onInputChange: (inputValue) {
                  notifier.setSearchCondition(forks: inputValue);
                  notifier.checkKeywordAndSearch();
                }),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: NumberInputField(
                labelText: 'スター',
                controller: TextEditingController(text: stars.value.toString()),
                onInputChange: (inputValue) {
                  notifier.setSearchCondition(stars: inputValue);
                  notifier.checkKeywordAndSearch();
                }),
          ),
        ),
      ],
    );
  }
}

class LanguageInput extends HookConsumerWidget {
  const LanguageInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(searchStateNotifierProvider.notifier);
    var language = useState(notifier.searchParam.queryFilter.language);

    return TextField(
      controller: TextEditingController(text: language.value),
      decoration:
          const InputDecoration(border: OutlineInputBorder(), labelText: '言語'),
      onChanged: (inputValue) {
        notifier.setSearchCondition(language: inputValue);
        notifier.checkKeywordAndSearch();
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../router/app_router.gr.dart';
import '../provider/search_notifier.dart';
import '../state/search_state.dart';

class SearchResult extends StatefulHookConsumerWidget {
  const SearchResult({super.key});

  @override
  ConsumerState<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends ConsumerState<SearchResult> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollControllerListener);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void scrollControllerListener() {
    if (scrollController.position.maxScrollExtent == scrollController.offset) {
      final notifier = ref.read(searchStateNotifierProvider.notifier);
      if (notifier.isFetchingAllow) {
        notifier.fetchMoreData();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: _switchStateWidget(),
    );
  }

  Widget _switchStateWidget() {
    final notifier = ref.watch(searchStateNotifierProvider);
    switch (notifier.fetchState) {
      case SearchFetchState.init:
        return const Text('Keyword is empty');
      case SearchFetchState.initLoading:
        return const CircularProgressIndicator();
      case SearchFetchState.fail:
        return const Text('Loaded fail');
      case SearchFetchState.loaded:
      case SearchFetchState.moreLoading:
      case SearchFetchState.max:
        return _listViewWidget();
    }
  }

  Widget _listViewWidget() {
    final notifier = ref.watch(searchStateNotifierProvider);

    return ListView.separated(
      separatorBuilder: (_, __) => const Divider(),
      controller: scrollController,
      itemCount: notifier.repositoryList.length,
      itemBuilder: (context, index) {
        final data = notifier.repositoryList[index];
        return ListTile(
          leading: CircleAvatar(
              backgroundImage: NetworkImage(data.owner?.avatarUrl ?? '')),
          title: Text(
            data.fullName ?? 'no name',
            style: Theme.of(context).textTheme.bodyLarge,
            maxLines: 1,
          ),
          subtitle: Text(
            data.description ?? 'no description',
            style: Theme.of(context).textTheme.bodyMedium,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          onTap: () {
            AutoRouter.of(context).push(DetailRoute(
                owner: data.owner?.login ?? '', repo: data.name ?? ''));
          },
        );
      },
    );
  }
}

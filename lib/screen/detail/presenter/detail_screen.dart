import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hook_riverpod_clean_architecture/screen/detail/presenter/provider/detail_notifier.dart';
import 'package:flutter_hook_riverpod_clean_architecture/screen/detail/presenter/state/detail_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class DetailScreen extends StatefulHookConsumerWidget {
  final String owner;
  final String repo;

  const DetailScreen({
    required this.owner,
    required this.repo,
    super.key
  });

  @override
  ConsumerState<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends ConsumerState<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(detailStateNotifierProvider.notifier);

    useEffect(() {
      Future.delayed(const Duration(microseconds: 0), () {
        notifier.fetchData(owner: widget.owner, repo: widget.repo);
      });
      return () {};
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('詳細画面'),
            ],
          ),
        ),
      ),
      body: _switchWidget(),
    );
  }

  Widget _switchWidget(){
    final notifier = ref.watch(detailStateNotifierProvider);

    switch(notifier.fetchState){
      case DetailFetchState.init:
        return const Text('init');
      case DetailFetchState.loaded:
        return _infoWidget();
      case DetailFetchState.fail:
        return const Text('fail');
      case DetailFetchState.initLoading:
        return const Text('loading');
    }
  }

  Widget _infoWidget() {
    final notifier = ref.watch(detailStateNotifierProvider);

    return Container(
      padding: const EdgeInsets.all(30),
      width: double.infinity,
      child: Column(
        children: [
          CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(notifier.detailResponse.owner?.avatarUrl ?? '')
          ),
          const SizedBox(height: 30),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ..._columnDividerWidget(
                    tagName: 'Repository',
                    text: notifier.detailResponse.fullName ?? 'no repo name'
                ),
                ..._columnDividerWidget(
                    tagName: 'Owner',
                    text: notifier.detailResponse.owner?.login ?? 'no owner name'
                ),
                ..._columnDividerWidget(
                    tagName: 'Description',
                    text: notifier.detailResponse.description ?? 'no description'
                ),
                ..._columnDividerWidget(
                    tagName: 'Language',
                    text: notifier.detailResponse.language ?? 'no language tag'
                ),
                ..._columnDividerWidget(
                    icon: CupertinoIcons.star,
                    text: notifier.detailResponse.stargazersCount.toString()
                ),
                ..._columnDividerWidget(
                    icon: CupertinoIcons.eye,
                    text: notifier.detailResponse.watchersCount.toString()
                ),
                ..._columnDividerWidget(
                    icon: CupertinoIcons.link,
                    text: notifier.detailResponse.forksCount.toString()
                ),
                ..._columnDividerWidget(
                    icon: CupertinoIcons.asterisk_circle,
                    text: notifier.detailResponse.openIssuesCount.toString()
                ),
              ]
          )
        ],
      ),
    );
  }

  List<Widget> _columnDividerWidget({String? tagName, IconData? icon, required String text}){
    if (tagName == null && icon == null) return [Container()];
    return [
      tagName != null
          ? Text('$tagName: \n$text')
          : icon != null
          ? _iconPairWidget(icon, text)
          : Container(),
      const SizedBox(height: 10,)
    ];
  }

  Widget _iconPairWidget(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
        ), // Heart icon
        const SizedBox(width: 10),
        Text(text),
      ],
    );
  }
}
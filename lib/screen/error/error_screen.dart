import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/error/api_error_handle_provider.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/error/state/api_error_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///Error screen is a simple screen. No need clean architecture
@RoutePage()
class ErrorScreen extends StatefulHookConsumerWidget {
  const ErrorScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ErrorState();
}

class _ErrorState extends ConsumerState<ErrorScreen> {

  @override
  void dispose() {
    super.dispose();
    final notifier = ref.watch(apiErrorHandleNotifierProvider.notifier);
    notifier.forceBack();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('APIエラー'),
            ],
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.ant_fill,
              size: 250,
              color: Colors.red,
            ),
            const SizedBox(height: 30,),
            SizedBox(
              width: 150,
              height: 100,
              child: _errorInfo(),
            )
          ],
        ),
      ),
    );
  }

  Widget _errorInfo() {
    final notifier = ref.watch(apiErrorHandleNotifierProvider.notifier);
    final state = ref.watch(apiErrorHandleNotifierProvider);

    if (state.errorState == ErrorState.error) {
      return TextButton(
        onPressed: () {
          notifier.doRetry();
        },
        child: const Text("再試行"),
      );
    }

    if (state.errorState == ErrorState.retrying) {
      return const CircularProgressIndicator();
    }

    return Container();
  }
}
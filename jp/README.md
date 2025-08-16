言語: - [English](./en/README.md) - [日本語](./jp/README.md) 

# このプロジェクトの実行方法 :sunglasses：
Step1 -> .env.sampleをコピーして、名前は.envに変更します
```
cp .env.sample .env
```
Step2 -> 'YourToken'は自分のGIT TOKENに変更します
```
DEV_GIT_TOKEN=YourToken
PROD_GIT_TOKEN=YourToken
```
Step3
```
flutter pub get
```
Step4 -> .g/.freeze のCODEを生成します
```
flutter pub run build_runner build 
```
Step5 -> prodやdevの環境を利用しますlib/main
```
main_dev.dart / main_prod.dart
```

# 開発ステップ
1. Github apiのドキュメントをチェックする [search/repository](https://docs.github.com/en/rest/search/search?apiVersion=2022-11-28#search-repositories) , [search/repository クエリ詳細](https://docs.github.com/en/search-github/searching-on-github/searching-for-repositories)
2. 端末のバージョン確認
- [X] Andriod バージョン設定 (sdk 19 ~ 32 のみ)
- [X] iOSバージョン設定(最小バージョンのみ)

3. 主なサードパーティ: riverpod + flutter-hook + mocktail + retrofit + Dio

# コーディングのルール

1. lint -> flutter_lints
2. コミットスタイル -> [Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/)
   ```
	[optional scope]: <description> [emoji][emoji][emoji]  
  
	[optional body]
   ```

# flutter_hook + riverpod との連携方法

```mermaid  
graph LR  
A[Widgetの状態変更] -->B{複雑?}  
 B -->|はい/双方向データ| D[Riverpod] 
 B -->|いいえ/一方向データ| E[Flutter_hook + Riverpod]  
```

# ウィジェット関数 VS ウィジェットクラス

```mermaid  
graph LR  
A[頻繁に変更されるWidget?]   
    A -->|Yes| D[Widget Function]  
	A -->|No| E[Widget Class]  
```

# バグ FIX
1. Dioのバグ [link](https://pub.dev/documentation/dio/latest/dio/RequestOptions/uri.html)
```dart
final query = Transformer.urlEncodeQueryMap(queryParameters, listFormat);
```
上記の行は `queryParameters` を強制的にエンコードします。そのため、修正のために再度書き換える必要があります。
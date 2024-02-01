# fetching_api_with_cubit

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Assets

You need to run `fluttergen -c pubspec.yaml` every time you add or remove assets for the first time.
The second time just use fluttergen.

### BLoC Cubit Freezed

You need to run `flutter packages pub run build_runner build --delete-conflicting-outputs` every time you add or modify models or blocs (especially modifying states).

### GetIt Injectable

You need to run `flutter packages pub run build_runner build --delete-conflicting-outputs` every time you add or remove @singleton and @lazySingleton.

### Source

Content : `https://dev.to/dev-vickie/fetching-apis-with-cubits-in-flutter-b8f`
API : `https://jsonplaceholder.typicode.com/users`
Injectable : `https://pub.dev/packages/injectable`
Googe Search Key : `get data from api using flutter cubit`
Alternative Content how to use GetIt : `https://dev.to/shanshaji/how-to-use-getit-package-al3`

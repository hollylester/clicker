# Clicker

A minimal Flutter app with one enabled button. The button is intentionally a
no-op so a future GitHub Actions exercise can add behavior to it.

The button can be located in Flutter tests with:

```dart
find.byKey(const Key('click-button'))
```

## Run locally

```sh
flutter run
```

## Verify

```sh
flutter analyze
flutter test
```

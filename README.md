<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Fancy Gradient Cards

Fancy Gradient Cards package lets you add a beautiful gradient card to your Flutter app.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  fancy_gradient_card: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:fancy_gradient_card/fancy_gradient_card.dart';
```

## Example
There are a number of properties that you can modify:

- height
- width
- title
- subtitle
- network image
- gradient (color1 and color2)

<hr>

<table>
<tr>
<td>


```dart
class FancyCard extends StatelessWidget {
  const FancyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const FancyGradientCard(
          title: 'Hello World',
          color1: Colors.lightGreenAccent,
          color2: Colors.lightBlue,
          image: 'https://docs.flutter.dev/assets/images/dash/Dashatars.png',
          subtitle: 'This is a new package',
        ),
      ),
    );
  }
}
```

</td>
<td>
  <img  src="https://github.com/Arun100203/Arun100203/blob/main/svg/flutter_dash.jpeg"  alt="fancy card image">
  </td>
</tr>
</table>

## Next Goals

- [x] Make Some Animations with Containers.

# tap_hover_toggle

A Flutter plugin that provides a versatile widget for handling tap and hover interactions. This widget allows you to easily detect taps and hover events on any of its child widgets, making it a valuable addition to your Flutter app's UI toolkit.

## Features

- Easily integrate tap and hover functionality into your Flutter app.
- Customize the widget's appearance and behavior according to your needs.
- Toggle a boolean status when the widget is tapping or hovering.

## Installation

To use this widget in your Flutter project, simply add it to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  tap_hover_toggle: ^0.0.1 # Use the latest version from pub.dev
```

Then, run flutter pub get to install the package.

## Usage

Import the package in your Dart code:

```dart
import 'package:tap_hover_toggle/tap_hover_toggle.dart';
```

Now, you can use the TapHoverToggle widget in your Flutter app. Here's an example of how to set it up:

```dart
TapHoverToggle(
  builder: (isHoverOrTap){
    return YourContentWidget();//return your child here
  },
  onClick: (){},
)
```

## Example

![Example demo](https://github.com/nishalsehan/tap_hover_toggle/assets/44578204/94d1fd82-3eb4-428e-811a-2d2d89114812)

```dart
TapHoverToggle(
  builder: (isHoverOrTap){
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isHoverOrTap?const Color(0xFF1DA1F2):Colors.white,
          border: Border.all(
              color:  isHoverOrTap?const Color(0xFF1DA1F2):Colors.black12,
              width: 1
          )
      ),
      padding: const EdgeInsets.all(12),
      child: Icon(
          FontAwesomeIcons.twitter,
          size: 16,
          color:  isHoverOrTap?Colors.white:Colors.black38
      ),
    );
  },
),
```

- `builder`: You have to pass the widget you want to display here and you can customize the appearance and behavior of the widget on isHoverOrTap status change.
- `onClick`: You can handle the onClick event here.

## Example

For a complete example of how to use this plugin, check out the [example](https://github.com/nishalsehan/tap_hover_toggle/tree/main/example) folder in this repository.
</br>

## Issues and Feedback

If you encounter any issues or have suggestions for improvement, please open an issue on our [GitHub repository](https://github.com/nishalsehan/tap_hover_toggle/issues). We welcome your feedback!
</br>

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/nishalsehan/tap_hover_toggle/blob/main/LICENSE) file for details.

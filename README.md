# Play with Flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

[Online documentation](https://flutter.dev/docs)

[Widget of the week](https://www.youtube.com/watch?v=lkF0TQJO0bA&list=PLOU2XLYxmsIL0pH0zWe_ZOHgGhZ7UasUE)


### Stateless widget
- Stateless widgets are immutable, meaning that their properties can’t change—all values are final.
### Stateful widget
- Stateful widgets maintain state that might change during the lifetime of the widget. Implementing a stateful widget requires at least two classes: 1) a StatefulWidget class that creates an instance of 2) a State class. The StatefulWidget class is, itself, immutable, but the State class persists over the lifetime of the widget.

## Widgets 
- MaterialApp
    - debugShowBanner
    - initialRoute
- Scaffold - provides a default app bar, title, and a body property that holds the widget tree for the home screen. The widget subtree can be quite complex.
- ListView
- EdgeIntersects - to control padding/borders
- SizedBox - for text fields
- TextField - for username, password, etc
- SafeArea - ?
- AsymmetricView - ?
- RaisedButton- ?
- Backdrop?
- Container
- Stack
- Column
    - CrossAxisAlignment
    - MainAxisAlignment
- Row
- AspectRatio
- Center
- Icon
- InkWell
- Expanded
- Divider
- ListTile - Title, Subtitle

## Utilities
- ThemeData
- InputDecoration - decorate textFields, etc
- Theme.of(context).copyWith(overrides...) - apply theme with overides?
- BeveledRectangularBox - shape type
- OutlineInputBorder?
- CornerCutBorder
- Navigator
- AnimationController
- Animation
- RelativeRectTween
- PositionedTransition
- ClipRect 
- ScopedModel
- BLoC
- package:provider
- provider.of<MyChangeNotifier>()
- ChangeNotifierProvider





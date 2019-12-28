# Play with Flutter

A new Flutter project.

## Helpful resources

- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

- [Online documentation](https://flutter.dev/docs)

- [Widget of the week](https://www.youtube.com/watch?v=lkF0TQJO0bA&list=PLOU2XLYxmsIL0pH0zWe_ZOHgGhZ7UasUE)


### Stateless widget
- Stateless widgets are immutable, meaning that their properties can’t change—all values are final.
### Stateful widget
- Stateful widgets maintain state that might change during the lifetime of the widget. Implementing a stateful widget requires at least two classes: 1) a StatefulWidget class that creates an instance of 2) a State class. The StatefulWidget class is, itself, immutable, but the State class persists over the lifetime of the widget.

## Widgets 
- MaterialApp
    - debugShowBanner
    - initialRoute
    - theme
    - routes
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
- IconButton
- InkWell
- Expanded
- Divider
- ListTile - Title, Subtitle
- FutureBuilder
- CircularProgressIndicator

## Utilities
- ThemeData
- InputDecoration - decorate textFields, etc
- Theme.of(context).copyWith(overrides...) - apply theme with overides?
- BeveledRectangularBox - shape type
- OutlineInputBorder?
- CornerCutBorder
- Navigator - push, pop, pushNamed. Navigator adds a "Back" button to the app bar. You don't have to explicitly implement Navigator.pop.
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
- compute - for compute intensive tasks
- http package
- https://flutter.dev/docs/cookbook/networking/fetch-data#4-fetch-the-data
- initState() vs didChangeDependencies()





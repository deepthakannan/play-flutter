# Play with Flutter

A new Flutter project.

## Helpful resources

- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

- [Online documentation](https://flutter.dev/docs)

- [Widget of the week](https://www.youtube.com/watch?v=lkF0TQJO0bA&list=PLOU2XLYxmsIL0pH0zWe_ZOHgGhZ7UasUE)

- [Material Library](https://api.flutter.dev/flutter/material/material-library.html)
- [Assets and Images](https://flutter.dev/docs/development/ui/assets-and-images)


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
- Scaffold - provides a default appBar, title, floatingActionButton, and a body property that holds the widget tree for the home screen. The widget subtree can be quite complex.
- ListView - a column-like layout that automatically scrolls if its content is too long to fit the available space.
- EdgeIntersects - to control padding/borders
- SizedBox - for text fields
- TextField - for username, password, etc
- SafeArea - ?
- AsymmetricView - ?
- RaisedButton- ?
- Backdrop?
- [Container](https://flutter.dev/docs/development/ui/layout#container) - create a rectangular visual element and can be decorated with a BoxDecoration, such as a background, a border, or a shadow. It can also have margins, padding, and constraints applied to its size
- Stack - Use Stack to arrange widgets on top of a base widget—often an image. The widgets can completely or partially overlap the base widget. It lets you place widgets on top of each other in paint order. You can then use the Positioned widget on children of a Stack to position them relative to the top, right, bottom, or left edge of the stack. Stacks are based on the web’s absolute positioning layout model.
- Column - arrange widgets vertically. The design is based on the web’s flexbox layout model.
    - CrossAxisAlignment - runs horizontally
    - MainAxisAlignment - runs vertically
- Row - arrange widgets horizontally. The design is based on the web’s flexbox layout model.
    - CrossAxisAlignment - runs vertically
    - MainAxisAlignment - runs horizontally
- AspectRatio
- Center
- Icon
- IconButton
- InkWell
- Image
- Expanded - Widgets can be sized to fit within a row or column by using the Expanded widget. Use its flex property to apply ratios
- Divider
- ListTile - Title, Subtitle - an easy-to-use widget with properties for leading and trailing icons, and up to 3 lines of text. ListTile is most commonly used in Card or ListView
- FutureBuilder
- CircularProgressIndicator
- Text - textDirection
- Positioned - controls where a child of a Stack is positioned.
- AppBar - leading, title, actions
- GestureDetector - onTap()
- GridView: Lays widgets out as a scrollable grid.
    - GridView.count allows you to specify the number of columns
    - GridView.extent allows you to specify the maximum pixel width of a tile
- Card: Organizes related info into a box with rounded corners and a drop shadow


- [LayoutWidgets](https://flutter.dev/docs/development/ui/widgets/layout)


## Utilities
- ThemeData
- InputDecoration - decorate textFields, etc
- Theme.of(context).copyWith(overrides...) - apply theme with overides?
- BeveledRectangularBox - shape type
- OutlineInputBorder?
- CornerCutBorder
- Navigator - manages a stack of widgets identified by strings, also known as “routes”. push(), pop(), pushNamed(). 
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
- BorderRadius.circular

## Tips and Documentation gems
- uses-material-design: true entry in the flutter section of your pubspec.yaml
- Navigator adds a "Back" button to the app bar. You don't have to explicitly implement Navigator.pop.
- Widgets (Stateful and Stateless) are temporary objects, used to construct a presentation of the application in its current state. State objects, on the other hand, are persistent - between calls to build(), allowing them to remember information.
- In Flutter, change notifications flow “up” the widget hierarchy by way of callbacks, while current state flows “down” to the stateless widgets that do presentation. The common parent that redirects this flow is the State. 
- In dart, leading underscores indicate that they are private implementation details
- Calling setState() marks this widget as dirty and schedules it to be rebuilt the next time your app needs to update the screen.
- When a state object is no longer needed, the framework calls dispose() on the state object. Override the dispose function to do cleanup work. For example, override dispose to cancel timers or to unsubscribe from platform services. Implementations of dispose typically end by calling super.dispose.
- After calling createState() on the StatefulWidget, the framework inserts the new state object into the tree and then calls initState() on the state object. A subclass of State can override initState to do work that needs to happen just once. For example, override initState to configure animations or to subscribe to platform services. Implementations of initState are required to start by calling super.initState.
- Keys - https://flutter.dev/docs/development/ui/widgets-intro#keys
    - Use keys to control which widgets the framework matches up with other widgets when a widget rebuilds. By default, the framework matches widgets in the current and previous build according to their runtimeType and the order in which they appear. With keys, the framework requires that the two widgets have the same key as well as the same runtimeType. 
    Keys are most useful in widgets that build many instances of the same type of widget. For example, the ShoppingList widget, which builds just enough ShoppingListItem instances to fill its visible region: By assigning each entry in the list a “semantic” key, the infinite list can be more efficient because the framework syncs entries with matching semantic keys and therefore similar (or identical) visual appearances. **Moreover, syncing the entries semantically means that state retained in stateful child widgets remains attached to the same semantic entry rather than the entry in the same numerical position in the viewport.**
- Use global keys to uniquely identify child widgets. Global keys must be globally unique across the entire widget hierarchy, unlike local keys which need only be unique among siblings. 
- Widgets are used for both layout and UI elements.
- All layout widgets have either of the following: A **child** property or a **children** property
- a row or column occupies as much space along its main axis as possible, but if you want to pack the children closely together, set its mainAxisSize to **MainAxisSize.min**
- DefaultTextStyle.merge() - DefaultTextStyle.merge() allows you to create a default text style that is inherited by its child and all subsequent children.






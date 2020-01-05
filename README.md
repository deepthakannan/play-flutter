# Play with Flutter

A new Flutter project.

## Helpful resources

- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

- [Online documentation](https://flutter.dev/docs)

- [Widget of the week](https://www.youtube.com/watch?v=lkF0TQJO0bA&list=PLOU2XLYxmsIL0pH0zWe_ZOHgGhZ7UasUE)

- [Material Library](https://api.flutter.dev/flutter/material/material-library.html)
- [Assets and Images](https://flutter.dev/docs/development/ui/assets-and-images)


### Stateless widget
- Stateless widgets are immutable, meaning that their properties can’t change—all values are final. A stateless widget never changes. Icon, IconButton, and Text are examples of stateless widgets
### Stateful widget
- Stateful widgets maintain state that might change during the lifetime of the widget. If a widget can change—when a user interacts with it, for example—it’s stateful. Implementing a stateful widget requires at least two classes: 1) a StatefulWidget class that creates an instance of 2) a State class. The StatefulWidget class is, itself, immutable, but the State class persists over the lifetime of the widget.

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
    - ChangeNotifier - if something is a ChangeNotifier, you can subscribe to its changes. (It is a form of Observable, for those familiar with the term.)
    - ChangeNotifierProvider - is the widget that provides an instance of a ChangeNotifier to its descendants. It comes from the provider package. Enclose the parent widget inside a ChangeNotifierProvider whose children need access to a certain model (singleton service?)
    - Consumer - is the widget that enacpsulates a widget who wants to consume the model. Consumer's builder is called with model instance when it is changed. This widget will be redrawn everytime model notifies that it changed. So don't enclose a top level widget unless it depends on the model data for its view.
- provider.of<MyChangeNotifier>(context, listen: false) - if the model needs to be accessed not for its data - maybe to call a method on it (clearSession, clearCart, etc), use this so that the widget doesn't have to be rebuilt.
- ChangeNotifierProvider
- compute - for compute intensive tasks
- http package
- https://flutter.dev/docs/cookbook/networking/fetch-data#4-fetch-the-data
- initState() vs didChangeDependencies()
- BorderRadius.circular
- MediaQuery.of() method in your build functions gives you the size, orientation, etc, of your current app.
- AssetBundle object - loadString() or load()
- AssetImage
- [dart:convert](https://flutter.dev/docs/development/data-and-backend/json#serializing-json-inside-model-classes) - to serialize and deserialize. 
    - It works with string and dynamic (no type safety) objects. For type safety,
        - [For simple models](https://flutter.dev/docs/development/data-and-backend/json#serializing-json-inside-model-classes), implement custom 
            - serialization using jsonEncode() - jsonEncode calls toJson() on the object passed in. In toJson() implementation return string and dynamic json equivalent.
            - deserialization using jsonDecode() - jsonDecode return string and dynamic. Ask model to parse and construct concrete objects
        - For complicated models and in medium to large scale projects, use code generators such as [json_serializable](https://flutter.dev/docs/development/data-and-backend/json#serializing-json-using-code-generation-libraries). 

## Tips and Documentation gems
- Flutter is declarative. This means that Flutter builds its user interface to reflect the current state of your app: There is no imperative changing of the UI itself (like widget.setText) — you change the state, and the UI rebuilds from scratch.
- widgets are immutable. They don’t change—they get replaced.
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
- When the constraints change (for example, the user rotates the phone, or puts your app into a tile UI in Nougat), the build function runs.
- In Flutter, widgets are rendered by their underlying RenderBox objects. Render boxes are given constraints by their parent, and size themselves within those constraints. Constraints consist of minimum and maximum widths and heights; sizes consist of a specific width and height - https://flutter.dev/docs/development/ui/layout/box-constraints
- Here are the most common ways to manage state:
    - The widget manages its own state (ListView automatically scrolls when its content exceeds the render box. Most developers using ListView don’t want to manage ListView’s scrolling behavior, so ListView itself manages its scroll offset.)
    - The parent manages the widget’s state (If in doubt, start by managing state in the parent widget. Here child widget is stateless but parentwidget is stateful)
    - A mix-and-match approach - the stateful widget (checkbox for example) manages some of the state, and the parent widget manages other aspects of the state (based on callback from checkbox widget).
- [Gestures](https://flutter.dev/docs/development/ui/interactive#resources)
- [Assets](https://flutter.dev/docs/development/ui/assets-and-images) - An asset is a file that is bundled and deployed with your app, and is accessible at runtime. Common types of assets include static data (for example, JSON files), configuration files, icons, and images
- This launch screen persists until Flutter renders the first frame of your application - This implies that if you don’t call [runApp()][] in the main() function of your app (or more specifically, if you don’t call window.render() in response to window.onDrawFrame), the launch screen persists forever.
- Types of states in flutter
    - ephemeral state - state of the current page. State you can neatly contain in a single widget. Other parts of the widget tree seldom need to access this kind of state. In other words, there is no need to use state management techniques (ScopedModel, Redux, etc.) on this kind of state. All you need is a StatefulWidget.
    - app state - State that is not ephemeral, that you want to share across many parts of your app, and that you want to keep between user sessions. Examples of application state:
        - User preferences
        - Login info
        - The shopping cart in an e-commerce app
- [State Management options](https://flutter.dev/docs/development/data-and-backend/state-mgmt/options)
- 





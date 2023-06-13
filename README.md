# Flutter

Suppose a person develop a application for IOS devices and it becomes popular. Now he receives many requests from android users that he made a similar application for them also. So, for that firstly he have to learn java and kotlin, and after that he can make it. And he have to keep in mind all the screen resolution of the android mobile phones.

So, here comes the role of flutter, It is a toolkit that makes easy for developers to design beautiful interfaces. You don’t need to take tension about resolutions, and platforms because it automatically adjust its widgets according to the resolution the the mobile phones and you have to write code only in one language and the application will run in IOS devices, android devices and desktops as well.

## Why Flutter?

- Cross-platform development: Flutter allows you to build applications for multiple platforms, including iOS, Android, web, and desktop, using a single codebase.
- Fast development: Flutter offers a hot reload feature that allows you to see the changes in your app instantly without restarting the application.
- Beautiful and customizable UI: Flutter provides a rich set of pre-designed widgets that enable developers to create stunning and visually appealing user interfaces
- Reduced testing effort: With Flutter's single codebase approach, you only need to write tests once for your app, which can be executed across multiple platforms.

## How to add image in flutter

- add images folder in the app and add the images in it
- go to pubspec.yaml file and define the folder location

```yaml
**assets:
    - Images/assets:
    - Images/**
```

## How to use Images

```jsx
**Image(
         image:
								//network image
              NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxmMZDv5WLTqjiBl7P5Cr_a_lRbsO0lQ2v-A&usqp=CAU')
								//asset image
              AssetImage('Images/luffy.png'))),
      ),**
```

## Make Simple Application

```dart
**import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
              child: Title(
                  color: Color.fromARGB(255, 220, 231, 236),
                  child: Text(
                    'One Piece',
                    style: TextStyle(fontSize: 29),
                  ))),
        ),
        body: Center(
            child: Image(
                image:
                    AssetImage('Images/luffy.png'))),
      ),
    );
  }
}**
```

## Hot Reload and Hot reset

- **Hot Reload** :→ if you do some changes in the flutter code, then hot reload update the code in the running dart virtual machine without restarting the whole application and you can see the changes immediately without losing the state.
- **Hot Restart** :→ it stops the running Dart VM, recompiles your Flutter code, and starts the app again from the beginning. As a result, any existing state is lost, and the app starts fresh with the updated code.

## Flutter Widgets

### Material App

- The Material App is a powerful and essential component in Flutter development, as it helps in creating visually appealing, responsive, and accessible apps that follow the Material Design guidelines, resulting in a better user experience.
- Properties
    - home: here you define the widgets in parent widget.
    - to remove debug banner.
    
    ```jsx
    **debugShowCheckedModeBanner: false,**
    ```
    

### Scaffold

- In Flutter, the **`Scaffold`** widget is a fundamental building block for creating the basic structure and layout of your app's screens. It provides a framework for implementing common UI elements such as app bars, floating action buttons, drawers, and more. The **`Scaffold`** widget serves as a container for other widgets and helps to organize the visual hierarchy of your app.
- Without this your app looks ugly(black background with red text).
- Here's an example of how to use the **`Scaffold`** widget in Flutter:

```dart
**import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}**
```

In this example, we define a **`Scaffold`** widget as the **`home`** property of our **`MaterialApp`**. The **`Scaffold`** widget has two important properties:

1. **`appBar`**: This property allows you to define an app bar at the top of the screen. In the example above, we set the **`appBar`** property to an **`AppBar`** widget and provide a **`title`** as a **`Text`** widget.
2. **`body`**: This property represents the main content of the screen and is typically set to a single widget that occupies the majority of the screen's space. In the example above, we set the **`body`** property to a **`Center`** widget containing a **`Text`** widget that displays "Hello, World!".

The **`Scaffold`** widget also provides additional properties for handling common UI elements, such as:

- **`floatingActionButton`**: Allows you to add a floating action button to the screen.
- **`drawer`**: Allows you to add a drawer (side menu) to the screen.
- **`bottomNavigationBar`**: Enables you to add a bottom navigation bar to the screen.

### Container

- In Flutter, a container widget is used to create a rectangular visual element that can contain other widgets. It provides various properties to customize the appearance and behavior of the container.
- it sizes themselves according to their child.
- container with no child contains all the remaining or available space.

Here are some commonly used properties of the Container widget in Flutter:

1. **`alignment`**: Specifies the alignment of the child within the container. It accepts values from the **`Alignment`** class, such as **`Alignment.topLeft`**, **`Alignment.center`**, **`Alignment.bottomRight`**, etc.
2. **`padding`**: Defines the padding space around the child widget. You can use the **`EdgeInsets`** class to set different padding values for each side of the container.
3. **`color`**: Sets the background color of the container. You can use the **`Color`** class to specify a color, such as **`Colors.red`**, **`Colors.blue`**, or you can use **`Color.fromRGBO()`** for a custom color.
4. **`width`**: Sets the width of the container. You can use a specific value, such as **`100.0`** for a fixed width, or **`double.infinity`** to fill the available horizontal space.
5. **`height`**: Sets the height of the container. Similar to the **`width`** property, you can use a specific value or **`double.infinity`** to fill the available vertical space.
6. **`decoration`**: Allows you to apply decorations, such as borders, gradients, shadows, etc., to the container. You can use the **`BoxDecoration`** class to define the desired decoration.
7. **`margin`**: Defines the empty space surrounding the container. Similar to the **`padding`** property, you can use the **`EdgeInsets`** class to specify different margin values for each side of the container.
8. **`transform`**: Applies a transformation matrix to the container. You can use the **`Matrix4`** class to define various transformations, such as rotation, scaling, translation, etc.

```dart
**import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Widget Example'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              'Hello, Container!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}**
```

## Important Commands

- **flutter upgrade** → update the flutter
- **flutter create app_name** → create the new flutter app
- **flutter run** → to run flutter app.

## Important Shortcuts

- **ctrl+shift+r** → more action(wrap with widget) will appear.

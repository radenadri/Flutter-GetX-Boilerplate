# Number Trivia using GetX

A Flutter Clean Architecture Using [GetX](https://github.com/jonataslaw/getx).

## Workflow

![alt text](/Clean-Architecture-Flutter-Diagram.png?raw=true)

## Project Structure

```
|-- lib
    |-- main.dart
    |-- app
        |-- config
            |-- strings.dart
        |-- di
        |-- error
        |-- network
        |-- routes
        |-- util
    |-- data
        |-- datasources
        |-- models
        |-- repositories
    |-- domain
        |-- entities
        |-- repositories
        |-- usecases
    |-- presentation
        |-- bindings
        |-- controllers
        |-- pages
        |-- widgets
```

Big thanks to [ResoCoder](https://github.com/ResoCoder) to providing this tutorial. Inspired by [this repository](https://github.com/ResoCoder/flutter-tdd-clean-architecture-course)

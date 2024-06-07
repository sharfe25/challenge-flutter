# Notes App

## Description
Notes App is a Flutter application for managing notes. Users can create, view, edit, and delete notes. The application uses the Provider pattern for state management and follows Atomic Design principles for organizing UI components.

## Features

- Create new notes
- View existing notes
- Edit notes
- Delete notes
- Modular design following Atomic Design
- State management with Provider

## Requirements

- Flutter (Channel stable, 3.10.6, on macOS 13.4 22F66 darwin-arm64, locale es-CO)
- java 18.0.2.1
- Dart 3.0.6
- Xcode 15.2
- Android SDK version 34.0.0

## Project Structure
```
lib/
├── components/              # Reusable UI components
│   ├── atoms/               # Basic components
│   ├── molecules/           # Simple combinations of atoms
│   ├── organisms/           # Relatively complex components
│   ├── templates/           # Templates for views
│   └── pages/               # Application pages
├── models/                  # Data models
├── providers/               # State management providers
├── main.dart                # Application entry point
└── routes.dart              # Route configuration
```


## VS Code Plugins

- [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [Awesome Flutter Snippets](https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets)

## Installation

### Install dependencies
```
flutter pub get
```

###  Run app
```
flutter run
```
# Football Players List App (Test task)

![Generic badge](https://img.shields.io/badge/flutter-blue?logo=flutter&style=for-the-badge)
![Generic badge](https://img.shields.io/badge/platform-android-34A853.svg?logo=android&style=for-the-badge)
![Generic badge](https://img.shields.io/badge/platform-ios-000000.svg?logo=ios&style=for-the-badge)
![Generic badge](https://img.shields.io/badge/platform-web-4285F4.svg?logo=googlechrome&style=for-the-badge)

## About project

This Flutter app displays a list of football players fetched from a [remote API](https://rapidapi.com/api-sports/api/api-football).
Users can view detailed information about each player on a separate screen. With radar chart statistic for several player abilities.

| Mobile iOS and Android versions | WEB version |
| :---: | :---: |
| ![mobile](https://imgur.com/HXnBPiP.gif) | ![web](https://imgur.com/ZCqMo4e.gif) |

## Project Structure
- `lib/data`: Contains data-related classes including models, repositories, and providers.
- `lib/domain`: Contains domain-related classes including entities and repositories interfaces.
- `lib/presentation`: Contains UI-related classes including BLoCs, screens, and widgets.

## Features
- Presents a curated list of football players fetched from an API and locally stored using Hive for seamless access
- Empowers users to delve into in-depth player profiles, complete with a hex-radar chart illustrating various player attributes (all values generated randomly).
- Harnesses the power of the BLoC pattern coupled with freezed for robust state management, ensuring smooth and responsive user interactions.
- Implements a sophisticated cache system leveraging Hive for efficient data persistence. Data is locally stored, enhancing user experience by providing quick access to recent information (data stored for 15 minutes).
- Includes examples of unit and widget tests to ensure code reliability and functionality.
- Utilizes mappers to transform raw API responses into domain entities, ensuring clean and maintainable code.

## Getting Started
1. Make sure you have Flutter installed. If not, follow the [installation instructions](https://flutter.dev/docs/get-started/install).
2. Clone this repository.
3. Navigate to the project directory.
4. Run `flutter pub get` to install dependencies.
5. Run `flutter packages pub run build_runner build` to generate Freezed files
6. Connect a device or start an emulator.
7. Run `flutter run` to launch the app.



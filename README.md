# Flutter Application 1

A Flutter application with custom Myanmar font support and local database functionality.

## Features

- **Custom Myanmar Font Support**: Uses NotoSerif Myanmar fonts for proper text rendering
- **Local Database**: Integrated with Drift (SQLite) for local data storage
- **Cross-platform**: Supports Android, iOS, Windows, macOS, and Linux
- **Material Design**: Implements Material Design principles with custom theming

## Dependencies

### Core Dependencies
- `flutter` - Core Flutter framework
- `cupertino_icons` - iOS-style icons

### Database & Storage
- `drift: ^2.18.1` - Reactive SQLite database
- `sqlite3_flutter_libs: ^0.5.18` - Native SQLite library for Flutter
- `path_provider: ^2.1.4` - File system path handling
- `path: ^1.9.0` - Cross-platform path manipulation

### Development Dependencies
- `flutter_lints: ^6.0.0` - Flutter linting rules
- `build_runner: ^2.4.13` - Code generation tool
- `drift_dev: ^2.18.1` - Drift code generation

## Getting Started

### Prerequisites
- Flutter SDK (>= 3.10.4)
- Dart SDK (>= 3.0.0)

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd flutter_application_1
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate database code:
   ```bash
   flutter packages pub run build_runner build
   ```

4. Run the application:
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── main.dart              # Application entry point
├── screens/               # UI screens
│   ├── lesson_screen.dart # Lesson interface
│   └── test_screen.dart   # Test/assessment interface
├── theme/                 # App theming
│   └── app_theme.dart     # Custom theme configuration
└── fonts/                 # Custom fonts
    ├── NotoSerifMyanmar-Regular.ttf
    └── NotoSerifMyanmar-Bold.ttf
```

## Configuration

### Custom Fonts
The application uses NotoSerif Myanmar fonts for proper Myanmar text rendering:
- Regular weight: `NotoSerifMyanmar-Regular.ttf`
- Bold weight: `NotoSerifMyanmar-Bold.ttf`

Fonts are configured in `pubspec.yaml` under the `fonts` section.

### Database Configuration
The app uses Drift for database operations with the following setup:
- SQLite database with path provider for file storage
- Generated database code using build_runner
- Reactive database updates

## Building

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

### Desktop
```bash
flutter build windows  # or macos, linux
```

## Development

### Code Generation
When making changes to database tables or adding new drift annotations:
```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Linting
The project uses flutter_lints for code quality:
```bash
flutter analyze
```

## Version

Current version: 1.0.0+1

## License

This project is private and not intended for public publication.

## Contributing

1. Follow Flutter best practices
2. Run `flutter analyze` before committing
3. Update documentation as needed
4. Test on multiple platforms when possible

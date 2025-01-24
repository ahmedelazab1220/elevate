# Elevate - Your Flutter Project

Welcome to Elevate, a Flutter project built with the MVVM (Model-View-ViewModel) architecture and Cubit for state management. This project is designed to help you build scalable, maintainable, and testable cross-platform applications.

## Getting Started

## 🖼️ Screenshots

Here are the app's loading, success, and failure states:

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/7557ffb3-6864-421e-8cfd-5574b5761fa2" alt="Loading State Screen" width="300" />
      <br />
      <strong>Loading State</strong>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/65f1bcdf-8240-4422-854e-c4a1dc66af41" alt="Success State Screen" width="300" />
      <br />
      <strong>Success State</strong>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/e62663d4-fe01-4a6f-9fcf-6f5d9cb6c669" alt="Failure State Screen" width="300" />
      <br />
      <strong>Failure State</strong>
    </td>
  </tr>
</table>

## 🛠️ Core Features

- **`MVVM Architecture`** : Clean and scalable architecture for better separation of concerns.

- **`Cubit State Management`** : Lightweight and efficient state management using the flutter_bloc package.

- **`Reusable Widgets`** : Shared widgets and utilities for consistent UI and functionality.

- **`Error Handling`** : Centralized error handling for better debugging and user experience.

## 📂 Project Structure

Here's an overview of the project structure:

```

elevate/
├── lib/
│   ├── core/                     # Core functionality and shared resources
│   │   ├── errors/               # Custom error handling and exceptions
│   │   │   └── failures.dart     # Custom failure classes
│   │   ├── shared_widgets/       # Reusable widgets used across the app
│   │   │   ├── error_screen.dart # Error screen widget
│   │   │   └── shimmer_widget.dart # Shimmer effect widget
│   │   └── utils/                # Utility functions and constants
│   │       ├── api_services.dart # API service utilities
│   │       ├── app_apis.dart     # API endpoints
│   │       ├── app_colors.dart   # App color constants
│   │       ├── app_icons.dart    # App icon constants
│   │       ├── app_logger.dart   # Logging utilities
│   │       ├── app_styles.dart   # App text styles
│   │       ├── dependency_injection.dart # Dependency injection setup
│   │       └── toast.dart        # Toast utilities
│   │
│   ├── features/                 # Feature-based modular structure
│   │   └── home/                 # Home feature
│   │       ├── data/             # Data layer
│   │       │   ├── models/       # Data models
│   │       │   │   ├── product_model.dart # Product model
│   │       │   │   └── product_rating_model.dart # Product rating model
│   │       │   └── repos/        # Repositories
│   │       │       ├── home_repo_implementation.dart # Repo implementation
│   │       │       └── home_repo.dart # Repository interface
│   │       └── presentation/     # Presentation layer (UI and state management)
│   │           ├── view/         # UI components
│   │           │   ├── widgets/  # Reusable widgets specific to the home feature
│   │           │   │   ├── add_to_cart_button.dart # Add to cart button
│   │           │   │   ├── add_to_fav_button.dart # Add to favorite button
│   │           │   │   ├── home_body.dart # Home body widget
│   │           │   │   ├── product_image.dart # Product image widget
│   │           │   │   ├── product_list_view_item_bool.dart # Product list item bool
│   │           │   │   ├── product_list_view_item.dart # Product list item
│   │           │   │   ├── product_list_view.dart # Product list view
│   │           │   │   ├── product_price.dart # Product price widget
│   │           │   │   ├── product_rating.dart # Product rating widget
│   │           │   │   ├── shimmer_view_body.dart # Shimmer view body
│   │           │   │   └── shimmer_view.dart # Shimmer view
│   │           │   └── home_screen.dart # Home screen UI
│   │           └── view_model/   # State management
│   │               ├── home_cubit/  # Cubit for home feature
│   │               │   ├── home_cubit.dart  # Cubit logic
│   │               │   └── home_state.dart  # Cubit states
│   │
│   ├── main.dart                 # Entry point of the application
│
├── test/                         # Unit and widget tests
└── pubspec.yaml                  # Project dependencies and metadata

```

## 🧩 Core Components

1. Core Folder

- errors/: Contains custom error handling and exceptions (e.g., failures.dart).

- shared_widgets/: Reusable widgets like error_screen.dart and shimmer_widget.dart.

- utils/: Utility files for API services, colors, icons, logging, styles, dependency injection, and toast messages.

2. Features Folder

- home/: The home feature module.

  - data/: Contains data models (product_model.dart, product_rating_model.dart) and repositories (home_repo.dart, home_repo_implementation.dart).

  - presentation/: Contains the UI (view/) and state management (view_model/).

    - view/: UI components and screens (home_screen.dart).

    - view_model/: Cubit logic and states (home_cubit.dart, home_state.dart).

## 📚 Resources

- Flutter Documentation: <a href = "https://docs.flutter.dev/"> Official Flutter Docs </a>

- Pub.dev: <a href = "https://pub.dev/"> Flutter Packages </a>

- Flutter Community: <a href = "https://medium.com/flutter-community"> Flutter Community </a>

- Flutter Cookbook: <a href = "https://docs.flutter.dev/cookbook"> Useful Flutter Samples </a>

## 🙏 Acknowledgments

- A big thank you to the Flutter team and the open-source community for their incredible work.

- Special thanks to all contributors who have helped make this project better.

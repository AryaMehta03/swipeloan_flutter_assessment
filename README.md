# SwipeLoan Flutter UI Assessment

A Flutter implementation of the SwipeLoan UI Assessment built using Material Design principles, Clean Architecture concepts, and a Feature-First project structure.

---

## Project Overview

This project recreates the provided Figma design as accurately as possible while maintaining clean, reusable and maintainable Flutter code.

The focus of this assessment is on:

- Pixel-perfect UI implementation
- Component reusability
- Clean folder organization
- Readable and maintainable code
- Separation of concerns

---

## Architecture

The project follows a **Feature-First Architecture** inspired by Clean Architecture.

```
lib/
│
├── core/
│   ├── constants/
│   ├── theme/
│   └── utils/
│
├── features/
│   └── home/
│       ├── presentation/
│       │   ├── pages/
│       │   └── widgets/
│       │
│       └── data/
│
└── main.dart
```

### Why Feature-First?

Instead of organizing files by type (widgets, screens, models), everything related to a feature is grouped together.

Advantages:

- Better scalability
- Easier maintenance
- Better separation of features
- Easier onboarding for new developers

---

## UI Approach

The UI has been developed using:

- Material Design widgets
- Stateless reusable widgets wherever possible
- Constant constructors for better performance
- Centralized colors, spacing and assets
- Feature-based widget decomposition

Large UI sections are broken down into smaller reusable widgets to improve readability and maintainability.

---

## Assets

Assets are managed centrally using:

```
core/constants/app_assets.dart
```

This prevents hardcoded asset paths throughout the project.

---

## Folder Structure

```
lib
│
├── core
│   ├── constants
│   │   ├── app_assets.dart
│   │   ├── app_colors.dart
│   │   └── app_spacing.dart
│   │
│   └── theme
│
├── features
│   └── home
│       └── presentation
│           ├── pages
│           └── widgets
│
└── main.dart
```

---

## Packages Used

| Package | Purpose |
|----------|----------|
| flutter_svg | Rendering SVG assets |
| google_fonts | Typography |

---

## Running the Project

```bash
flutter pub get

flutter run
```

---

## Known Issue

Some SVG assets provided with the design were not rendered correctly by `flutter_svg`.

After investigation, it was found that these files contain embedded raster images rather than true vector paths. As a result, Flutter is unable to render them correctly.

Examples include:

- Loan illustration
- Credit Wallet icon
- Debit Wallet icon

Existing PNG versions of these assets have been used where necessary to preserve visual fidelity.

Other SVG assets containing proper vector paths (such as badges and icons) render correctly without any changes.

---

## Notes

The objective of this submission was to closely match the provided Figma design while keeping the codebase clean, modular and production-friendly.

Where appropriate, reusable widgets and centralized constants have been used to improve maintainability.

---

## Author

Arya Mehta
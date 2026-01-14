# CLAUDE.md - AI Assistant Guide for CarCare Project

## Project Overview

**Project Name:** CarCare (carbookingservice)
**Version:** 1.0.0+1
**Type:** Flutter Multi-Platform Mobile Application
**Primary Purpose:** Car service booking and maintenance management
**Development Stage:** Early prototype with UI-focused implementation
**Primary Developer:** Harith (Semester 6 side project, Week 1-14)

This is a car service booking application that allows users to:
- Book car maintenance services
- Track technicians
- View campaigns and promotions
- Access help center and support

## Codebase Structure

```
/home/user/CarCare/
├── lib/                          # Main application code
│   ├── main.dart                 # Entry point (MaterialApp setup)
│   ├── nav_bar.dart              # Bottom navigation (4 tabs)
│   ├── view/                     # Screen/Page widgets
│   │   ├── homepage.dart         # Home dashboard (322 lines)
│   │   ├── bookingpage.dart      # Booking/Profile page (237 lines)
│   │   ├── campaignpage.dart     # Campaigns/Events (131 lines)
│   │   └── helpcenterpage.dart   # Help/Support (237 lines)
│   ├── widget/                   # Reusable UI components
│   │   └── campaign_widget.dart  # Campaign event card (85 lines)
│   └── model/                    # Data models
│       └── campaigndata/
│           └── event_items.dart  # Static event data model
│
├── assets/images/                # Image assets (~504KB total)
│   ├── carevent1.jpg             # Campaign event image
│   ├── carevent2.jpg             # Campaign event image
│   ├── giveaway.png              # Giveaway promotion
│   ├── handhold.png              # Help/support visual
│   └── hilux.png                 # Vehicle tracking image
│
├── test/                         # Test files
│   └── widget_test.dart          # Basic smoke test (needs updating)
│
├── android/                      # Android platform code
├── ios/                          # iOS platform code
├── macos/                        # macOS platform code
├── windows/                      # Windows platform code
├── linux/                        # Linux platform code
├── web/                          # Web platform code
│
├── pubspec.yaml                  # Dependencies and configuration
├── analysis_options.yaml         # Dart linting rules
└── README.md                     # Basic project documentation
```

### Key Directories Explained

- **lib/view/**: Contains all screen/page widgets. Each file represents a full screen in the app.
- **lib/widget/**: Reusable UI components used across multiple screens.
- **lib/model/**: Data structures and models. Currently contains only static data.
- **assets/images/**: All image resources referenced in the app.

## Technology Stack

### Core Framework
- **Flutter**: Latest stable channel
- **Dart**: 3.3.0+ (null-safe)
- **Material Design**: Material 3 components

### Dependencies
```yaml
# Production Dependencies
cupertino_icons: ^1.0.6      # iOS-style icons
animate_do: ^3.1.2           # Animation effects (FadeInUp)
logger: ^2.2.0               # Logging utility
google_nav_bar: ^5.0.6       # Modern bottom navigation bar

# Development Dependencies
flutter_test: sdk            # Testing framework
flutter_lints: ^3.0.0        # Dart code analysis and linting
```

### Platform Support
- ✅ Android (Gradle/Kotlin)
- ✅ iOS (Xcode/Swift)
- ✅ macOS
- ✅ Windows (CMake)
- ✅ Linux (CMake)
- ✅ Web (Flutter Web)

### Current Limitations
- ❌ No backend/API integration
- ❌ No database or data persistence
- ❌ No state management framework
- ❌ No authentication system
- ❌ All data is hardcoded/static

## Application Architecture

### Navigation Structure

The app uses a tab-based navigation pattern with 4 main sections:

```
NavBar (google_nav_bar)
├── Tab 1: HomePage (Home icon)
│   └── Dashboard with quick actions and promotions
├── Tab 2: BookingPage (Calendar icon)
│   └── Service provider profile and booking options
├── Tab 3: CampaignPage (Gift icon)
│   └── Events, promotions, and vouchers
└── Tab 4: HelpCenterPage (Headset icon)
    └── Help center and support information
```

### Page Descriptions

**1. HomePage** (`lib/view/homepage.dart`)
- Greeting header: "Hello, John!"
- Notification icon (non-functional)
- 4 Quick action buttons:
  - Personal Info
  - Help Center
  - Booking
  - Campaign
- 3 Promotional cards:
  - "Call Technician" promo
  - "Track Your Technician" with vehicle image
  - "Claim Your Giveaway" promotion
- Uses FadeInUp animations for visual polish

**2. BookingPage** (`lib/view/bookingpage.dart`)
- Service provider profile card
- Profile: Samad Said (10 years MARDI experience)
- Menu options (currently non-functional):
  - Edit Profile
  - FAQ
  - History
  - Logout
- Green gradient header design

**3. CampaignPage** (`lib/view/campaignpage.dart`)
- Tab-based interface (Event | Promotion | Vouchers)
- Search bar with placeholder "e.g: Hari Raya Promo"
- Event listing with images and details
- Uses CampaignWidget for event cards
- Data source: EventItems model

**4. HelpCenterPage** (`lib/view/helpcenterpage.dart`)
- Similar layout to BookingPage
- Service provider information
- Same menu structure
- Green gradient design theme

### Architecture Pattern

**Current Pattern:** Basic MVC-like structure
- **Model**: Simple data classes (EventItems)
- **View**: Stateless/Stateful widgets for UI
- **Controller**: Minimal, embedded in widgets

**No formal architecture framework implemented:**
- No GetX, Provider, Riverpod, or BLoC
- State managed locally in StatefulWidgets
- No separation of business logic

## Code Conventions and Patterns

### Dart/Flutter Best Practices

1. **Null Safety**: Fully null-safe codebase (Dart 3.3.0+)
   ```dart
   const MyWidget({super.key});  // Using super parameters
   required String title;         // Required parameters
   ```

2. **Widget Composition**:
   - Builder methods for reusable patterns:
     ```dart
     Widget getPromoWidget(String title, String imgPath)
     Widget getPromoWidgetSticky(String imgPath)
     ```
   - Custom widgets for repeated elements (CampaignWidget)
   - Scaffold-based page structure

3. **Naming Conventions**:
   - camelCase for variables and methods
   - PascalCase for classes and widgets
   - Descriptive names (e.g., `getPromoWidget`, `campaignpage`)

4. **File Organization**:
   - One widget per file for pages
   - Related widgets grouped in subdirectories
   - Models separated in model/ directory

### Styling Patterns

**Color Scheme**:
- Primary: Blue (`Colors.blue`)
- Accent: Green (various shades: `Color(0xFF4ade80)`, `0xffb0f4bc`)
- Backgrounds: White, light grey
- Text: Dark grey, white

**Common Layout Patterns**:
```dart
// Border Radius
BorderRadius.circular(15)    // Cards
BorderRadius.circular(20)    // Containers
BorderRadius.circular(25)    // Images
BorderRadius.circular(60)    // Circular buttons

// Padding
EdgeInsets.all(20)
EdgeInsets.symmetric(horizontal: 20, vertical: 15)

// Sizing (Warning: Hardcoded values)
height: 120, width: 362.2    // May not be responsive
```

**Common UI Components**:
- Material Cards with elevation
- Linear gradients for headers
- Rounded images with ClipRRect
- Icon + Text combinations for menus

### Animation Patterns

Using `animate_do` package:
```dart
FadeInUp(
  duration: Duration(milliseconds: 1400),
  child: Widget()
)
```

## Development Workflows

### Initial Setup

```bash
# Clone the repository
git clone <repository-url>
cd CarCare

# Install Flutter dependencies
flutter pub get

# Check Flutter setup
flutter doctor

# Run on connected device/emulator
flutter run

# Run on specific platform
flutter run -d chrome        # Web
flutter run -d macos         # macOS
flutter run -d android       # Android
```

### Development Commands

```bash
# Run the app in debug mode
flutter run

# Run with hot reload (automatic)
# Press 'r' to reload, 'R' for hot restart

# Build for specific platforms
flutter build apk            # Android APK
flutter build ios            # iOS (requires macOS)
flutter build web            # Web
flutter build windows        # Windows executable
flutter build macos          # macOS app
flutter build linux          # Linux executable

# Run tests
flutter test

# Analyze code
flutter analyze

# Format code
dart format lib/

# Clean build artifacts
flutter clean
```

### Git Workflow

**Current Branch Structure**:
- Main branch: `main`
- Feature branches: `claude/claude-md-*` pattern
- Current branch: `claude/claude-md-mkdqpraur7zxiu7z-EswVo`

**Branch Naming Convention**:
- Feature branches start with `claude/`
- Must end with matching session ID for push authentication

**Standard Git Operations**:
```bash
# Check current branch and status
git status
git branch

# Create and switch to feature branch
git checkout -b claude/feature-name-sessionid

# Stage and commit changes
git add .
git commit -m "Descriptive commit message"

# Push to remote (use -u for first push)
git push -u origin claude/feature-name-sessionid

# Fetch updates
git fetch origin branch-name

# Pull updates
git pull origin branch-name
```

**Git Best Practices**:
- Always develop on feature branches (claude/*)
- Use descriptive commit messages
- Push to correct branch with matching session ID
- Create PRs for merging to main
- If push fails with network error, retry up to 4 times with exponential backoff (2s, 4s, 8s, 16s)

### Adding New Features

**1. Adding a New Page/Screen**:
```dart
// 1. Create new file in lib/view/
// lib/view/newpage.dart

import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Page')),
      body: Container(),
    );
  }
}

// 2. Add to navigation if needed in nav_bar.dart
// Import and add to tabs list
```

**2. Adding New Assets**:
```yaml
# Ensure assets are in assets/images/
# pubspec.yaml already includes:
assets:
  - assets/images/

# Flutter will automatically include all files in this directory
```

**3. Adding New Dependencies**:
```bash
# Add to pubspec.yaml under dependencies:
flutter pub add package_name

# Or manually add to pubspec.yaml, then:
flutter pub get
```

**4. Creating Reusable Widgets**:
```dart
// Create in lib/widget/
// Use for components used in multiple places

import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(/* ... */),
    );
  }
}
```

### Common Debugging Tasks

**1. Check Widget Tree**:
- Use Flutter DevTools
- Run: `flutter pub global activate devtools`
- Then: `flutter pub global run devtools`

**2. Logging**:
```dart
import 'package:logger/logger.dart';

final logger = Logger();
logger.d('Debug message');
logger.i('Info message');
logger.w('Warning message');
logger.e('Error message');
```

**3. Hot Reload Issues**:
```bash
# If hot reload doesn't work, try hot restart:
# Press 'R' in terminal

# If that fails, stop and restart:
flutter run
```

## Testing Strategy

### Current Test Status
- ⚠️ **Minimal testing implemented**
- Single template test in `test/widget_test.dart`
- Test does not match actual app functionality
- Needs comprehensive rewrite

### Testing Recommendations

**1. Widget Tests** (Priority: HIGH):
```dart
// Test individual widgets and pages
testWidgets('HomePage displays greeting', (tester) async {
  await tester.pumpWidget(MaterialApp(home: HomePage()));
  expect(find.text('Hello, John!'), findsOneWidget);
});
```

**2. Unit Tests** (Priority: MEDIUM):
```dart
// Test data models and business logic
test('EventItems contains valid data', () {
  expect(EventItems.eventItems.length, greaterThan(0));
});
```

**3. Integration Tests** (Priority: MEDIUM):
```dart
// Test full user flows
testWidgets('Navigate between tabs', (tester) async {
  await tester.pumpWidget(MyApp());
  await tester.tap(find.byIcon(Icons.card_giftcard));
  await tester.pumpAndSettle();
  expect(find.byType(CampaignPage), findsOneWidget);
});
```

**4. Golden Tests** (Priority: LOW):
```dart
// Visual regression testing
testWidgets('HomePage golden test', (tester) async {
  await tester.pumpWidget(MaterialApp(home: HomePage()));
  await expectLater(
    find.byType(HomePage),
    matchesGoldenFile('golden/homepage.png'),
  );
});
```

### Running Tests

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/widget_test.dart

# Run with coverage
flutter test --coverage

# View coverage report
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

## Known Limitations and Issues

### Functional Limitations

1. **No Backend Integration**:
   - All data is hardcoded
   - No API calls or network requests
   - No data synchronization

2. **No Data Persistence**:
   - No local database (SQLite, Hive, etc.)
   - No SharedPreferences for user data
   - Data resets on app restart

3. **No State Management**:
   - No centralized state management
   - Difficult to share data between screens
   - Limited scalability

4. **Non-Functional Features**:
   - Many navigation buttons commented out
   - Quick action buttons have no functionality
   - Menu options (Edit Profile, FAQ, History, Logout) not implemented
   - Notification icon is decorative only

5. **No Authentication**:
   - No login/register functionality
   - No user session management
   - Hardcoded user name ("John")

6. **No Error Handling**:
   - No try-catch blocks
   - No error state UI
   - No network error handling

### UI/UX Limitations

1. **Hardcoded Dimensions**:
   - Fixed width/height values (e.g., `height: 120, width: 362.2`)
   - May not work well on different screen sizes
   - Not fully responsive

2. **No Localization**:
   - All strings hardcoded in English
   - No internationalization support

3. **Limited Accessibility**:
   - No semantic labels
   - No screen reader support
   - No accessibility testing

4. **Inconsistent Design**:
   - BookingPage and HelpCenterPage show same content
   - Some design patterns not standardized

### Technical Debt

1. **Test Coverage**:
   - Template test doesn't match app
   - No meaningful test coverage
   - Testing infrastructure needs setup

2. **Code Quality**:
   - Some commented-out code blocks
   - Magic numbers in layouts
   - Inline styling throughout (no theme system)

3. **Performance**:
   - No image optimization
   - No lazy loading
   - No performance profiling

## Future Development Roadmap

### High Priority

1. **Implement State Management**:
   - Choose framework: Provider, Riverpod, GetX, or BLoC
   - Centralize app state
   - Enable data sharing between screens

2. **Backend Integration**:
   - Design REST API or use Firebase
   - Implement HTTP client (dio or http)
   - Add authentication endpoints
   - Create booking system API

3. **Data Persistence**:
   - Add local database (Hive or SQLite)
   - Implement SharedPreferences for settings
   - Cache user data and bookings

4. **Authentication System**:
   - Implement login/register screens
   - Add JWT token management
   - Secure storage for credentials
   - Session management

5. **Complete Core Features**:
   - Implement booking flow
   - Connect quick action buttons
   - Add profile editing
   - Create FAQ section
   - Implement booking history

### Medium Priority

1. **Comprehensive Testing**:
   - Rewrite widget_test.dart
   - Add unit tests for models and business logic
   - Create integration tests for user flows
   - Set up CI/CD for automated testing

2. **Error Handling**:
   - Add try-catch blocks for async operations
   - Create error state UI components
   - Implement error logging and reporting
   - Add network connectivity checks

3. **Responsive Design**:
   - Replace hardcoded dimensions with responsive layouts
   - Use MediaQuery for screen-aware sizing
   - Test on multiple device sizes
   - Add tablet and web-specific layouts

4. **Theme System**:
   - Create centralized ThemeData
   - Define color palette
   - Standardize text styles
   - Support dark mode

5. **Improve Navigation**:
   - Implement proper routing (GoRouter or Navigator 2.0)
   - Add deep linking support
   - Create navigation drawer if needed
   - Add breadcrumbs for web

### Low Priority

1. **Localization**:
   - Add intl package
   - Extract strings to ARB files
   - Support multiple languages
   - Add language switcher

2. **Accessibility**:
   - Add semantic labels
   - Test with screen readers
   - Improve contrast ratios
   - Add keyboard navigation for web

3. **Performance Optimization**:
   - Optimize images (WebP format)
   - Implement lazy loading
   - Add caching strategies
   - Profile and optimize build times

4. **Advanced Features**:
   - Push notifications
   - Real-time chat with technicians
   - GPS tracking integration
   - Payment gateway integration
   - Review and rating system

5. **Analytics and Monitoring**:
   - Add Firebase Analytics or similar
   - Implement crash reporting (Sentry)
   - User behavior tracking
   - Performance monitoring

## Important Notes for AI Assistants

### Before Making Changes

1. **Always Read First**:
   - Read the file you plan to modify
   - Understand existing patterns and conventions
   - Check for dependencies and imports

2. **Check Current State**:
   - Verify current git branch
   - Run `flutter analyze` to check for issues
   - Ensure app runs without errors

3. **Understand Context**:
   - This is a student project (Semester 6)
   - UI-focused prototype stage
   - Many features are placeholders

### When Writing Code

1. **Maintain Consistency**:
   - Follow existing naming conventions
   - Use similar styling patterns
   - Match the current architecture pattern

2. **Keep It Simple**:
   - Don't over-engineer solutions
   - Avoid adding unnecessary dependencies
   - Focus on the specific requested feature

3. **Dart Best Practices**:
   - Use null safety properly
   - Prefer const constructors where possible
   - Use named parameters for clarity
   - Follow Flutter widget composition patterns

4. **Avoid Breaking Changes**:
   - Don't change existing public APIs without reason
   - Maintain backward compatibility
   - Test that existing features still work

### When Adding Dependencies

1. **Check Compatibility**:
   - Ensure package supports Dart 3.3.0+
   - Verify null safety support
   - Check platform compatibility (if needed for all 6 platforms)

2. **Consider Alternatives**:
   - Check if existing dependencies can solve the problem
   - Avoid adding large packages for small features
   - Consider maintenance status of packages

3. **Update Process**:
   ```bash
   flutter pub add package_name
   # Or manually edit pubspec.yaml, then:
   flutter pub get
   ```

### When Implementing Features

1. **Plan First**:
   - For complex features, consider using state management
   - Think about data flow and persistence needs
   - Consider error handling and edge cases

2. **Start Small**:
   - Implement core functionality first
   - Add UI polish after functionality works
   - Test incrementally

3. **Document as You Go**:
   - Add comments for complex logic
   - Update this CLAUDE.md if architecture changes
   - Document new conventions or patterns

### Testing Expectations

1. **Current Reality**:
   - Limited test coverage exists
   - Manual testing is primary method
   - Don't break existing functionality

2. **When Adding Tests**:
   - Start with widget tests for new features
   - Test happy path first, then edge cases
   - Keep tests simple and readable

3. **Running Tests**:
   ```bash
   flutter test
   flutter analyze
   ```

### Git and Deployment

1. **Branch Management**:
   - Always work on feature branches (claude/*)
   - Branch name must include session ID for push
   - Current: `claude/claude-md-mkdqpraur7zxiu7z-EswVo`

2. **Commit Messages**:
   - Use descriptive, clear commit messages
   - Format: "Add feature X" or "Fix issue Y"
   - Reference issue numbers if applicable

3. **Before Pushing**:
   - Run `flutter analyze` to check for issues
   - Ensure app builds successfully
   - Test on at least one platform
   - Use `git push -u origin <branch-name>`

4. **Push Retry Strategy**:
   - If network error occurs, retry up to 4 times
   - Use exponential backoff: 2s, 4s, 8s, 16s
   - Report persistent failures to user

### Communication Tips

1. **Explain Your Changes**:
   - Describe what you're doing before making changes
   - Explain why a particular approach was chosen
   - Mention any trade-offs or limitations

2. **Be Transparent**:
   - If you don't understand something, say so
   - If a feature needs backend work, mention the limitation
   - Clarify when features are stubs vs. fully implemented

3. **Provide Context**:
   - Include file paths with line numbers
   - Example: "Updated navigation in lib/nav_bar.dart:42"
   - Help users understand where changes were made

### Common Tasks Quick Reference

**Add a new screen:**
1. Create `lib/view/newscreen.dart`
2. Import and add to `nav_bar.dart` if needed
3. Follow existing Scaffold + Container pattern

**Add an image asset:**
1. Place in `assets/images/`
2. Reference as `assets/images/filename.png`
3. Already configured in pubspec.yaml

**Add a dependency:**
```bash
flutter pub add package_name
```

**Fix formatting issues:**
```bash
dart format lib/
```

**Check for problems:**
```bash
flutter analyze
```

**Run the app:**
```bash
flutter run
```

**Commit changes:**
```bash
git add .
git commit -m "Your message"
git push -u origin branch-name
```

## Project Contacts and Resources

**Project Repository**: Check git config for remote URL
**Developer**: Harith (Semester 6 student)
**Project Timeline**: Week 1-14 of Semester 6
**Development Phase**: Prototype/MVP stage

### Useful Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Language Tour](https://dart.dev/language)
- [Material Design 3](https://m3.material.io/)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)
- [Pub.dev Packages](https://pub.dev/)

---

## Changelog

**2026-01-14**: Initial CLAUDE.md created with comprehensive codebase documentation

---

*This document should be updated whenever significant architectural changes are made or new conventions are established.*

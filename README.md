          👟 Flutter Shoe Store App
A fully-featured, elegant e-commerce shoe store app built using Flutter. This mobile application showcases a catalog of 40 locally stored shoe images and provides essential shopping features like product browsing, cart management, wishlist saving, and user profile display.
________________________________________
📱 Key Features
1. Login Interface
•	Simple UI with email/password fields
•	Smooth transition to the home screen upon login
•	No backend — UI demonstration only
2. Product Catalog
•	Grid layout showcasing 40 shoes using local assets
•	Each item includes:
o	Product image
o	Name
o	Price
•	Tap to view detailed product info
3. Product Detail Page
•	Larger image with error handling
•	Dynamic size selection using ChoiceChip
•	Add-to-cart button (disabled until size is selected)
•	Heart icon to toggle wishlist
4. Cart Management
•	Add multiple products with live total calculation
•	Styled empty-cart message with call-to-action
•	Checkout simulation (visual only)
5. Wishlist Functionality
•	Save favorite items with toggle button
•	View wishlist from profile or bottom nav
•	Shared product model allows reuse across screens
6. Search Feature
•	Type-ahead search bar in AppBar
•	Real-time filtering of all products by name
•	View filtered list and jump to product details
7. Profile Screen
•	Display avatar, user name & email
•	Navigate to wishlist, orders (placeholder), and logout
•	Logout resets app to login screen
8. Navigation
•	Bottom navigation bar with four tabs:
o	Home
o	Wishlist
o	Cart
o	Profile
________________________________________
📂 Project Structure
lib/
├── main.dart                  # App root and routing
├── models/
│   └── product.dart           # Product data model
├── screens/
│   ├── login_screen.dart
│   ├── product_list_screen.dart
│   ├── product_detail_screen.dart
│   ├── cart_screen.dart
│   ├── profile_screen.dart
│   ├── wishlist_screen.dart
│   └── search_screen.dart
├── widgets/
│   ├── product_card.dart      # Grid item design
│   └── bottom_nav_bar.dart    # Reusable nav bar
└── utils/
    └── constants.dart         # Styling constants

assets/
└── photos/                    # Contains 1.jpg to 40.jpg
________________________________________
🚀 Setup Instructions
Prerequisites
•	Flutter SDK (3.x recommended)
•	Dart SDK (included with Flutter)
•	Android Studio / VS Code / any IDE with Flutter plugin
Step-by-Step Guide
1.	Clone this repository
git clone https://github.com/your-username/flutter-shoe-store.git
cd flutter-shoe-store
2.	Install packages
flutter pub get
3.	Configure assets in pubspec.yaml
flutter:
  assets:
    - assets/photos/
4.	Run the app
flutter run
💡 Make sure emulator or device is running before executing flutter run
________________________________________
🧩 Notable Widgets and Patterns
ProductCard Widget
•	Card view for each product in the grid
•	Dynamically supports both AssetImage and NetworkImage
•	Minimal padding and elevation
BottomNavBar Widget
•	Custom reusable widget
•	Updates current index & switches tabs
•	Highlights selected icon
Constants File
•	Shared styling constants (colors, padding, etc.)
•	Easily modify app's global theme here
________________________________________
📸 Screenshots
Chrome : On Local Host 
   
 
	On Mobile Device : Emulator Screen shot [ IOS + Android]
                       

                                                               


________________________________________
📄 License
This project is licensed under the MIT License. See the LICENSE file for details.
________________________________________
🙌 Acknowledgements
•	Flutter
•	Pexels & Unsplash for image inspiration
•	Open-source Flutter community




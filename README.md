# My Flutter App

This is a Flutter application that requires an API key to run. The API key must be placed in a `.env` file located at the root of the project directory.

## Setup, Running, and Testing Instructions

### 1. Install Flutter

Ensure Flutter is installed on your machine. If Flutter is not installed, follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install).

After installation, verify Flutter is installed by running:

```bash
flutter --version
```

### 2. Clone the Repository

Clone the repository to your local machine using the following command:

```bash
git clone https://github.com/bargo123/exinity-assessment.git
cd exinity-assessment
```


### 3. Install Dependencies
Navigate to the root of your project directory and run the following command to install all necessary dependencies:

```bash
flutter pub get
```

4. Add an API Key
This application requires an API key. You need to add an .env file at the root of the project directory. Follow these steps:

Create the .env file in the root directory (where pubspec.yaml is located):

```bash
touch .env
```

Open the .env file and add your API key:

API_KEY=your_api_key_here

Make sure the .env file is correctly placed in the root of the project (at the same level as the pubspec.yaml file).

### 5. Running the App

To run the app on an emulator or physical device, follow these steps:
Ensure the device is connected, or the emulator is running.
Run the app with the following command:


```bash
flutter run
```

## 6. Testing the App

Unit Tests
To run the unit tests for this project, use the following command:

```bash
flutter test
```




# exinity-assessment

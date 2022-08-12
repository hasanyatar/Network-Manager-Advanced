# Network Service - Advanced

 
[![style:lints](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://pub.dev/packages/effective_dart) 
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/kodingworks/flutter-works-boilerplate)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Bloc State Management](https://tinyurl.com/bloc-library)](https://github.com/felangel/bloc) 


[![Profile](https://img.shields.io/github/followers/hasanyatar?label=follow&style=social)](https://github.com/hasanyatar)
![GitHub stars](https://img.shields.io/github/stars/hasanyatar/Network-Manager-Advanced?style=social)
![GitHub forks](https://img.shields.io/github/forks/hasanyatar/Network-Manager-Advanced?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/hasanyatar/Network-Manager-Advanced?style=social)

## Table Of Content

- [Overview](#overview)
- [Getting Started](#getting-started)
  * [Requirement](#requirement)
  * [Setup](#setup)
- [Setup Firebase](#setup-firebase)
  * [Android](#android)
  * [IOS](#ios)
- [Change Package Name](#change-package-name)
- [Running/Debugger](#running-debugger)
  * [1. Mode Dev (Development)](#1-mode-dev--development-)
  * [2. Mode Staging](#2-mode-staging)
  * [3. Mode Prod (Production)](#3-mode-prod--production-)
  * [Jika Pengguna VS Code](#jika-pengguna-vs-code)
- [Features](#features)
- [Library / Dependency](#library---dependency)
- [Folder Structure](#folder-structure)
- [Module](#module)
  * [List Default Modules](#list-default-modules)
    + [Shared Module:](#shared-module-)
    + [Features Module:](#features-module-)
  * [Create Module](#create-module)
- [Global Config/Variable](#global-config-variable)
  * [Panggil Global Variable](#panggil-global-variable)
- [Penggunaan Translation/Localization](#penggunaan-translation-localization)
  * [Create Item Translation](#create-item-translation)
  * [Generate Translation](#generate-translation)
  * [Get Item Translation](#get-item-translation)
  * [Create Locale](#create-locale)
  * [Set Main Locale](#set-main-locale)
- [Generate Icon Launcher](#generate-icon-launcher)
- [Generate Native Splash Screen](#generate-native-splash-screen)


---


## Overview

This repository is an Open-Source project intended for Boilerplate on Flutter that really supports your productivity, with lots of features that we have prepared instantly that can speed up your work process.

## Getting Started

### Requirement

Here are some things you need to prepare before this Boilerplate setup:

1. Flutter SDK Stable (Latest Version) [Install](https://flutter.dev/docs/get-started/install)
2. Android Studio [Install](https://developer.android.com/studio)
3. Visual Studio Code (Optional) [Install](https://code.visualstudio.com/)

### Setup

To save your project based on this boilerplate, you need to do some of the steps you need to do. For a simple example of implementation, see the branch [example](https://github.com/kodingworks/flutter-works-boilerplate/tree/example/)

Here are the steps for setting up a Project with this Network Manager Advanced:

**Step 1:**

In this step you need to download (cloning) files from this repository to your local computer:

```bash
git clone http://github.com/kodingworks/flutter-works-boilerplate.git
```

Atau 

```bash
git clone git@github.com:kodingworks/flutter-works-boilerplate.git
```

**Step 2:**

Langkah selanjutnya buka folder yang telah di unduh/clone ke aplikasi cli seperti `bash`, `cmd`, `terminal` . 

Dan kemudian jalankan perintah ini ke console:

```bash
flutter pub get
```

## Flavors
### What is the Flavor ?

Flavors are so amazing. Just like how an ice-cream has different flavors and everyone loves them, your application may have different flavors too! By using flavors, you can create different versions of your app and hence it’s quite useful. This means you can generate different versions or variants of your app using a single code-base.
### Why do we need Flavors ?
They are just comfortable. They let you define some build configuration and switch them as you want. For example, you could have one flavor for development, and one for production. You can set different URL for API calls or different icons and app names. With a click you’re ready to develop or to release your great application.
#### Flavors Folder Structure in my project
```
├─ flavors/
│  ├─ build_config.dart
│  ├─ env_config.dart
│  └─ enviroment.dart   
├─ main_dev.dart
└─ main_prod.dart
```
### Flavors configuration
After opening build.gradle. As shown below, We need to define a name for flavor dimensions. After that, both development and production need to configure.
Dimension is the flavor dimensions. Res Value is the name of the app And the application suffix is just an extension. I hope I could tell this topic  :)

android/app/build.gradle

In build.gradle
```gradle
flavorDimensions "default"
    productFlavors {
        dev {
            dimension "default"
            resValue 'string', 'app_name', 'Dev'
            applicationIdSuffix ".dev"
            versionNameSuffix ".dev"
        }
        prod {
            dimension "default"
            resValue 'string', 'app_name', 'Prod'
            applicationIdSuffix ".prod"          
            versionNameSuffix ".prod"
        }
    }           
```
### while running the application with flavor for Visual Studio Code
#### In terminal
Development
```bash
flutter run -t lib/main_dev.dart — flavor dev 
```
Production
```bash
flutter run -t lib/main_dev.dart — flavor prod
```
#### Also, You can configure launch.json according to the flavor
```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "development",
            "program": "lib/main_dev.dart",
            "request": "launch",
            "type": "dart",
            "args": [
                "--flavor",
                "dev"
            ]
        },
        {
            "name": "production",
            "program": "lib/main_prod.dart",
            "request": "launch",
            "type": "dart",
            "args": [
                "--flavor",
                "prod"
            ]
        }
    ]
}
```

#### Create                                                               
---

## Library / Dependency

In this boilerplate, we add several libraries to support productivity in the process. Here's a list of some of the libraries that are already available on this boilerplate along with their descriptions and versions:

### Dependencies

|Name                  |Description                                                                                     |Version    |
|----------------------|-------------------------------------------------------------------------------------------------|---------|
|[dio](https://pub.dev/packages/dio) |As a library to handle very diverse http requests.|`^4.0.6`|
|[dartz](https://pub.dev/packages/dartz) |Used for Functional Programming. |`^0.10.1`|
|[get_it](pub.dev/packages/get_it) |A library that functions to overcome Dependency Injection.|`^7.2.0`|   
|[equatable](pub.dev/packages/equatable) |To solve the comparison of object.|`^2.0.3`|
|[flutter_bloc](pub.dev/packages/flutter_bloc) |As a library to handle all very flexible State Management.|`^8.0.1`|
|[pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger) |Pretty Dio logger is a Dio interceptor that logs network calls in a pretty, easy-to-read format.|`^1.1.1`|
|[connectivity_plus](https://pub.dev/packages/connectivity_plus) |This plugin allows Flutter apps to discover network connectivity and configure themselves accordingly. It can distinguish between cellular vs WiFi connection..|`^2.3.6`| 
|[shared_preferences](https://pub.dev/packages/shared_preferences) |SharedPreferences is an API from Android SDK to store and retrieve application preferences. SharedPreferences are simply sets of data values that are held persistently.|`^2.0.15`| 

### Dev dependencies

|Name                  |Description                                                                                     |Version    |
|----------------------|-------------------------------------------------------------------------------------------------|---------|
|[retrofit_generator](https://pub.dev/packages/retrofit_generator) |The retrofit generator is a dio client generator using source_gen and inspired by Chopper and Retrofit.|`>=4.0.0 <5.0.0`|
|[json_serializable](https://pub.dev/packages/json_serializable) |Automatically generate code for converting to and from JSON by annotating Dart classes. |`>4.4.0`|
|[json_annotation](https://pub.dev/packages/json_annotation) |Classes and helper functions that support JSON code generation via the `json_serializable` package.|`^4.6.0`|   
|[flutter_lints](https://pub.dev/packages/flutter_lints) |Recommended lints for Flutter apps, packages, and plugins to encourage good coding practices.|`^2.2.0`|
|[build_runner](https://pub.dev/packages/build_runner) |A build system for Dart code generation and modular compilation.|`^2.2.0`|
|[retrofit](https://pub.dev/packages/retrofit) |retrofit.dart is a dio client generator using source_gen and inspired by Chopper and Retrofit.|`>=3.0.0 <4.0.0`|



   

## Folder Structure

```md
lib/
┣ app.dart
┣ main_dev.dart
┣ main_prod.dart
┣ flavors
┃ ┣ build_config.dart
┃ ┣ env_config.dart
┃ ┣ enviroment.dart
┃ ┗ flavors.dart
┣ app/
┃ ┣ data/
┃ ┃ ┣ datasource/  
┃ ┃ ┃ ┗ product/  
┃ ┃ ┃   ┣ product_data_source.dart 
┃ ┃ ┃   ┗ product_data_source.g.dart
┃ ┃ ┣ repository/  
┃ ┃ ┃ ┗ product/
┃ ┃ ┃   ┗ products_repository_impl.dart
┃ ┃ ┗ model/  
┃ ┃   ┗ product/  
┃ ┃     ┣ product_model.dart 
┃ ┃     ┣ product_model.g.dart 
┃ ┃     ┣ product_response.dart 
┃ ┃     ┗ product_response.g.dart 
┃ ┣ domain/    
┃ ┃ ┣ entities/    
┃ ┃ ┣ ┗ product/    
┃ ┃ ┃   ┗ product.dart    
┃ ┃ ┣ repository/    
┃ ┃ ┃ ┗ products_repository.dart    
┃ ┃ ┗ usecase/    
┃ ┃   ┗ products_usecase.dart   
┃ ┣ presentation/ 
┃ ┃ ┣ bloc/ 
┃ ┃ ┃ ┣ products_bloc.dart 
┃ ┃ ┃ ┣ products_event.dart 
┃ ┃ ┃ ┗ products_state.dart 
┃ ┃ ┗ src/ 
┃ ┃   ┗ products_view.dart 
┃ ┣ injector.dart
  ┗ core/ 
    ┣ common/
    ┃ ┗ mixins/
    ┃   ┗ portratif_only_mode_mixin.dart
    ┣ usecase/
    ┃ ┗ usecase.dart
    ┗ network/
      ┣ network_information/
      ┃ ┣ base_network_info.dart
      ┃ ┗ network_connect_info.dart
      ┗ network_manager/
        ┣ api_errors/
        ┃ ┣ api_error.dart
        ┃ ┣ bad_network_api_error.dart
        ┃ ┣ internal_server_api_error.dart
        ┃ ┗ unauthorized_api_error.dart
        ┣ interceptors/
        ┃ ┣ interceptor.dart
        ┃ ┣ auth_interceptor.dart
        ┃ ┣ bad_network_error_interceptor.dart
        ┃ ┣ internal_server_error_interceptor.dart
        ┃ ┣ unauthorized_interceptor.dart           
        ┗ network_manager.dart
```           
  
  
  
  

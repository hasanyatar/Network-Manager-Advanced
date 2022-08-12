[<h1 align="center">Network Service -Advanced </h1></br>
<p align="center">
  I used Clean Architecture in my project. As service I used <a href="https://pub.dev/packages/retrofit" target="_blank"> retrofit, </a><a href="https://pub.dev/packages/dio">dio, </a><a href="https://pub.dev/packages/json_serializable"> json_serializable</a>. And finally, I used </a><a href="https://pub.dev/packages/flutter_bloc"> bloc pattern</a> 
🌠 Transform into a different view or activity using morphing animations using<a href="https://material.io/design/motion/the-motion-system.html" target="_blank"> Transformation motions </a> of new material version.
</p>
<p align="center">
  <a href="https://opensource.org/licenses/Apache-2.0"><img alt="License" src="https://img.shields.io/badge/License-Apache%202.0-blue.svg"/></a>
  <a href="https://github.com/hasanyatar"><img alt="Profile" src="https://img.shields.io/github/followers/hasanyatar?label=Hasan%20YATAR&style=social"/></a>
</p>
<p align="center">
<a href="/README.md" target="_blank"> English </a> | <a href="/README_TR.md" target="_blank"> Turkish</a></p>
<h3 align="left">Languages and Tools: </h3>
<p align="left"> <a href="https://dart.dev" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg" alt="dart" width="24" height="24"/> Dart </a> <a href="https://flutter.dev" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg" alt="flutter" width="24" height="24"/> Flutter </a>  </p>](url)

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
  
  
  
  

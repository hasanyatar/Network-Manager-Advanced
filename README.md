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

|Name                  |Deskripsi                                                                                        |Versi    |
|----------------------|-------------------------------------------------------------------------------------------------|---------|
|[dartz](pub.dev/packages/dartz) |Used for Functional Programming. |`^0.10.1`   |
|[dio](https://pub.dev/packages/dio) |As a library to handle very diverse http requests.|`^4.0.6`|
|[equatable](pub.dev/packages/equatable) |Untuk mengatasi komparasi dari object.                                                           |`^1.2.6`   |
|[flutter_bloc](pub.dev/packages/flutter_bloc) |Sebagai library untuk mengatasi segala State Management yang sangat flexible.                    |`^6.1.2`   |
|[formz](pub.dev/packages/formz) |Digunakan untuk mengatasi validasi Form pada State Management yang mudah dan reusable.           |`^0.3.2`   |
|[get_it](pub.dev/packages/get_it) |Library yang berfungi untuk mengatasi Dependency Injection.                                      |`^5.0.6`   |
|[hive](pub.dev/packages/hive) |Sebagai DataBase utama yang mengatasi berbagai dynamic data, dengan performa yang sangat optimal.|`^1.4.4+1` |
|[image_picker](pub.dev/packages/image_picker) |Untuk mengatasi pengambilan gambar dari camera maupun gallery.                                   |`^0.6.7+22`|
|[rxdart](pub.dev/packages/rxdart) |Untuk mengatasi reactiveX untuk asynchronous programming                                         |`^0.25.0`  |
|[url_launcher]((pub.dev/packages/url_launcher)) |Untuk mengatasi peluncuran berbagai URL/link ke berbagai aplikasi yang tersedia di App.          |`^5.7.10`  |
|[package_info](pub.dev/packages/package_info) |Untuk mengambil dari data native App sekarang seperti versi, nama aplikasi, dll.                 |`^0.4.3+4` |
|[firebase_auth](pub.dev/packages/firebase_auth) |Untuk mengatasi authentikasi dari firebase.                                                      |`^0.20.0+1`|
|[firebase_core](pub.dev/packages/firebase_core) |Library utama dari Firebase SDK untuk Flutter                                                    |`^0.7.0`   |
|[firebase_crashlytics](pub.dev/packages/firebase_crashlytics)  |Library yang berfungsi untuk mencatat berbagai masalah error code, BUG, yang tersedia dalam App. |`^0.4.0+1` |
|[firebase_messaging](pub.dev/packages/firebase_messaging) |Untuk mengatasi notifikasi yang dari firebase console.                                           |`^8.0.0-dev.14` |
|[firebase_performance](pub.dev/packages/firebase_performance) |Untuk mencatat performa aplikasi kita dan request http di berbagai device yang dikimkan ke Firebase Console.                                           |`^0.5.0+1` |
|[firebase_remote_config](pub.dev/packages/firebase_remote_config) |Untuk mengambil data configurasi dari firebase console, dengan value yang dynamic.               |`^0.6.0`   |
|[google_sign_in](pub.dev/packages/google_sign_in) |Mengatasi login melalui google berdasarkan dari firebase.      

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
  
  
  
  

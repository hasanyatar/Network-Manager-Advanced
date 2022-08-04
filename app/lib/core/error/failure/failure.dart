import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

const String messageConnectionFailure = 'messageConnectionFailure';

class ServerFailure extends Failure {
  @override
  List<Object> get props => [messageConnectionFailure];
}

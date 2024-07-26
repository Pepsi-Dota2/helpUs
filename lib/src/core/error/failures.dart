import 'package:equatable/equatable.dart';
abstract class Failures extends Equatable {
  final List properties;
  const Failures([this.properties = const <dynamic>[]]);
  @override
  List get props => properties;
}
// General failures
class ServerFailure extends Failures {}

class CacheFailure extends Failures {}

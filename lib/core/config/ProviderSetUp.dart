import 'package:delivery/core/remote/Api.dart';
import 'package:provider/provider.dart';

class ProviderSetUp {
  static final List<SingleChildCloneableWidget> providers = [
    ...independentServices,
    ...dependentServices,
    ...viewModels
  ];

  static List<SingleChildCloneableWidget> independentServices = [
    Provider.value(value: Api())
  ];

  static List<SingleChildCloneableWidget> dependentServices = [
  ];

  static List<SingleChildCloneableWidget> viewModels = [];
}

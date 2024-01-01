part of 'home_bloc.dart';

class HomeState {
  final APIstatus apIstatus;

  HomeState({required this.apIstatus});

  HomeState copyWith(APIstatus newAPIStatus) {
    return HomeState(apIstatus: newAPIStatus ?? apIstatus);
  }
}

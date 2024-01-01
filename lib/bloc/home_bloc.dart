import 'package:bloc/bloc.dart';
import 'package:bloc_dio_project/bloc/api_status.dart';
import 'package:bloc_dio_project/core/data_state.dart';
import 'package:bloc_dio_project/providers/api_providers.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(apIstatus: APILoading())) {
    on<LoadProductsEvent>((event, emit) async {
      var data = await APIprovider().loadProducts();

      if (data is DataFailed) {
        emit(state.copyWith(APIError(error: data.error)));
      } else if (data is DataSucces) {
        emit(state.copyWith(APICompleted(data: data.data)));
      } else {
        emit(state.copyWith(APILoading()));
      }
    });
  }
}

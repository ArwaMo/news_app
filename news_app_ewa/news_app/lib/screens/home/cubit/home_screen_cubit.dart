import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/data/get_data_model.dart';
import 'package:news_app/repository/get_data_repo.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());

  getData() async {
    emit(HomeScreenLoading());

    GatNewsModel? newsData = await GetNewsRepo().getData();

    if (newsData != null) {
      emit(HomeScreenSuccess(newsData));
    } else {
      emit(HomeScreenError());
    }
  }
}

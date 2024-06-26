import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  

final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksloading());
    var result = await homeRepo.FetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksfailure(failure.errmessage));
    }, (books) {
      emit(FeaturedBookssuccess(books));
    });
  }
}


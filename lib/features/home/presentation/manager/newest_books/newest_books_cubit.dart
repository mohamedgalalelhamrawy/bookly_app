import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  
final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.FetchNewestBooks();

    result.fold((failure) {
      emit(NewestBooksFailure(failure.errmessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}

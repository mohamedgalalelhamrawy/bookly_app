part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}


class NewestBooksLoading extends NewestBooksState {}

class NewestBooksFailure extends NewestBooksState {
  final String errmessage;
  NewestBooksFailure(this.errmessage);
}

class NewestBooksSuccess extends NewestBooksState {
  final List<Bookmodel> books;
  NewestBooksSuccess(this.books);
  
}

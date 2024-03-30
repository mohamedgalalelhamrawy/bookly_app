part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksloading extends FeaturedBooksState {}

class FeaturedBooksfailure extends FeaturedBooksState {
  final String errmessage;
  FeaturedBooksfailure(this.errmessage);
}

class FeaturedBookssuccess extends FeaturedBooksState {
  final List<Bookmodel> books;
  FeaturedBookssuccess(this.books);
}

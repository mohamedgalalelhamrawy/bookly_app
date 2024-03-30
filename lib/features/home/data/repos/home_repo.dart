

import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {

  Future<Either<failure,List<Bookmodel>>>  FetchFeaturedBooks();
  Future<Either<failure,List<Bookmodel>>> FetchNewestBooks();
}
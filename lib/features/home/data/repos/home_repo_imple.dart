

import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_Services.dart';
import 'package:bookly_app/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImple implements HomeRepo {
  final ApiServices abiservices;
  HomeRepoImple(this.abiservices);
  @override
  Future<Either<failure, List<Bookmodel>>> FetchFeaturedBooks() async {
    try {
   var data = await abiservices.get(endpoints:"volumes?Filtering=free-ebooks&q=subject:Programming" );
  List<Bookmodel> books = [];
  for (var item in data["items"]) {
    books.add(Bookmodel.fromJson(item));
  }
  return right(books);
}  catch (e) {
   if(e is DioException){
    return left(ServerFailure.fromDioError(e));
   }
   return left(ServerFailure(e.toString()));
}
  }

  @override
  Future<Either<failure, List<Bookmodel>>> FetchNewestBooks() async {
 try {
   var data = await abiservices.get(endpoints:"volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest" );
  List<Bookmodel> books = [];
  for (var item in data["items"]) {
    books.add(Bookmodel.fromJson(item));
  }
  return right(books);
} catch (e) {
   if(e is DioException){
    return left(ServerFailure.fromDioError(e));
   }
   return left(ServerFailure(e.toString()));
}
  }
  
}






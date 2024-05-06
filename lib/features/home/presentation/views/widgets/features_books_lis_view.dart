import 'package:bookly_app/core/widgets/errorwidget.dart';
import 'package:bookly_app/core/widgets/loadingwidget.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class featuredBooksListView extends StatelessWidget {
  const featuredBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state){
        if (state is FeaturedBookssuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8),
                    child: featuredListViewItem(imageURL: "https://media.springernature.com/w580h326/nature-cms/uploads/collections/Networks-Collection-img-final-f2c265a59e457f48645e2aa3ff90e942.jpg"
                    // state.books[index].volumeInfo.imageLinks.thumbnail ,
                    ),
                  );
                }),
          );
        } else if(state is FeaturedBooksfailure){
          return CustomErrorWidget(errmessage: state.errmessage);
        }else {
          return customLoadingWidget();
        }
      },
    );
  }
}

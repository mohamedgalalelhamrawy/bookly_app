import 'package:bookly_app/core/widgets/errorwidget.dart';
import 'package:bookly_app/core/widgets/loadingwidget.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class bestSellerListView extends StatelessWidget {
  const bestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
         if (state is NewestBooksSuccess){
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(bookmodel: state.books[index] ,),
              );
            });
         } else if(state is NewestBooksFailure){
          return CustomErrorWidget(errmessage: state.errmessage);
         } else {
          return customLoadingWidget();
         }
      },
    );
  }
}

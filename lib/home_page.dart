import 'package:book_store/thema.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     

    Widget popularBook() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Books',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 32,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardBook(
                      imageUrl: 'assets/book1.png',
                      nameBook: 'Fashionopolis',
                      writter: 'Dana Thomas',
                    ),
                    CardBook(
                      imageUrl: 'assets/book2.png',
                      nameBook: 'Chanel',
                      writter: 'Patrick Mauriès',
                    ),
                    CardBook(
                      imageUrl: 'assets/book3.png',
                      nameBook: 'Calligraphy',
                      writter: 'June & Lucy',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget newest() {
      return Container(
        margin: EdgeInsets.only(
          left: 28,
          top: 36,
          right: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Newest",
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 28,
              ),
              child: Column(
                children: [
                  BookTile(
                    imageUrl: 'assets/book4.png',
                    nameBook: 'Yven Saint Laurent',
                    writter: "Suzy Menkes",
                  ),
                  BookTile(
                    imageUrl: 'assets/book5.png',
                    nameBook: 'The Book of Signs',
                    writter: "Rudolf Koch",
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomNavbar() {
      return Container();
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // header(),
            // popularBook(),
            // newest(),
            Text('Hallo Guys'),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}

class BookTile extends StatelessWidget {
  final String imageUrl;
  final String nameBook;
  final String writter;

  const BookTile({
    Key? key,
    required this.imageUrl,
    required this.nameBook,
    required this.writter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          Container(
            width: 72,
            height: 105,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          SizedBox(width: 28),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameBook,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 4),
              Text(
                writter,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star_grey.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Container(
          //   height: 20,
          //   width: 20,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/icon_bookmark.png'),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class CardBook extends StatelessWidget {
  final String imageUrl;
  final String nameBook;
  final String writter;

  const CardBook({
    Key? key,
    required this.imageUrl,
    required this.nameBook,
    required this.writter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 131,
            height: 192,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF414144).withOpacity(0.1),
                  blurRadius: 32,
                  offset: Offset(0, 16),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameBook,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  writter,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

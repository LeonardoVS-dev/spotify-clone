import 'package:flutter/material.dart';
import 'package:clonespotify/components/cardCategory.dart';
import 'package:clonespotify/components/list.dart';
import 'package:clonespotify/components/listWithDescription.dart';
import 'package:clonespotify/components/infoLaunch.dart';
import 'package:clonespotify/components/cardNewSong.dart';
import 'package:clonespotify/components/cardPlaylist.dart';

class index extends StatefulWidget {
  const index({super.key});

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 25, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Bom dia',
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.notifications_none_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.av_timer_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 30,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.settings_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    CategoriaCard(label: 'Música'),
                                    CategoriaCard(label: 'Podcasts e programas'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              'Para você',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                        ),
                        SizedBox(
                          height: 240,
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return const ContainerAlbum();
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(width: 12,);
                            },
                          ),
                        ),
                        const Row(
                            children: [
                              RowAlbumCard(
                                label: "VITIN",
                                image: AssetImage(
                                        'assets/images/WhatsApp Image 2023-04-14 at 15.20.29.jpeg')
                                    as ImageProvider,
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "VITIN",
                                image: AssetImage(
                                        'assets/images/WhatsApp Image 2023-04-14 at 15.20.29.jpeg')
                                    as ImageProvider,
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          const Row(
                            children: [
                              RowAlbumCard(
                                label: "VITIN",
                                image: AssetImage(
                                        'assets/images/WhatsApp Image 2023-04-14 at 15.20.29.jpeg')
                                    as ImageProvider,
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "VITIN",
                                image: AssetImage(
                                        'assets/images/WhatsApp Image 2023-04-14 at 15.20.29.jpeg')
                                    as ImageProvider,
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          const Row(
                            children: [
                              RowAlbumCard(
                                label: "VITIN",
                                image: AssetImage(
                                        'assets/images/WhatsApp Image 2023-04-14 at 15.20.29.jpeg')
                                    as ImageProvider,
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "VITIN",
                                image: AssetImage(
                                        'assets/images/WhatsApp Image 2023-04-14 at 15.20.29.jpeg')
                                    as ImageProvider,
                              ),
                            ],
                          ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20, top: 20),
                            child: Text(
                              'Populares',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                        ),
                        SizedBox(
                          height: 240,
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 170,
                                    height: 170,
                                    child: Image.network('https://upload.wikimedia.org/wikipedia/en/f/f5/Thestranger1977.jpg'),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'The Stranger',
                                    style: Theme.of(context).textTheme.titleLarge,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Album de Billy Joel',
                                    style: Theme.of(context).textTheme.bodySmall,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(width: 12,);
                            },
                          ),
                        ),
                        InfoLancamento(avatar: AssetImage('assets/images/WhatsApp Image 2023-04-14 at 15.20.29.jpeg') as ImageProvider, label: 'VITIN'),
                        SizedBox(height: 16,),
                        const CardNovaMusica(
                          image: AssetImage('assets/images/WhatsApp Image 2023-04-13 at 15.46.31.jpeg') as ImageProvider, 
                          nomeMusica: 'VITIN - QUERO FORMATURA', 
                          nomeAutor: 'Single · VITIN',
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20, top: 26),
                            child: Text(
                              'Recomendados',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                        ),
                        SizedBox(
                          height: 240,
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 170,
                                    height: 170,
                                    child: Image.network('https://m.media-amazon.com/images/I/81AG7PiVVpL._AC_SX679_.jpg'),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      'Creedance Clearwater Revival aaaaaaaaaaaaaaa',
                                      style: Theme.of(context).textTheme.titleLarge,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(width: 12,);
                            },
                          ),
                        ),
                      ],
                    ),
                    
                  ),
                ),
              ),
              BottomNavigationBar(
                selectedFontSize: 11,
                unselectedFontSize: 9,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 26, 26, 27),
                elevation: 0,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    activeIcon: Icon(Icons.library_books_outlined, color: Colors.white,),
                    icon: Icon(Icons.home_filled, color: Colors.grey,),
                    label: 'Início',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(Icons.library_books_outlined, color: Colors.white,),
                    icon: Icon(Icons.search, color: Colors.grey,),
                    label: 'Buscar',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(Icons.library_books_outlined, color: Colors.white,),
                    icon: Icon(Icons.music_note_outlined, color: Colors.grey,),
                    label: 'Sua Biblioteca',
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
    );
  }
}
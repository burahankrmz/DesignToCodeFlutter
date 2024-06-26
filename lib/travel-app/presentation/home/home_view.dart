import 'package:daily_design_to_code/travel-app/presentation/home/enum/page_enum.dart';
import 'package:daily_design_to_code/travel-app/presentation/home/widgets/home_popular_widget.dart';
import 'package:daily_design_to_code/travel-app/presentation/home/widgets/home_recommended_widget.dart';
import 'package:daily_design_to_code/travel-app/presentation/home/widgets/home_searchfield.dart';
import 'package:daily_design_to_code/travel-app/presentation/home/widgets/home_selection_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelAppHomeView extends StatefulWidget {
  const TravelAppHomeView({super.key});

  @override
  State<TravelAppHomeView> createState() => _TravelAppHomeViewState();
}

class _TravelAppHomeViewState extends State<TravelAppHomeView> with _TravelAppHomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const _TravelAppHomeViewAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: const [
          SizedBox(height: 16,),
          TravelAppHomeSearchField(),
          SizedBox(height: 32,),
          TravelAppHomeSelectionButtons(),
          SizedBox(height: 32,),
          TravelAppHomePopularWidget(),
          SizedBox(height: 32,),
          TravelAppHomeRecommendedWidget()
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder<TravelAppPages>(
        valueListenable: selectedPageNotifier, 
        builder: (context, TravelAppPages selectedPage, child) {
          return _TravelAppHomeViewBottomBar(selectedPage: selectedPage, onTap: setSelectedPage);
        }
      )
    );
  }
}

mixin _TravelAppHomeViewMixin on State<TravelAppHomeView> {
  final ValueNotifier<TravelAppPages> selectedPageNotifier = ValueNotifier(TravelAppPages.home);

  setSelectedPage (TravelAppPages selectedPage) { 
    selectedPageNotifier.value = selectedPage;
  }

  @override
  void dispose() {
    selectedPageNotifier.dispose();
    super.dispose();
  }
}

class _TravelAppHomeViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _TravelAppHomeViewAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Explore", style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400),),
              const Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Color(0xff196EEE), size: 16),
                  SizedBox(width: 5,),
                  Text("Aspen, USA", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                  SizedBox(width: 5,),
                  Icon(Icons.expand_more_rounded, color: Color(0xff196EEE), size: 16),
                ],
              )
            ],
          ),
          Text("Aspen", style: GoogleFonts.montserrat(fontSize: 32, fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(120);
}

class _TravelAppHomeViewBottomBar extends StatelessWidget {
  final TravelAppPages selectedPage;
  final Function(TravelAppPages selectedPage) onTap;
  const _TravelAppHomeViewBottomBar({required this.selectedPage, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 72,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              offset: const Offset(15, -19),
              blurRadius: 22,
              spreadRadius: 0,
              color: const Color(0xff186FF2).withOpacity(0.05)
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => onTap(TravelAppPages.home), 
                icon: (){
                  switch (selectedPage) {
                    case TravelAppPages.home:
                      return const Icon(Icons.home_filled, size: 24, color:Color(0xff196EEE));
                    default:
                    return const Icon(Icons.home_outlined, size: 24, color:  Color(0xffB8B8B8));
                  }
                }(),
              ),
              IconButton(
                onPressed: () => onTap(TravelAppPages.tickets), 
                icon: (){
                  switch (selectedPage) {
                    case TravelAppPages.tickets:
                      return const Icon(Icons.airplane_ticket, size: 24, color:Color(0xff196EEE));
                    default:
                    return const Icon(Icons.airplane_ticket_outlined, size: 24, color:  Color(0xffB8B8B8));
                  }
                }(),
              ),
              IconButton(
                onPressed: () => onTap(TravelAppPages.favorites), 
                icon: (){
                  switch (selectedPage) {
                    case TravelAppPages.favorites:
                      return const Icon(Icons.favorite, size: 24, color:Color(0xff196EEE));
                    default:
                    return const Icon(Icons.favorite_border_outlined, size: 24, color:  Color(0xffB8B8B8));
                  }
                }(),
              ),
              IconButton(
                onPressed: () => onTap(TravelAppPages.profile), 
                icon: (){
                  switch (selectedPage) {
                    case TravelAppPages.profile:
                      return const Icon(Icons.person_2, size: 24, color:Color(0xff196EEE));
                    default:
                    return const Icon(Icons.person_2_outlined, size: 24, color:  Color(0xffB8B8B8));
                  }
                }(),
              ),
            ],
          ),
        ),
      );
  }
}
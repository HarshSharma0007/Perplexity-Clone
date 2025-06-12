import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widgets/search_bar_button.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Where Knowledge Begins.",
        style: GoogleFonts.ibmPlexMono(
          fontSize: 40,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.5,
        ),
        ),
        const SizedBox(height: 32,),
        Container(
          width: 700,
          decoration: const BoxDecoration(
            color: AppColors.searchBar,
            
          ),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Search anything...',
                  hintStyle: TextStyle(
                    color: AppColors.textGrey,
                    fontSize: 16,
                  
                  ),
                  border: InputBorder.none,
                ),
              ),
              Row(
                children: [
                  const SearchBarButton(),
                  const SizedBox(width: 12),
                  const SearchBarButton(),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: AppColors.submitButton,
                      borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Icon(
                    Icons.arrow_forward, 
                    color: AppColors.background,
                    size: 16),
                  )

                ],
              )
            ],
          ),
        )
        
      ],
    );
  }
}
library;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/utils/utils.dart';

class FullScreenCarousel extends ConsumerStatefulWidget {
  final List<String> imageUrls;
  final int initialIndex;

  const FullScreenCarousel({
    super.key,
    required this.imageUrls,
    required this.initialIndex,
  });

  @override
  ConsumerState<FullScreenCarousel> createState() => _FullScreenCarouselState();
}

class _FullScreenCarouselState extends ConsumerState<FullScreenCarousel> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ViewModelProvider;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            CarouselSlider(
              carouselController: CarouselSliderController(),
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1,
                autoPlay: widget.imageUrls.length > 1,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                onPageChanged: (newIndex, reason) {
                  // ref
                  //         // .read(
                  //         //   viewModel
                  //         //       .currentImageIndexProvider(widget.initialIndex)
                  //         //       .notifier,
                  //         )
                  //         .state =
                  //     newIndex;
                },
              ),
              items: widget.imageUrls.map((url) {
                return InteractiveViewer(
                  minScale: 0.5,
                  maxScale: 4.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: url,
                      fit: BoxFit.fitWidth,
                      placeholder: (context, url) =>
                          const Center(child: CupertinoActivityIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.broken_image),
                    ),
                  ),
                );
              }).toList(),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 30),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Positioned(
              bottom: 20.h,
              left: 0,
              right: 0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.imageUrls.length, (dotIndex) {
                    // final selectedIndex = ref.watch(
                    //   viewModel.currentImageIndexProvider(widget.initialIndex),
                    // );
                    return Container(
                      width: 8.w,
                      height: 8.h,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: dotIndex == selectedIndex
                        //     ? Colors.black
                        //     : Colors.grey,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

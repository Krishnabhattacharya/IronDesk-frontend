import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

import 'utils.dart';

class WebviewContainer extends StatefulWidget {
  final String url;

  const WebviewContainer(this.url, {super.key});

  @override
  State<WebviewContainer> createState() => _WebviewContainerState();
}

class _WebviewContainerState extends State<WebviewContainer> {
  late final WebViewController _controller;

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    PlatformWebViewControllerCreationParams params =
        const PlatformWebViewControllerCreationParams();
    {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);

    controller
      ..setBackgroundColor(kWhite)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            _isLoading = false;
            setState(() {});
          },
          onPageFinished: (String url) {
            _isLoading = false;
            setState(() {});
          },
          onUrlChange: (UrlChange change) {
            debugPrint('url change to ${change.url}');
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      )
      ..loadRequest(Uri.parse(widget.url));

    // #docregion platform_features
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
        ..setMediaPlaybackRequiresUserGesture(false)
        ..enableZoom(true);
      // ..setOnTouch(true); // Ensure touch gestures are enabled
    }
    // #enddocregion platform_features
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhite,
        body: _isLoading
            ? const Center(
                child: CupertinoActivityIndicator(
                  radius: 14,
                ),
              )
            : WebViewWidget(
                controller: _controller,
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                  Factory<VerticalDragGestureRecognizer>(
                    () => VerticalDragGestureRecognizer(),
                  ),
                  Factory<ScaleGestureRecognizer>(
                    () => ScaleGestureRecognizer(),
                  ),
                },
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: FloatingActionButton(
            mini: true,
            backgroundColor: kWhite,
            splashColor: kPrimaryColor,
            elevation: 10,
            child: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: kBlack,
              ),
            ),
            onPressed: () {
              context.pop();
            },
          ),
        ),
      ),
    );
  }
}

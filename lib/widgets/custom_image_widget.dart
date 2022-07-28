import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1468245856972-a0333f3f8293?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                loadingBuilder: (ctx, widget, ce) {
                  if (ce != null) {
                    final value = (ce.cumulativeBytesLoaded ?? 0.0) / (ce.expectedTotalBytes ?? 0.0);
                    return CircularProgressIndicator(
                      value: value,
                      color: Colors.yellow,
                    );
                  }
                  return widget;
                },
                cacheHeight: 200,
                // cacheWidth: 100,
              ),
              Container(
                height: 200,
                width: 250,
                color: Colors.red,
                child: Image.asset(
                  'images/a.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

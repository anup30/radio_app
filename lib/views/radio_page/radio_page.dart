/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:radio_app/constants/colors.dart';
import 'package:radio_app/models/radio_model.dart';
import 'package:radio_app/views/radio_page/widgets/custom_radio_list_tile.dart';
import 'package:radio_player/radio_player.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  List<RadioModel>? radioList = radioList2;
  RadioModel? currentPlayingRadio;
  //bool get isRadioSelected => currentPlayingRadio !=null;
  RadioPlayer radioPlayer = RadioPlayer();
  bool isPlaying =false;

  @override
  void initState() {
    super.initState();
    radioPlayer.stateStream.listen((value){
      isPlaying=value;
      setState(() {});
    });
    // get(Uri.parse("http://127.0.0.1:8000/radios")).then((response){ // http.get
    //   // or "http://10.0.2.2:8000/radios"
    //   List data = jsonDecode(response.body);
    //   radioList = data.map((e)=>RadioModel.fromJson(e)).toList();
    //   radioList= radioList?? radioList2;
    //   setState(() {});
    // });
  }
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme; // here, 'cos context use
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Image.asset(
            "assets/logo.png",
            width: 32.w, // 32% of screen width, responsive_sizer ---
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
      ),
      body: SizedBox(
        width: 100.w,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(isPlaying)...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: ClipRRect( //  ---
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      currentPlayingRadio!.image ?? "",
                      width: 50.w,
                      height: 50.w,
                      fit: BoxFit.cover,
                      errorBuilder: (context, obj, _)=>Container(
                        color: CustomColors.primary.withOpacity(0.2),
                        width: 50.w,
                        height: 50.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 55.w,
                  child: Text(
                    //"5 tips to fix your messy room",
                    currentPlayingRadio!.title ?? "No title available",
                    style: textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 55.w,
                  child: Text(
                    currentPlayingRadio!.subtitle?? "No information available",
                    style: textTheme.titleMedium?.copyWith(color: Colors.black54),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/fav.png"),
                    Image.asset("assets/l_rewind.png"),
                    GestureDetector(
                      onTap: (){
                        if(isPlaying){
                          radioPlayer.pause();
                        }else{
                          radioPlayer.play();
                        }
                      },
                      child: Container(
                        width: 58,
                        height: 58,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: CustomColors.primary.withOpacity(0.3),
                              blurRadius: 8,
                              spreadRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: CustomColors.primary,
                        ),
                        child: const Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                    Image.asset("assets/r_rewind.png"),
                    Image.asset("assets/more.png"),
                  ],
                ),
              ],
              const SizedBox(height: 26),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Available Radios',
                    style: textTheme.headlineSmall,
                  ),
              ),
              const SizedBox(height: 8),
              Expanded(
                  child: radioList==null? const Center(child: CircularProgressIndicator(),)
                      : ListView.separated(
                        itemCount: radioList!.length,
                        itemBuilder: (BuildContext context, int index) =>
                            CustomRadioListTile(
                          radio: radioList![index],
                          isPlaying: false,
                          onTap: () {
                            final radio = radioList![index];
                            currentPlayingRadio = radio;
                            radioPlayer.setChannel(
                              title: radio.title ?? '',
                              url: radio.audioUrl ?? '',
                              imagePath: radio.image,
                            );
                            isPlaying = !isPlaying;
                            setState(() {});
                          },
                        ),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:flutter_radio_app/constants/colors.dart';
//import 'package:flutter_radio_app/models/radio.dart';
//import 'package:flutter_radio_app/views/radio_page/widgets/radio_list_tile.dart';
import 'package:http/http.dart';
import 'package:radio_app/constants/colors.dart';
import 'package:radio_app/models/radio_model.dart';
import 'package:radio_app/views/radio_page/widgets/custom_radio_list_tile.dart';
import 'package:radio_player/radio_player.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  List<RadioModel>? radioList;
  RadioModel? currentPlayingRadio;
  RadioPlayer radioPlayer = RadioPlayer();
  bool isPlaying = false;

  bool get isRadioSelected => currentPlayingRadio != null;

  @override
  void initState() {
    radioPlayer.stateStream.listen((value) {
      setState(() {
        isPlaying = value;
      });
    });
    // get(Uri.parse("http://10.0.2.2:8000/radios")).then((response) {
    //   List data = jsonDecode(response.body);
    //   radioList = data.map((e) => RadioModel.fromJson(e)).toList();
    //   setState(() {});
    // });
    radioList = radioList2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/logo.png",
          width: 32.w,
        ),
      ),
      body: SizedBox(
        width: 100.w,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (isRadioSelected) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      currentPlayingRadio!.image ?? "",
                      width: 50.w,
                      height: 50.w,
                      fit: BoxFit.cover,
                      errorBuilder: (context, obj, _) => Container(
                        color: CustomColors.primary.withOpacity(0.2),
                        width: 50.w,
                        height: 50.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    width: 55.w,
                    child: Text(
                      currentPlayingRadio!.title ?? "No title Available",
                      style: textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(height: 4),
                SizedBox(
                  width: 55.w,
                  child: Text(
                    currentPlayingRadio!.subtitle ?? "No information available",
                    style:
                    textTheme.titleMedium?.copyWith(color: Colors.black54),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/fav.png"),
                    const Spacer(),
                    Image.asset("assets/l_rewind.png"),
                    GestureDetector(
                      onTap: () {
                        if (isPlaying) {
                          radioPlayer.pause();
                        } else {
                          radioPlayer.play();
                        }
                      },
                      child: Container(
                        width: 58,
                        height: 58,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: CustomColors.primary.withOpacity(0.2),
                              blurRadius: 8,
                              spreadRadius: 4,
                              offset: const Offset(0, 2))
                        ], shape: BoxShape.circle, color: CustomColors.primary),
                        child: Icon(
                          isPlaying?Icons.pause:Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                    Image.asset("assets/r_rewind.png"),
                    const Spacer(),
                    Image.asset("assets/more.png"),
                  ],
                ),
              ],
              const SizedBox(height: 26),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Available Radios",
                    style: textTheme.titleLarge,
                  )),
              const SizedBox(height: 8),
              Expanded(
                child: radioList == null
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.separated(
                        itemBuilder: (context, index) => CustomRadioListTile(
                              radio: radioList![index],
                              isPlaying: false,
                              onTap: () {
                                final radio = radioList![index];
                                currentPlayingRadio = radio;
                                radioPlayer.setChannel(
                                    title: radio.title ?? "",
                                    url: radio.audioUrl ?? "",
                                    imagePath: radio.image);
                                radioPlayer.play();
                                setState(() {});
                              },
                            ),
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: radioList!.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

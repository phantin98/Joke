import 'package:flutter/material.dart';
import 'package:joke/assets/images.dart';
import 'package:joke/business_logic/models/joke_model.dart';
import 'package:joke/constants.dart';
import 'package:joke/presentation/components/dialog_util.dart';
import 'package:joke/presentation/components/widget_util.dart';
import 'package:joke/presentation/theme/app_theme.dart';

class JokePage extends StatefulWidget {
  const JokePage({super.key});

  @override
  State<JokePage> createState() => _JokePageState();
}

class _JokePageState extends State<JokePage> {
  final String _title = 'A joke a day keeps the doctor away';
  final String _titleDesc =
      'If you joke wrong way, your teeth have to pay. (Serious)';
  final String _txtBottom1 =
      'This appis created as part of Hisolutions program. The materials con- tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor- mation contained on this site.';
  final String _txtBottom2 = 'Copyright 2021 HLS';
  final String _txtBtn1 = 'This is Funny!';
  final String _txtBtn2 = 'This is not funny.';
  final String errMessage =
      '''That's all the jokes for today! Come back another day!''';

  //current index in list joke
  late int _index = 0; // init index
  //current joke
  late JokeModel _currentJoke;
  //list joke
  late List<JokeModel> _jokes;

  @override
  void initState() {
    super.initState();
    //init data
    _jokes = initData();
    // _content = _jokes.first.content;
    _currentJoke = _jokes[_index];
  }

  updateContent() {
    // check index with length list
    if (_index >= _jokes.length - 1) {
      //show dialog message
      DialogUtil.alert(context, errMessage);
    } else {
      //update content
      setState(() {
        _index++;
        _currentJoke = _jokes[_index];
      });
    }
  }

  List<JokeModel> initData() {
    return [
      JokeModel(
        content:
            '''A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."''',
        isRead: false,
        isFunny: false,
      ),
      JokeModel(
        content:
            '''Teacher: "Kids,what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!"''',
        isRead: false,
        isFunny: false,
      ),
      JokeModel(
        content:
            '''The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy, 'I am going to eat that pussy once Jimmy leaves for school today!'"''',
        isRead: false,
        isFunny: false,
      ),
      JokeModel(
        content:
            '''A housewife, an accountant and a lawyer were asked "How much is 2+2?" The housewife replies: "Four!". The accountant says: "I think it's either 3 or 4. Let me run those figures through my spreadsheet one more time." The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"''',
        isRead: false,
        isFunny: false,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white1,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: AppTheme.white1,
      title: _buildLogo(),
      actions: [_buildAvatar()],
    );
  }

  Widget _buildAvatar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: commonPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //text 1
              Text(
                'Handicrafted by',
                style: AppTheme.body2Grey,
              ),
              //text 2
              Text(
                'Jim HLS',
                style: AppTheme.body2,
              )
            ],
          ),
          const SizedBox(width: 10),
          //avatar
          ClipOval(
            child: Image.asset(ImagesResource.icAvatar,
                height: 45, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Image.asset(
        ImagesResource.icLogo,
        fit: BoxFit.cover,
        height: 45,
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildHeader(),
        _buildContent(),
        _buildBtn(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      color: AppTheme.green2,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          //title
          Text(
            _title,
            style: AppTheme.titleWhite,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),

          //title desc
          Text(
            _titleDesc,
            style: AppTheme.body1White,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: commonPadding),
        child: Column(
          children: [
            const Divider(),
            //text bottom 1
            Text(
              _txtBottom1,
              style: AppTheme.body2Grey,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: commonPadding),

            //text bottom 2
            Text(
              _txtBottom2,
              style: AppTheme.body2,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: elevatedButton(
                onPressed: () {
                  updateContent();
                },
                backgroundColor: AppTheme.blue1,
                child: Text(
                  _txtBtn1,
                  style: AppTheme.btnTextStyleWhite,
                )),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: elevatedButton(
                onPressed: () {
                  updateContent();
                },
                child: Text(
                  _txtBtn2,
                  style: AppTheme.btnTextStyleWhite,
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            _currentJoke.content,
            style: AppTheme.body1,
          ),
        ),
      ),
    );
  }
}

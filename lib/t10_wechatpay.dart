import 'package:flutter/material.dart';

import 'package:fluwx/fluwx.dart' as fluwx;

void main() {
  runApp(const MaterialApp(
      title: 'Generalzzd wechat pay Widgets',
      home: SafeArea(child: ZScaffold())));
}

class ZScaffold extends StatelessWidget {
  const ZScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          ZAppBar(
              title: Text('Generalzzd AppBar',
                  style: Theme.of(context).primaryTextTheme.headline6)),
          Expanded(
            child: Center(
              child: IconButton(
                  onPressed: () {
                    print("button pressed");
                    initWxPay();
                  },
                  icon: Icon(Icons.ac_unit)),
            ),
          ),
        ],
      ),
    );
  }

  void initWxPay() async {
    await fluwx.registerWxApi(
        appId: "xxxxxxxxxxxxxxxxx",
        universalLink: "https://help.wechat.com/app");
  }

  // void toWxPay() async {
  //   var isInstalled = await fluwx.isWeChatInstalled();

  //   if (!isInstalled) {
  //     print("请先安装微信");
  //   }

  //   // 将下面这些参数替换成后台返回的即可
  //   var payRes = await fluwx.pay(
  //     appId: "xxxxxxxxxxxx",
  //     partnerId: "1581194221",
  //     prepayId: "wx20204148634195534427abd2eac5xxxxxxx",
  //     packageValue: "Sign=WXPay",
  //     nonceStr: "QQZMB4ZQL3784HMKDBZVAGVATNY83I7U",
  //     timeStamp: 1597927308,
  //     sign: "327B443E4591CD2AD05C340CEE90CC2E",
  //   );

  //   // 支付回调
  //   // 一般情况下打开微信支付闪退，errCode为 -1 ，多半是包名、签名和在微信开放平台创建时的配置不一致。
  //   fluwx.responseFromPayment.listen((data) {
  //     print(data.errCode);
  //     if (data.errCode == 0) {
  //       print("微信支付成功");
  //       //Navigator.of(context).pop();
  //     } else {
  //       print("微信支付失败");
  //     }
  //   });
  // }
}

class ZAppBar extends StatelessWidget {
  const ZAppBar({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(children: [
        IconButton(
            onPressed: () {
              print('Icon 1 tapped');
            },
            tooltip: 'Navigation menu',
            icon: const Icon(Icons.menu)),
        Expanded(child: title),
        IconButton(
            onPressed: () {
              print('Icon 2 tapped');
            },
            icon: const Icon(Icons.search),
            tooltip: 'Search')
      ]));

  final Widget title;
}

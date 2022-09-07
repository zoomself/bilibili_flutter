class RegionConstants {
  //String url="https://api.bilibili.com/x/web-interface/online?&jsonp=jsonp";  获取所有分区数
  static List<int> regionList = [
    0,
    1,
    11,
    119,
    129,
    155,
    160,
    177,
    181,
    188,
    211,
    217,
    223,
    23,
    234,
    3,
    36,
    4,
    5,
  ];

  static Map<int,String> regionNameMap = {
    0:"全站",
    1:"动画",
    11:"电视剧",
    119:"鬼畜",
    129:"舞蹈",
    155:"时尚",
    160:"生活",
    177:"纪录片",
    181:"影视",
    188:"科技",
    211:"美食",
    217:"动物圈",
    223:"汽车",
    23:"电影",
    234:"运动",
    3:"音乐",
    36:"知识",
    4:"游戏",
    5:"娱乐"
  };

}

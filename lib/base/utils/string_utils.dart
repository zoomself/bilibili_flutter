

class StringUtils{

  ///友好时长显示
  ///100s -->01:40
  static String getFriendDuration(int? duration){
    if(duration==null)return "00:00";
    int hour=duration~/3600;
    if(hour>0){
      String s_h="$hour";
      String s_m="00";
      String s_s="00";
      int left_m=duration-hour*3600;
      int minute=left_m~/60;
      int second=left_m%60;
      if(minute<10){
        s_m="0$minute";
      }else{
        s_m="$minute";
      }
      if(second<10){
        s_s="0$second";
      }else{
        s_s="$second";
      }
      return "$s_h:$s_m:$s_s";
    }else{
      String s_m="00";
      String s_s="00";

      int minute=duration~/60;
      int second=duration%60;
      if(minute<10){
        s_m="0$minute";
      }else{
        s_m="$minute";
      }
      if(second<10){
        s_s="0$second";
      }else{
        s_s="$second";
      }
      return "$s_m:$s_s";
    }
  }


  ///友好数字显示
  static String getFriendNum(int? num) {
    if (num == null) {
      return "0";
    }
    if (num < 10000) {
      return "$num";
    }
    //保留1位小数
    return "${(num / 10000).toStringAsFixed(1)}w";
  }
}
#umeng_analytics 友盟统计分析 意见反馈 推送 在线升级
-keepclassmembers class * {
   public <init>(org.json.JSONObject);
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}


-keep public class com.umeng.fb.ui.ThreadView {
}
#-libraryjars libs/umeng-sdk.jar
-keep public class * extends com.umeng.**
-keep class com.umeng.** { *; }

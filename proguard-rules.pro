# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in E:\ProgramFiles\Android\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-optimizationpasses 5
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

#R
-keep public class com.XXXX.R$*{
    public static final int *;
}

#bean
-keep class com.XXXX.bean.** { *; }
-keep class com..jsonobject.** { *; }
-keep class com.XXXX.AppConfig.** { * ;}


#logback
-keep class ch.qos.logback.** { * ;}
-dontwarn ch.qos.logback.**


#eventbus
-keepclassmembers class ** {
    public void onEvent*(**);
}
#volley
-keep class com.android.volley.**  {* ;}
-keep class org.apache.http.**  {* ;}

-keepattributes Signature,RuntimeVisibleAnnotations,AnnotationDefault,*Annotation*


-include librules/basic.pro
-include librules/basic.pro
-include librules/butter-knife.pro
-include librules/green-dao.pro
-include librules/gson.pro
-include librules/okhttp.pro
-include librules/otto.pro
-include librules/retrofit.pro
-include librules/rx-java.pro


-dontwarn demo.**
-keep class demo.** { *;}

-dontwarn rego.printlib.**
-keep class rego.printlib.** { *;}

-dontwarn com.newland.**
-keep class com.newland.** { *;}

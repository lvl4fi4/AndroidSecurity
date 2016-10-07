-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-verbose
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*,!code/allocation/variable
-ignorewarnings
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable,*Annotation*,Signature



-keepattributes *Annotation*


-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider


-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
}


-keep class ir.adad.NoProguard
-keep class * extends ir.adad.NoProguard { *; }




-dontwarn org.**
-dontwarn com.sinch.**
-dontwarn com.quickblox.**
-dontwarn org.webrtc.**
-dontwarn org.kobjects.**
-dontwarn org.ksoap2.**
-dontwarn org.kxml2.**
-dontwarn org.xmlpull.v1.**



-keep class org.** { *; }
-keep class com.sinch.** { *; }
-keep class com.quickblox.** { *; }
-keep class org.webrtc.** { *; }
-keep class org.kobjects.** { *; }
-keep class org.ksoap2.** { *; }
-keep class org.kxml2.** { *; }
-keep class org.xmlpull.** { *; }

-keepclasseswithmembernames class * {
    native <methods>;
}


-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}


-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}


-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}


-keepclassmembers class * extends android.content.Context {
    public void *(android.view.View);
    public void *(android.view.MenuItem);
}


-keepclassmembers class * implements android.os.Parcelable {
    static android.os.Parcelable$Creator CREATOR;
}


-keepclassmembers class **.R$* {
    public static <fields>;
}




# -- Action Bar Sherlock --
# from <a href="http://actionbarsherlock.com/faq.html" target="_blank">http://actionbarsherlock.com/faq.html</a>


-keep class com.actionbarsherlock.** { *; }
-keep interface com.actionbarsherlock.** { *; }


# -- Nine Old Androids --
# same configs as ABS from <a href="http://actionbarsherlock.com/faq.html" target="_blank">http://actionbarsherlock.com/faq.html</a> just changed package


-keep class com.nineoldandroids.** { *; }
-keep interface com.nineoldandroids.** { *; }


# -- ACRA --
# from <a href="https://github.com/ACRA/acra/wiki/Proguard" target="_blank">https://github.com/ACRA/acra/wiki/Proguard</a>


# Required to display line numbers and so in ACRA reports
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable


# keep this class so that logging will show 'ACRA' and not a obfuscated name like 'a'.
# Note: if you are removing log messages elsewhere in this file then this isn't necessary
-keep class org.acra.ACRA {
    *;
}


# keep this around for some enums that ACRA needs
-keep class org.acra.ReportingInteractionMode {
    *;
}
-keepnames class org.acra.ReportField {
    *;
}


# keep this otherwise it is removed by ProGuard
-keep public class org.acra.ErrorReporter
{
    public void addCustomData(java.lang.String,java.lang.String);
    public void putCustomData(java.lang.String,java.lang.String);
    public void removeCustomData(java.lang.String);
}


# keep this otherwise it is removed by ProGuard
-keep public class org.acra.ErrorReporter
{
    public void handleSilentException(java.lang.Throwable);
}




# -- Rest Template --


-keepclassmembers public class org.springframework {
   public *;
}


-dontwarn org.springframework.http.**
package androidx.core.p010os;

import android.os.Build;
/* renamed from: androidx.core.os.BuildCompat */
/* loaded from: classes.dex */
public class BuildCompat {
    protected static boolean isAtLeastPreReleaseCodename(String str, String str2) {
        return !"REL".equals(str2) && str2.compareTo(str) >= 0;
    }

    @Deprecated
    public static boolean isAtLeastNMR1() {
        return Build.VERSION.SDK_INT >= 25;
    }

    @Deprecated
    public static boolean isAtLeastR() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean isAtLeastS() {
        return Build.VERSION.SDK_INT >= 31 || isAtLeastPreReleaseCodename("S", Build.VERSION.CODENAME);
    }
}

package androidx.core.p010os;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: androidx.core.os.UserManagerCompat */
/* loaded from: classes.dex */
public class UserManagerCompat {
    public static boolean isUserUnlocked(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.isUserUnlocked(context);
        }
        return true;
    }

    /* renamed from: androidx.core.os.UserManagerCompat$Api24Impl */
    /* loaded from: classes.dex */
    static class Api24Impl {
        static boolean isUserUnlocked(Context context) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
    }
}

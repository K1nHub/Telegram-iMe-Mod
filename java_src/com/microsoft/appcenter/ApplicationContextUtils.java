package com.microsoft.appcenter;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* loaded from: classes4.dex */
class ApplicationContextUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Context getApplicationContext(Application application) {
        return (Build.VERSION.SDK_INT < 24 || ((UserManager) application.getSystemService("user")).isUserUnlocked()) ? application : application.createDeviceProtectedStorageContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isDeviceProtectedStorage(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return context.isDeviceProtectedStorage();
        }
        return false;
    }
}

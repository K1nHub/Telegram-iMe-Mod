package com.microsoft.appcenter.distribute;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.microsoft.appcenter.utils.AppCenterLog;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4.dex */
class InstallerUtils {
    private static final Set<String> LOCAL_STORES;
    private static Boolean sInstalledFromAppStore;

    static {
        HashSet hashSet = new HashSet();
        LOCAL_STORES = hashSet;
        hashSet.add("adb");
        hashSet.add("com.android.packageinstaller");
        hashSet.add("com.google.android.packageinstaller");
        hashSet.add("com.android.managedprovisioning");
        hashSet.add("com.miui.packageinstaller");
        hashSet.add("com.samsung.android.packageinstaller");
        hashSet.add("pc");
        hashSet.add("com.google.android.apps.nbu.files");
        hashSet.add("org.mozilla.firefox");
        hashSet.add("com.android.chrome");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isInstalledFromAppStore(String logTag, Context context) {
        if (sInstalledFromAppStore == null) {
            String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
            AppCenterLog.debug(logTag, "InstallerPackageName=" + installerPackageName);
            sInstalledFromAppStore = Boolean.valueOf((installerPackageName == null || LOCAL_STORES.contains(installerPackageName) || installerPackageName.equals(context.getPackageName())) ? false : true);
        }
        return sInstalledFromAppStore.booleanValue();
    }

    public static boolean isUnknownSourcesEnabled(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return context.getApplicationInfo().targetSdkVersion < 26 || context.getPackageManager().canRequestPackageInstalls();
        }
        return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(Settings.Secure.getString(context.getContentResolver(), "install_non_market_apps"));
    }
}

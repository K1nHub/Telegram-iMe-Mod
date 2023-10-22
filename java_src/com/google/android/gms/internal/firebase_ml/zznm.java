package com.google.android.gms.internal.firebase_ml;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.Locale;
/* loaded from: classes.dex */
public final class zznm {
    private static final GmsLogger zzass = new GmsLogger("CommonUtils", "");

    public static String zza(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            GmsLogger gmsLogger = zzass;
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 48);
            sb.append("Exception thrown when trying to get app version ");
            sb.append(valueOf);
            gmsLogger.m1097e("CommonUtils", sb.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(Locale locale) {
        if (PlatformVersion.isAtLeastLollipop()) {
            return locale.toLanguageTag();
        }
        StringBuilder sb = new StringBuilder(locale.getLanguage());
        if (!TextUtils.isEmpty(locale.getCountry())) {
            sb.append("-");
            sb.append(locale.getCountry());
        }
        if (!TextUtils.isEmpty(locale.getVariant())) {
            sb.append("-");
            sb.append(locale.getVariant());
        }
        return sb.toString();
    }
}

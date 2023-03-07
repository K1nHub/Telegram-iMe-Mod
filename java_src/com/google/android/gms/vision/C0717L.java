package com.google.android.gms.vision;

import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
@KeepForSdk
/* renamed from: com.google.android.gms.vision.L */
/* loaded from: classes3.dex */
public class C0717L {
    @RecentlyNonNull
    @KeepForSdk
    public static final String TAG = "Vision";

    @KeepForSdk
    /* renamed from: v */
    public static int m763v(@RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable(TAG, 2)) {
            return Log.v(TAG, String.format(str, objArr));
        }
        return 0;
    }

    @KeepForSdk
    /* renamed from: d */
    public static int m768d(@RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable(TAG, 3)) {
            return Log.d(TAG, String.format(str, objArr));
        }
        return 0;
    }

    @KeepForSdk
    /* renamed from: d */
    public static int m767d(@RecentlyNonNull Throwable th, @RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable(TAG, 3)) {
            return Log.d(TAG, String.format(str, objArr), th);
        }
        return 0;
    }

    @KeepForSdk
    /* renamed from: i */
    public static int m764i(@RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable(TAG, 4)) {
            return Log.i(TAG, String.format(str, objArr));
        }
        return 0;
    }

    @KeepForSdk
    /* renamed from: e */
    public static int m766e(@RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable(TAG, 6)) {
            return Log.e(TAG, String.format(str, objArr));
        }
        return 0;
    }

    @KeepForSdk
    /* renamed from: e */
    public static int m765e(@RecentlyNonNull Throwable th, @RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable(TAG, 6)) {
            if (Log.isLoggable(TAG, 3)) {
                return Log.e(TAG, String.format(str, objArr), th);
            }
            String format = String.format(str, objArr);
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 2 + valueOf.length());
            sb.append(format);
            sb.append(": ");
            sb.append(valueOf);
            return Log.e(TAG, sb.toString());
        }
        return 0;
    }

    @KeepForSdk
    /* renamed from: w */
    public static int m762w(@RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable(TAG, 5)) {
            return Log.w(TAG, String.format(str, objArr));
        }
        return 0;
    }

    @KeepForSdk
    /* renamed from: w */
    public static int m761w(@RecentlyNonNull Throwable th, @RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable(TAG, 5)) {
            if (Log.isLoggable(TAG, 3)) {
                return Log.w(TAG, String.format(str, objArr), th);
            }
            String format = String.format(str, objArr);
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 2 + valueOf.length());
            sb.append(format);
            sb.append(": ");
            sb.append(valueOf);
            return Log.w(TAG, sb.toString());
        }
        return 0;
    }
}

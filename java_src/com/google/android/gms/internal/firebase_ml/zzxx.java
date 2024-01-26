package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.analytics.AnalyticsListener;
/* loaded from: classes.dex */
final class zzxx {
    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zze(byte b) {
        return b >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzf(byte b) {
        return b < -32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzg(byte b) {
        return b < -16;
    }

    private static boolean zzh(byte b) {
        return b > -65;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(byte b, char[] cArr, int i) {
        cArr[i] = (char) b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(byte b, byte b2, char[] cArr, int i) throws zzve {
        if (b < -62 || zzh(b2)) {
            throw zzve.zzry();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(byte b, byte b2, byte b3, char[] cArr, int i) throws zzve {
        if (zzh(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || zzh(b3)))) {
            throw zzve.zzry();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzve {
        if (zzh(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || zzh(b3) || zzh(b4)) {
            throw zzve.zzry();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & AnalyticsListener.EVENT_DRM_KEYS_LOADED) + 56320);
    }
}

package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zztk {
    private static final Class<?> zzbol = zzce("libcore.io.Memory");
    private static final boolean zzbom;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzqc() {
        return (zzbol == null || zzbom) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> zzqd() {
        return zzbol;
    }

    private static <T> Class<T> zzce(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static {
        zzbom = zzce("org.robolectric.Robolectric") != null;
    }
}

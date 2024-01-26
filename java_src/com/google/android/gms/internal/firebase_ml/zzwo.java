package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zzwo {
    private static final zzwm zzbvw = zzsu();
    private static final zzwm zzbvx = new zzwp();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzwm zzss() {
        return zzbvw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzwm zzst() {
        return zzbvx;
    }

    private static zzwm zzsu() {
        try {
            return (zzwm) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}

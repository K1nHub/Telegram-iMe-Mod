package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zzwd {
    private static final zzwb zzbvb = zzsq();
    private static final zzwb zzbvc = new zzwa();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzwb zzso() {
        return zzbvb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzwb zzsp() {
        return zzbvc;
    }

    private static zzwb zzsq() {
        try {
            return (zzwb) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}

package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zzun {
    private static final zzul<?> zzbpu = new zzuk();
    private static final zzul<?> zzbpv = zzqv();

    private static zzul<?> zzqv() {
        try {
            return (zzul) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzul<?> zzqw() {
        return zzbpu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzul<?> zzqx() {
        zzul<?> zzulVar = zzbpv;
        if (zzulVar != null) {
            return zzulVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}

package com.google.android.gms.internal.mlkit_common;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
final class zzfi {
    private static final zzfg<?> zza = new zzfj();
    private static final zzfg<?> zzb = zzc();

    private static zzfg<?> zzc() {
        try {
            return (zzfg) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfg<?> zza() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfg<?> zzb() {
        zzfg<?> zzfgVar = zzb;
        if (zzfgVar != null) {
            return zzfgVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}

package com.google.android.gms.internal.wearable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzbr implements zzda {
    private static final zzbr zza = new zzbr();

    private zzbr() {
    }

    public static zzbr zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.wearable.zzda
    public final zzcz zzb(Class cls) {
        if (!zzbv.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (zzcz) zzbv.zzO(cls.asSubclass(zzbv.class)).zzG(3, null, null);
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzda
    public final boolean zzc(Class cls) {
        return zzbv.class.isAssignableFrom(cls);
    }
}

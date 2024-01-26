package com.google.android.gms.internal.measurement;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzkx implements zzle {
    private final zzle[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkx(zzle... zzleVarArr) {
        this.zza = zzleVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzle
    public final zzld zzb(Class<?> cls) {
        zzle[] zzleVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzle zzleVar = zzleVarArr[i];
            if (zzleVar.zzc(cls)) {
                return zzleVar.zzb(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.measurement.zzle
    public final boolean zzc(Class<?> cls) {
        zzle[] zzleVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzleVarArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}

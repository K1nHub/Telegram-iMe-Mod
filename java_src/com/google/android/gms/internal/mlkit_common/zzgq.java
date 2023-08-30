package com.google.android.gms.internal.mlkit_common;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
final class zzgq implements zzgy {
    private zzgy[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgq(zzgy... zzgyVarArr) {
        this.zza = zzgyVarArr;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgy
    public final boolean zza(Class<?> cls) {
        for (zzgy zzgyVar : this.zza) {
            if (zzgyVar.zza(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgy
    public final zzgz zzb(Class<?> cls) {
        zzgy[] zzgyVarArr;
        for (zzgy zzgyVar : this.zza) {
            if (zzgyVar.zza(cls)) {
                return zzgyVar.zzb(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}

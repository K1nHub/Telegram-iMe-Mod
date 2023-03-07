package com.google.android.gms.internal.icing;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
final class zzdv implements zzec {
    private final zzec[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdv(zzec... zzecVarArr) {
        this.zza = zzecVarArr;
    }

    @Override // com.google.android.gms.internal.icing.zzec
    public final boolean zzb(Class<?> cls) {
        zzec[] zzecVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzecVarArr[i].zzb(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.icing.zzec
    public final zzeb zzc(Class<?> cls) {
        zzec[] zzecVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzec zzecVar = zzecVarArr[i];
            if (zzecVar.zzb(cls)) {
                return zzecVar.zzc(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}

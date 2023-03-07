package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zzvx implements zzwf {
    private zzwf[] zzbuv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvx(zzwf... zzwfVarArr) {
        this.zzbuv = zzwfVarArr;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwf
    public final boolean zzh(Class<?> cls) {
        for (zzwf zzwfVar : this.zzbuv) {
            if (zzwfVar.zzh(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwf
    public final zzwc zzi(Class<?> cls) {
        zzwf[] zzwfVarArr;
        for (zzwf zzwfVar : this.zzbuv) {
            if (zzwfVar.zzh(cls)) {
                return zzwfVar.zzi(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}

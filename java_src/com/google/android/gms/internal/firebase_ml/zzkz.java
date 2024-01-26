package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zzkz extends zzky {
    private final /* synthetic */ zzkw zzabh;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkz(zzkw zzkwVar, zzkx zzkxVar, CharSequence charSequence) {
        super(zzkxVar, charSequence);
        this.zzabh = zzkwVar;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzky
    final int zzah(int i) {
        return i + 1;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzky
    final int zzag(int i) {
        return this.zzabh.zzabc.zza(this.zzabg, i);
    }
}

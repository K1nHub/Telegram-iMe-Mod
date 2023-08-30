package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zzkk extends zzkh {
    static final zzkk zzaav = new zzkk();

    private zzkk() {
        super("CharMatcher.none()");
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzkg
    public final boolean zzb(char c) {
        return false;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzkg
    public final int zza(CharSequence charSequence, int i) {
        zzkv.zza(i, charSequence.length(), "index");
        return -1;
    }
}

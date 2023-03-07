package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* loaded from: classes.dex */
public final class zzjv extends zzgg {
    @zzhs
    private zzjc detectedBreak;
    @zzhs
    private List<zzjb> detectedLanguages;

    public final zzjc zzhr() {
        return this.detectedBreak;
    }

    public final List<zzjb> zzhs() {
        return this.detectedLanguages;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zzjv) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zzjv) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzjv) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzjv) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zzjv) super.clone();
    }
}

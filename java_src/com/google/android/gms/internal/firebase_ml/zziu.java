package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* loaded from: classes.dex */
public final class zziu extends zzgg {
    @zzhs
    private List<zzjg> features;
    @zzhs
    private zzjf image;
    @zzhs
    private zzjh imageContext;

    public final zziu zzb(List<zzjg> list) {
        this.features = list;
        return this;
    }

    public final zziu zza(zzjf zzjfVar) {
        this.image = zzjfVar;
        return this;
    }

    public final zziu zza(zzjh zzjhVar) {
        this.imageContext = zzjhVar;
        return this;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zziu) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zziu) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zziu) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zziu) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zziu) super.clone();
    }
}

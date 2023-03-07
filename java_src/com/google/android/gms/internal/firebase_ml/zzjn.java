package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* loaded from: classes.dex */
public final class zzjn extends zzgg {
    @zzhs
    private List<zziy> blocks;
    @zzhs
    private Float confidence;
    @zzhs
    private Integer height;
    @zzhs
    private zzjv property;
    @zzhs
    private Integer width;

    public final List<zziy> getBlocks() {
        return this.blocks;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zzjn) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zzjn) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzjn) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzjn) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zzjn) super.clone();
    }
}

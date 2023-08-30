package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* loaded from: classes.dex */
public final class zzjz extends zzgg {
    @zzhs
    private zzix boundingBox;
    @zzhs
    private Float confidence;
    @zzhs
    private zzjv property;
    @zzhs
    private List<zzjt> symbols;

    public final zzix zzhj() {
        return this.boundingBox;
    }

    public final Float getConfidence() {
        return this.confidence;
    }

    public final zzjv zzhk() {
        return this.property;
    }

    public final List<zzjt> getSymbols() {
        return this.symbols;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zzjz) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zzjz) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzjz) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzjz) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zzjz) super.clone();
    }
}

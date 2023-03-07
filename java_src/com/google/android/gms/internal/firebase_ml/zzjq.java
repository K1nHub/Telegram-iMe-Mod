package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* loaded from: classes.dex */
public final class zzjq extends zzgg {
    @zzhs
    private zzix boundingBox;
    @zzhs
    private Float confidence;
    @zzhs
    private zzjv property;
    @zzhs
    private List<zzjz> words;

    public final zzix zzhj() {
        return this.boundingBox;
    }

    public final Float getConfidence() {
        return this.confidence;
    }

    public final zzjv zzhk() {
        return this.property;
    }

    public final List<zzjz> getWords() {
        return this.words;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zzjq) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zzjq) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzjq) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzjq) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zzjq) super.clone();
    }
}

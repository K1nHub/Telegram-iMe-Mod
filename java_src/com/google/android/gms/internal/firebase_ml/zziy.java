package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* loaded from: classes.dex */
public final class zziy extends zzgg {
    @zzhs
    private String blockType;
    @zzhs
    private zzix boundingBox;
    @zzhs
    private Float confidence;
    @zzhs
    private List<zzjq> paragraphs;
    @zzhs
    private zzjv property;

    public final zzix zzhj() {
        return this.boundingBox;
    }

    public final Float getConfidence() {
        return this.confidence;
    }

    public final List<zzjq> getParagraphs() {
        return this.paragraphs;
    }

    public final zzjv zzhk() {
        return this.property;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zziy) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zziy) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zziy) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zziy) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zziy) super.clone();
    }
}

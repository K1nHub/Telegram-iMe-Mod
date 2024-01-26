package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* loaded from: classes.dex */
public final class zzit extends zzgg {
    @zzhs
    private zzji context;
    @zzhs
    private zzja cropHintsAnnotation;
    @zzhs
    private zzju error;
    @zzhs
    private List<Object> faceAnnotations;
    @zzhs
    private zzjw fullTextAnnotation;
    @zzhs
    private zzjk imagePropertiesAnnotation;
    @zzhs
    private List<zzjd> labelAnnotations;
    @zzhs
    private List<zzjd> landmarkAnnotations;
    @zzhs
    private List<Object> localizedObjectAnnotations;
    @zzhs
    private List<zzjd> logoAnnotations;
    @zzhs
    private zzjs productSearchResults;
    @zzhs
    private zzjr safeSearchAnnotation;
    @zzhs
    private List<zzjd> textAnnotations;
    @zzhs
    private zzjx webDetection;

    public final zzjw zzhe() {
        return this.fullTextAnnotation;
    }

    public final List<zzjd> zzhf() {
        return this.labelAnnotations;
    }

    public final List<zzjd> zzhg() {
        return this.landmarkAnnotations;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zzit) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zzit) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzit) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzit) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zzit) super.clone();
    }
}

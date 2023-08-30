package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* loaded from: classes.dex */
public final class zzjd extends zzgg {
    @zzhs
    private zzix boundingPoly;
    @zzhs
    private Float confidence;
    @zzhs
    private String description;
    @zzhs
    private String locale;
    @zzhs
    private List<zzjo> locations;
    @zzhs
    private String mid;
    @zzhs
    private List<Object> properties;
    @zzhs
    private Float score;
    @zzhs
    private Float topicality;

    public final zzix zzhm() {
        return this.boundingPoly;
    }

    public final String getDescription() {
        return this.description;
    }

    public final List<zzjo> getLocations() {
        return this.locations;
    }

    public final String getMid() {
        return this.mid;
    }

    public final Float zzhn() {
        return this.score;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zzjd) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zzjd) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzjd) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzjd) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zzjd) super.clone();
    }
}

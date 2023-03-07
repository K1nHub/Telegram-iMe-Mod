package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
public final class zzjg extends zzgg {
    @zzhs
    private Integer maxResults;
    @zzhs
    private String model;
    @zzhs
    private String type;

    public final zzjg zza(Integer num) {
        this.maxResults = num;
        return this;
    }

    public final zzjg zzau(String str) {
        this.model = str;
        return this;
    }

    public final zzjg zzav(String str) {
        this.type = str;
        return this;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zzjg) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zzjg) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzjg) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzjg) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zzjg) super.clone();
    }
}

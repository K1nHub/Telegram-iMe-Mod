package com.google.android.gms.internal.firebase_ml;

import java.util.List;
/* loaded from: classes.dex */
public final class zzjh extends zzgg {
    @zzhs
    private zziz cropHintsParams;
    @zzhs
    private List<String> languageHints;
    @zzhs
    private zzjl latLongRect;
    @zzhs
    private zzjp productSearchParams;
    @zzhs
    private zzka webDetectionParams;

    public final zzjh zzd(List<String> list) {
        this.languageHints = list;
        return this;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zza(String str, Object obj) {
        return (zzjh) zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg
    public final /* synthetic */ zzgg zzdz() {
        return (zzjh) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzea() {
        return (zzjh) clone();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho
    public final /* synthetic */ zzho zzb(String str, Object obj) {
        return (zzjh) super.zzb(str, obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgg, com.google.android.gms.internal.firebase_ml.zzho, java.util.AbstractMap
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return (zzjh) super.clone();
    }
}

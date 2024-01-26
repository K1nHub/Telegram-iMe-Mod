package com.google.android.gms.internal.mlkit_vision_subject_segmentation;
/* compiled from: com.google.android.gms:play-services-mlkit-subject-segmentation@@16.0.0-beta1 */
/* loaded from: classes3.dex */
public final class zzdt {
    private zzdw zza;
    private Integer zzb;
    private zznc zzc;

    public final zzdt zza(Integer num) {
        this.zzb = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzdt zzb(zznc zzncVar) {
        this.zzc = zzncVar;
        return this;
    }

    public final zzdt zzc(zzdw zzdwVar) {
        this.zza = zzdwVar;
        return this;
    }

    public final zzdy zze() {
        return new zzdy(this, null);
    }
}

package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public abstract class zzku {
    private static final zzku zza = new zzkq(null);
    private static final zzku zzb = new zzks(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzku(zzkt zzktVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzku zzc() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzku zzd() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(Object obj, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <L> void zzb(Object obj, Object obj2, long j);
}

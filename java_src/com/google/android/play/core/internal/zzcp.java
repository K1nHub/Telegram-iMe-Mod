package com.google.android.play.core.internal;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzcp<T> implements zzcs<T> {
    private zzcs<T> zza;

    public static <T> void zzb(zzcs<T> zzcsVar, zzcs<T> zzcsVar2) {
        zzcp zzcpVar = (zzcp) zzcsVar;
        if (zzcpVar.zza != null) {
            throw new IllegalStateException();
        }
        zzcpVar.zza = zzcsVar2;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final T zza() {
        zzcs<T> zzcsVar = this.zza;
        if (zzcsVar == null) {
            throw new IllegalStateException();
        }
        return zzcsVar.zza();
    }
}

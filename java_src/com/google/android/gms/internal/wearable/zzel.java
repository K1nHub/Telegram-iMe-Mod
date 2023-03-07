package com.google.android.gms.internal.wearable;

import sun.misc.Unsafe;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzel extends zzen {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzel(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(zzj(obj, j));
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final void zzc(Object obj, long j, boolean z) {
        if (zzeo.zzb) {
            zzeo.zzD(obj, j, r3 ? (byte) 1 : (byte) 0);
        } else {
            zzeo.zzE(obj, j, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final void zzd(Object obj, long j, byte b) {
        if (zzeo.zzb) {
            zzeo.zzD(obj, j, b);
        } else {
            zzeo.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final void zze(Object obj, long j, double d) {
        zzo(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final void zzf(Object obj, long j, float f) {
        zzn(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final boolean zzg(Object obj, long j) {
        if (zzeo.zzb) {
            return zzeo.zzt(obj, j);
        }
        return zzeo.zzu(obj, j);
    }
}

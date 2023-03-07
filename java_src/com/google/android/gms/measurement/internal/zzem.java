package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzem {
    public final String zza;
    public final String zzb;
    public final long zzc;
    public final Bundle zzd;

    public zzem(String str, String str2, Bundle bundle, long j) {
        this.zza = str;
        this.zzb = str2;
        this.zzd = bundle;
        this.zzc = j;
    }

    public static zzem zzb(zzat zzatVar) {
        return new zzem(zzatVar.zza, zzatVar.zzc, zzatVar.zzb.zzc(), zzatVar.zzd);
    }

    public final String toString() {
        String str = this.zzb;
        String str2 = this.zza;
        String valueOf = String.valueOf(this.zzd);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 21 + String.valueOf(str2).length() + valueOf.length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    public final zzat zza() {
        return new zzat(this.zza, new zzar(new Bundle(this.zzd)), this.zzb, this.zzc);
    }
}

package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzhr {
    final String zza;
    final Uri zzb;
    final String zzc;
    final String zzd;
    final boolean zze;
    final boolean zzf;
    final boolean zzg;
    final boolean zzh;
    final zzhy<Context, Boolean> zzi;

    public zzhr(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    private zzhr(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, zzhy<Context, Boolean> zzhyVar) {
        this.zza = null;
        this.zzb = uri;
        this.zzc = "";
        this.zzd = "";
        this.zze = z;
        this.zzf = false;
        this.zzg = false;
        this.zzh = false;
        this.zzi = null;
    }

    public final zzhr zza() {
        if (!this.zzc.isEmpty()) {
            throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
        }
        return new zzhr(null, this.zzb, this.zzc, this.zzd, true, false, false, false, null);
    }

    public final zzhu<Double> zzb(String str, double d) {
        return new zzhp(this, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
    }

    public final zzhu<Long> zzc(String str, long j) {
        return new zzhn(this, str, Long.valueOf(j), true);
    }

    public final zzhu<String> zzd(String str, String str2) {
        return new zzhq(this, str, str2, true);
    }

    public final zzhu<Boolean> zze(String str, boolean z) {
        return new zzho(this, str, Boolean.valueOf(z), true);
    }
}

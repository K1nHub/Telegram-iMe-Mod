package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.common.internal.Objects;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zzns {
    private final String zza;
    private final String zzb;
    private final zznq zzc;
    private final String zzd;
    private final String zze;
    private final zznp zzf;
    private final Long zzg;
    private final Boolean zzh;
    private final Boolean zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzns(zzno zznoVar, zznr zznrVar) {
        String str;
        zznq zznqVar;
        String str2;
        zznp zznpVar;
        str = zznoVar.zza;
        this.zza = str;
        this.zzb = null;
        zznqVar = zznoVar.zzb;
        this.zzc = zznqVar;
        this.zzd = null;
        str2 = zznoVar.zzc;
        this.zze = str2;
        zznpVar = zznoVar.zzd;
        this.zzf = zznpVar;
        this.zzg = null;
        this.zzh = null;
        this.zzi = null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzns) {
            zzns zznsVar = (zzns) obj;
            return Objects.equal(this.zza, zznsVar.zza) && Objects.equal(null, null) && Objects.equal(this.zzc, zznsVar.zzc) && Objects.equal(null, null) && Objects.equal(this.zze, zznsVar.zze) && Objects.equal(this.zzf, zznsVar.zzf) && Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, null, this.zzc, null, this.zze, this.zzf, null, null, null);
    }

    @zzbn(zza = 6)
    public final zznp zza() {
        return this.zzf;
    }

    @zzbn(zza = 3)
    public final zznq zzb() {
        return this.zzc;
    }

    @zzbn(zza = 5)
    public final String zzc() {
        return this.zze;
    }

    @zzbn(zza = 1)
    public final String zzd() {
        return this.zza;
    }
}

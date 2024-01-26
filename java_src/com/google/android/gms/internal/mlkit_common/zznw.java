package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.common.internal.Objects;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zznw {
    private final zzns zza;
    private final zznu zzb;
    private final zznu zzc;
    private final Boolean zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zznw(zznt zzntVar, zznv zznvVar) {
        zzns zznsVar;
        zznsVar = zzntVar.zza;
        this.zza = zznsVar;
        this.zzb = null;
        this.zzc = null;
        this.zzd = null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof zznw) && Objects.equal(this.zza, ((zznw) obj).zza) && Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, null, null, null);
    }

    @zzbn(zza = 1)
    public final zzns zza() {
        return this.zza;
    }
}

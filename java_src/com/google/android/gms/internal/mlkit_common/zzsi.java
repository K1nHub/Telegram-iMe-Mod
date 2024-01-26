package com.google.android.gms.internal.mlkit_common;

import com.google.mlkit.common.sdkinternal.ModelType;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
final class zzsi extends zzsu {
    private final zznf zza;
    private final String zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final ModelType zze;
    private final zznl zzf;
    private final int zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzsi(zznf zznfVar, String str, boolean z, boolean z2, ModelType modelType, zznl zznlVar, int i, zzsh zzshVar) {
        this.zza = zznfVar;
        this.zzb = str;
        this.zzc = z;
        this.zzd = z2;
        this.zze = modelType;
        this.zzf = zznlVar;
        this.zzg = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzsu) {
            zzsu zzsuVar = (zzsu) obj;
            if (this.zza.equals(zzsuVar.zzc()) && this.zzb.equals(zzsuVar.zze()) && this.zzc == zzsuVar.zzg() && this.zzd == zzsuVar.zzf() && this.zze.equals(zzsuVar.zzb()) && this.zzf.equals(zzsuVar.zzd()) && this.zzg == zzsuVar.zza()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode()) * 1000003) ^ (true != this.zzc ? 1237 : 1231)) * 1000003) ^ (true == this.zzd ? 1231 : 1237)) * 1000003) ^ this.zze.hashCode()) * 1000003) ^ this.zzf.hashCode()) * 1000003) ^ this.zzg;
    }

    public final String toString() {
        zznl zznlVar = this.zzf;
        ModelType modelType = this.zze;
        String obj = this.zza.toString();
        String obj2 = modelType.toString();
        String obj3 = zznlVar.toString();
        return "RemoteModelLoggingOptions{errorCode=" + obj + ", tfliteSchemaVersion=" + this.zzb + ", shouldLogRoughDownloadTime=" + this.zzc + ", shouldLogExactDownloadTime=" + this.zzd + ", modelType=" + obj2 + ", downloadStatus=" + obj3 + ", failureStatusCode=" + this.zzg + "}";
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsu
    public final int zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsu
    public final ModelType zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsu
    public final zznf zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsu
    public final zznl zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsu
    public final String zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsu
    public final boolean zzf() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsu
    public final boolean zzg() {
        return this.zzc;
    }
}

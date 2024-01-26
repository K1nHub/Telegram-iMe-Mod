package com.google.android.gms.internal.mlkit_common;

import com.google.mlkit.common.sdkinternal.ModelType;
import java.util.Objects;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
final class zzsg extends zzst {
    private zznf zza;
    private String zzb;
    private boolean zzc;
    private boolean zzd;
    private ModelType zze;
    private zznl zzf;
    private int zzg;
    private byte zzh;

    @Override // com.google.android.gms.internal.mlkit_common.zzst
    public final zzst zza(zznl zznlVar) {
        Objects.requireNonNull(zznlVar, "Null downloadStatus");
        this.zzf = zznlVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzst
    public final zzst zzb(zznf zznfVar) {
        Objects.requireNonNull(zznfVar, "Null errorCode");
        this.zza = zznfVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzst
    public final zzst zzc(int i) {
        this.zzg = i;
        this.zzh = (byte) (this.zzh | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzst
    public final zzst zzd(ModelType modelType) {
        Objects.requireNonNull(modelType, "Null modelType");
        this.zze = modelType;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzst
    public final zzst zze(boolean z) {
        this.zzd = z;
        this.zzh = (byte) (this.zzh | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzst
    public final zzst zzf(boolean z) {
        this.zzc = z;
        this.zzh = (byte) (this.zzh | 1);
        return this;
    }

    public final zzst zzg(String str) {
        this.zzb = "NA";
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzst
    public final zzsu zzh() {
        zznf zznfVar;
        String str;
        ModelType modelType;
        zznl zznlVar;
        if (this.zzh != 7 || (zznfVar = this.zza) == null || (str = this.zzb) == null || (modelType = this.zze) == null || (zznlVar = this.zzf) == null) {
            StringBuilder sb = new StringBuilder();
            if (this.zza == null) {
                sb.append(" errorCode");
            }
            if (this.zzb == null) {
                sb.append(" tfliteSchemaVersion");
            }
            if ((this.zzh & 1) == 0) {
                sb.append(" shouldLogRoughDownloadTime");
            }
            if ((this.zzh & 2) == 0) {
                sb.append(" shouldLogExactDownloadTime");
            }
            if (this.zze == null) {
                sb.append(" modelType");
            }
            if (this.zzf == null) {
                sb.append(" downloadStatus");
            }
            if ((this.zzh & 4) == 0) {
                sb.append(" failureStatusCode");
            }
            throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
        }
        return new zzsi(zznfVar, str, this.zzc, this.zzd, modelType, zznlVar, this.zzg, null);
    }
}

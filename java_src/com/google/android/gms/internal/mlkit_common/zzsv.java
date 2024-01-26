package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.io.UnsupportedEncodingException;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zzsv implements zzsj {
    private final zznh zza;
    private zzre zzb = new zzre();

    private zzsv(zznh zznhVar, int i) {
        this.zza = zznhVar;
        zztg.zza();
    }

    public static zzsj zzf(zznh zznhVar) {
        return new zzsv(zznhVar, 0);
    }

    public static zzsj zzg() {
        return new zzsv(new zznh(), 0);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final zzsj zza(zzng zzngVar) {
        this.zza.zzf(zzngVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final zzsj zzb(zznn zznnVar) {
        this.zza.zzi(zznnVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final zzsj zzc(zzre zzreVar) {
        this.zzb = zzreVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final String zzd() {
        zzrg zzf = this.zza.zzk().zzf();
        return (zzf == null || zzaf.zzc(zzf.zzk())) ? "NA" : (String) Preconditions.checkNotNull(zzf.zzk());
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsj
    public final byte[] zze(int i, boolean z) {
        this.zzb.zzf(Boolean.valueOf(1 == (i ^ 1)));
        this.zzb.zze(Boolean.FALSE);
        this.zza.zzj(this.zzb.zzm());
        try {
            zztg.zza();
            if (i == 0) {
                return new JsonDataEncoderBuilder().configureWith(zzlc.zza).ignoreNullValues(true).build().encode(this.zza.zzk()).getBytes("utf-8");
            }
            zznj zzk = this.zza.zzk();
            zzbr zzbrVar = new zzbr();
            zzlc.zza.configure(zzbrVar);
            return zzbrVar.zza().zza(zzk);
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e);
        }
    }
}

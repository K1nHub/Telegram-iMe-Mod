package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.internal.mlkit_common.zzfq;
import java.io.IOException;
import java.util.Map;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
final class zzfj extends zzfg<zzfq.zzf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzfg
    public final boolean zza(zzhb zzhbVar) {
        return zzhbVar instanceof zzfq.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzfg
    public final zzfl<zzfq.zzf> zza(Object obj) {
        return ((zzfq.zzc) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzfg
    public final zzfl<zzfq.zzf> zzb(Object obj) {
        zzfq.zzc zzcVar = (zzfq.zzc) obj;
        if (zzcVar.zzc.zzc()) {
            zzcVar.zzc = (zzfl) zzcVar.zzc.clone();
        }
        return zzcVar.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzfg
    public final void zzc(Object obj) {
        zza(obj).zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzfg
    public final int zza(Map.Entry<?, ?> entry) {
        zzfq.zzf zzfVar = (zzfq.zzf) entry.getKey();
        throw new NoSuchMethodError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzfg
    public final void zza(zzjd zzjdVar, Map.Entry<?, ?> entry) throws IOException {
        zzfq.zzf zzfVar = (zzfq.zzf) entry.getKey();
        throw new NoSuchMethodError();
    }
}

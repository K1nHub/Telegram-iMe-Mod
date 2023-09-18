package com.google.android.play.core.assetpacks;

import android.content.Context;
import java.io.File;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzdp implements com.google.android.play.core.internal.zzcs<zzdo> {
    private final com.google.android.play.core.internal.zzcs<String> zza;
    private final com.google.android.play.core.internal.zzcs<zzbb> zzb;
    private final com.google.android.play.core.internal.zzcs<zzco> zzc;
    private final com.google.android.play.core.internal.zzcs<Context> zzd;
    private final com.google.android.play.core.internal.zzcs<zzed> zze;
    private final com.google.android.play.core.internal.zzcs<Executor> zzf;
    private final com.google.android.play.core.internal.zzcs<zzeb> zzg;

    public zzdp(com.google.android.play.core.internal.zzcs<String> zzcsVar, com.google.android.play.core.internal.zzcs<zzbb> zzcsVar2, com.google.android.play.core.internal.zzcs<zzco> zzcsVar3, com.google.android.play.core.internal.zzcs<Context> zzcsVar4, com.google.android.play.core.internal.zzcs<zzed> zzcsVar5, com.google.android.play.core.internal.zzcs<Executor> zzcsVar6, com.google.android.play.core.internal.zzcs<zzeb> zzcsVar7) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
        this.zzd = zzcsVar4;
        this.zze = zzcsVar5;
        this.zzf = zzcsVar6;
        this.zzg = zzcsVar7;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzdo zza() {
        File externalFilesDir;
        String zza = this.zza.zza();
        zzbb zza2 = this.zzb.zza();
        zzco zza3 = this.zzc.zza();
        Context zzb = ((zzu) this.zzd).zzb();
        zzed zza4 = this.zze.zza();
        com.google.android.play.core.internal.zzco zzb2 = com.google.android.play.core.internal.zzcq.zzb(this.zzf);
        zzbb zzbbVar = zza2;
        zzco zzcoVar = zza3;
        zzed zzedVar = zza4;
        zzeb zza5 = this.zzg.zza();
        if (zza != null) {
            externalFilesDir = new File(zzb.getExternalFilesDir(null), zza);
        } else {
            externalFilesDir = zzb.getExternalFilesDir(null);
        }
        return new zzdo(externalFilesDir, zzbbVar, zzcoVar, zzb, zzedVar, zzb2, zza5);
    }
}

package com.google.android.play.core.assetpacks;

import java.io.File;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzek {
    private final zzbh zza;
    private final com.google.android.play.core.internal.zzco<zzy> zzb;
    private final zzde zzc;
    private final com.google.android.play.core.internal.zzco<Executor> zzd;
    private final zzco zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzek(zzbh zzbhVar, com.google.android.play.core.internal.zzco<zzy> zzcoVar, zzde zzdeVar, com.google.android.play.core.internal.zzco<Executor> zzcoVar2, zzco zzcoVar3) {
        this.zza = zzbhVar;
        this.zzb = zzcoVar;
        this.zzc = zzdeVar;
        this.zzd = zzcoVar2;
        this.zze = zzcoVar3;
    }

    public final void zza(final zzei zzeiVar) {
        File zzh = this.zza.zzh(zzeiVar.zzl, zzeiVar.zza, zzeiVar.zzc);
        if (!zzh.exists()) {
            throw new zzck(String.format("Cannot find pack files to promote for pack %s at %s", zzeiVar.zzl, zzh.getAbsolutePath()), zzeiVar.zzk);
        }
        File zzh2 = this.zza.zzh(zzeiVar.zzl, zzeiVar.zzb, zzeiVar.zzc);
        zzh2.mkdirs();
        if (!zzh.renameTo(zzh2)) {
            throw new zzck(String.format("Cannot promote pack %s from %s to %s", zzeiVar.zzl, zzh.getAbsolutePath(), zzh2.getAbsolutePath()), zzeiVar.zzk);
        }
        this.zzd.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.zzej
            @Override // java.lang.Runnable
            public final void run() {
                zzek.this.zzb(zzeiVar);
            }
        });
        this.zzc.zzk(zzeiVar.zzl, zzeiVar.zzb, zzeiVar.zzc);
        this.zze.zzc(zzeiVar.zzl);
        this.zzb.zza().zzh(zzeiVar.zzk, zzeiVar.zzl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzei zzeiVar) {
        this.zza.zzB(zzeiVar.zzl, zzeiVar.zzb, zzeiVar.zzc);
    }
}

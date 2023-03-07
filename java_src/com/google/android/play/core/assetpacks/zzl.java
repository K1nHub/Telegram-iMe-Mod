package com.google.android.play.core.assetpacks;

import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.tasks.OnSuccessListener;
import com.google.android.play.core.tasks.Task;
import java.util.List;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzl {
    private static final com.google.android.play.core.internal.zzag zza = new com.google.android.play.core.internal.zzag("AssetPackManager");
    private final zzbh zzb;
    private final com.google.android.play.core.internal.zzco<zzy> zzc;
    private final zzbb zzd;
    private final com.google.android.play.core.internal.zzco<Executor> zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(zzbh zzbhVar, com.google.android.play.core.internal.zzco<zzy> zzcoVar, zzbb zzbbVar, com.google.android.play.core.splitinstall.zzs zzsVar, zzde zzdeVar, zzco zzcoVar2, zzbx zzbxVar, com.google.android.play.core.internal.zzco<Executor> zzcoVar3, com.google.android.play.core.common.zza zzaVar, zzeb zzebVar) {
        new Handler(Looper.getMainLooper());
        this.zzb = zzbhVar;
        this.zzc = zzcoVar;
        this.zzd = zzbbVar;
        this.zzi = zzcoVar3;
    }

    private final void zzh() {
        this.zzi.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.zzi
            @Override // java.lang.Runnable
            public final void run() {
                zzl.this.zzf();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzf() {
        Task<List<String>> zzd = this.zzc.zza().zzd(this.zzb.zzu());
        final zzbh zzbhVar = this.zzb;
        zzbhVar.getClass();
        zzd.addOnSuccessListener(this.zzi.zza(), new OnSuccessListener() { // from class: com.google.android.play.core.assetpacks.zzg
            @Override // com.google.android.play.core.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                zzbh.this.zzC((List) obj);
            }
        });
        zzd.addOnFailureListener(this.zzi.zza(), zzf.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzg(boolean z) {
        boolean zzj = this.zzd.zzj();
        this.zzd.zzg(z);
        if (!z || zzj) {
            return;
        }
        zzh();
    }
}

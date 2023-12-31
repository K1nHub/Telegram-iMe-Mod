package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzbb extends com.google.android.play.core.listener.zzc<AssetPackState> {
    private final zzde zzc;
    private final zzcl zzd;
    private final com.google.android.play.core.internal.zzco<zzy> zze;
    private final zzbx zzf;
    private final zzco zzg;
    private final com.google.android.play.core.internal.zzco<Executor> zzh;
    private final com.google.android.play.core.internal.zzco<Executor> zzi;
    private final zzeb zzj;
    private final Handler zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbb(Context context, zzde zzdeVar, zzcl zzclVar, com.google.android.play.core.internal.zzco<zzy> zzcoVar, zzco zzcoVar2, zzbx zzbxVar, com.google.android.play.core.internal.zzco<Executor> zzcoVar3, com.google.android.play.core.internal.zzco<Executor> zzcoVar4, zzeb zzebVar) {
        super(new com.google.android.play.core.internal.zzag("AssetPackServiceListenerRegistry"), new IntentFilter("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"), context);
        this.zzk = new Handler(Looper.getMainLooper());
        this.zzc = zzdeVar;
        this.zzd = zzclVar;
        this.zze = zzcoVar;
        this.zzg = zzcoVar2;
        this.zzf = zzbxVar;
        this.zzh = zzcoVar3;
        this.zzi = zzcoVar4;
        this.zzj = zzebVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.play.core.listener.zzc
    public final void zza(Context context, Intent intent) {
        final Bundle bundleExtra = intent.getBundleExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE");
        if (bundleExtra != null) {
            ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("pack_names");
            if (stringArrayList == null || stringArrayList.size() != 1) {
                this.zza.zzb("Corrupt bundle received from broadcast.", new Object[0]);
                return;
            }
            final AssetPackState zzc = AssetPackState.zzc(bundleExtra, stringArrayList.get(0), this.zzg, this.zzj, new zzbe() { // from class: com.google.android.play.core.assetpacks.zzbd
                @Override // com.google.android.play.core.assetpacks.zzbe
                public final int zza(int i, String str) {
                    return i;
                }
            });
            this.zza.zza("ListenerRegistryBroadcastReceiver.onReceive: %s", zzc);
            PendingIntent pendingIntent = (PendingIntent) bundleExtra.getParcelable("confirmation_intent");
            if (pendingIntent != null) {
                this.zzf.zzb(pendingIntent);
            }
            this.zzi.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.zzaz
                @Override // java.lang.Runnable
                public final void run() {
                    zzbb.this.zzc(bundleExtra, zzc);
                }
            });
            this.zzh.zza().execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.zzay
                @Override // java.lang.Runnable
                public final void run() {
                    zzbb.this.zzb(bundleExtra);
                }
            });
            return;
        }
        this.zza.zzb("Empty bundle received from broadcast.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(Bundle bundle) {
        if (this.zzc.zzp(bundle)) {
            this.zzd.zza();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(Bundle bundle, AssetPackState assetPackState) {
        if (this.zzc.zzo(bundle)) {
            zzd(assetPackState);
            this.zze.zza().zzf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(final AssetPackState assetPackState) {
        this.zzk.post(new Runnable() { // from class: com.google.android.play.core.assetpacks.zzba
            @Override // java.lang.Runnable
            public final void run() {
                zzbb.this.zzi(assetPackState);
            }
        });
    }
}

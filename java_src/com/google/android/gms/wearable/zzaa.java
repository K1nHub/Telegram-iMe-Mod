package com.google.android.gms.wearable;

import android.content.ComponentName;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.wearable.internal.zzao;
import com.google.android.gms.wearable.internal.zzbf;
import com.google.android.gms.wearable.internal.zzev;
import com.google.android.gms.wearable.internal.zzez;
import com.google.android.gms.wearable.internal.zzfx;
import com.google.android.gms.wearable.internal.zzgm;
import com.google.android.gms.wearable.internal.zziu;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzaa extends zzez {
    final /* synthetic */ WearableListenerService zza;
    private volatile int zzb = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaa(WearableListenerService wearableListenerService, zzz zzzVar) {
        this.zza = wearableListenerService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zzm(zzev zzevVar, Task task) {
        if (task.isSuccessful()) {
            zzo(zzevVar, true, (byte[]) task.getResult());
            return;
        }
        Log.e("WearableLS", "Failed to resolve future, sending null response", task.getException());
        zzo(zzevVar, false, null);
    }

    private final boolean zzn(Runnable runnable, String str, Object obj) {
        Object obj2;
        boolean z;
        zzn zznVar;
        ComponentName componentName;
        if (Log.isLoggable("WearableLS", 3)) {
            componentName = this.zza.zza;
            Log.d("WearableLS", String.format("%s: %s %s", str, componentName.toString(), obj));
        }
        int callingUid = Binder.getCallingUid();
        if (callingUid != this.zzb) {
            if (zziu.zza(this.zza).zzb("com.google.android.wearable.app.cn") && UidVerifier.uidHasPackageName(this.zza, callingUid, "com.google.android.wearable.app.cn")) {
                this.zzb = callingUid;
            } else if (!UidVerifier.isGooglePlayServicesUid(this.zza, callingUid)) {
                Log.e("WearableLS", "Caller is not GooglePlayServices; caller UID: " + callingUid);
                return false;
            } else {
                this.zzb = callingUid;
            }
        }
        obj2 = this.zza.zzf;
        synchronized (obj2) {
            WearableListenerService wearableListenerService = this.zza;
            z = wearableListenerService.zzg;
            if (z) {
                return false;
            }
            zznVar = wearableListenerService.zzb;
            zznVar.post(runnable);
            return true;
        }
    }

    private static final void zzo(zzev zzevVar, boolean z, byte[] bArr) {
        try {
            zzevVar.zzd(z, bArr);
        } catch (RemoteException e) {
            Log.e("WearableLS", "Failed to send a response back", e);
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzb(zzbf zzbfVar) {
        zzn(new zzy(this, zzbfVar), "onChannelEvent", zzbfVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzc(zzao zzaoVar) {
        zzn(new zzv(this, zzaoVar), "onConnectedCapabilityChanged", zzaoVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzd(List list) {
        zzn(new zzu(this, list), "onConnectedNodes", list);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zze(DataHolder dataHolder) {
        zzq zzqVar = new zzq(this, dataHolder);
        try {
            String valueOf = String.valueOf(dataHolder);
            int count = dataHolder.getCount();
            if (zzn(zzqVar, "onDataItemChanged", valueOf + ", rows=" + count)) {
            }
        } finally {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzf(com.google.android.gms.wearable.internal.zzi zziVar) {
        zzn(new zzx(this, zziVar), "onEntityUpdate", zziVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzg(zzfx zzfxVar) {
        zzn(new zzr(this, zzfxVar), "onMessageReceived", zzfxVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzh(com.google.android.gms.wearable.internal.zzl zzlVar) {
        zzn(new zzw(this, zzlVar), "onNotificationReceived", zzlVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzi(zzgm zzgmVar) {
        zzn(new zzs(this, zzgmVar), "onPeerConnected", zzgmVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzj(zzgm zzgmVar) {
        zzn(new zzt(this, zzgmVar), "onPeerDisconnected", zzgmVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzk(zzfx zzfxVar, final zzev zzevVar) {
        Task<byte[]> onRequest = this.zza.onRequest(zzfxVar.getSourceNodeId(), zzfxVar.getPath(), zzfxVar.getData());
        if (onRequest == null) {
            zzo(zzevVar, false, null);
        } else {
            onRequest.addOnCompleteListener(new OnCompleteListener(zzevVar, null) { // from class: com.google.android.gms.wearable.zzo
                public final /* synthetic */ zzev zzb;

                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    zzaa.zzm(this.zzb, task);
                }
            });
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzl(final zzfx zzfxVar, final zzev zzevVar) {
        zzn(new Runnable(zzfxVar, zzevVar, null) { // from class: com.google.android.gms.wearable.zzp
            public final /* synthetic */ zzfx zzb;
            public final /* synthetic */ zzev zzc;

            @Override // java.lang.Runnable
            public final void run() {
                zzaa.this.zzk(this.zzb, this.zzc);
            }
        }, "onRequestReceived", zzfxVar);
    }
}

package com.google.android.play.core.assetpacks;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzci implements ServiceConnection {
    private final com.google.android.play.core.internal.zzag zza = new com.google.android.play.core.internal.zzag("ExtractionForegroundServiceConnection");
    private final List<com.google.android.play.core.internal.zzz> zzb = new ArrayList();
    private final Context zzc;
    private ExtractionForegroundService zzd;
    private Notification zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzci(Context context) {
        this.zzc = context;
    }

    private final void zzd() {
        ArrayList arrayList;
        synchronized (this.zzb) {
            arrayList = new ArrayList(this.zzb);
            this.zzb.clear();
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            try {
                ((com.google.android.play.core.internal.zzz) arrayList.get(i)).zze(new Bundle(), new Bundle());
            } catch (RemoteException unused) {
                this.zza.zzb("Could not resolve Play Store service state update callback.", new Object[0]);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.zza.zza("Starting foreground installation service.", new Object[0]);
        ExtractionForegroundService extractionForegroundService = ((zzch) iBinder).zza;
        this.zzd = extractionForegroundService;
        extractionForegroundService.startForeground(-1883842196, this.zze);
        zzd();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(Notification notification) {
        this.zze = notification;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb() {
        this.zza.zza("Stopping foreground installation service.", new Object[0]);
        this.zzc.unbindService(this);
        ExtractionForegroundService extractionForegroundService = this.zzd;
        if (extractionForegroundService != null) {
            extractionForegroundService.zza();
        }
        zzd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc(com.google.android.play.core.internal.zzz zzzVar) {
        synchronized (this.zzb) {
            this.zzb.add(zzzVar);
        }
    }
}

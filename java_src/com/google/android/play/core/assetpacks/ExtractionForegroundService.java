package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public class ExtractionForegroundService extends Service {
    private final IBinder zza = new zzch(this);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.zza;
    }

    public final synchronized void zza() {
        stopForeground(true);
        stopSelf();
    }
}

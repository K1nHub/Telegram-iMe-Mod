package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public class AssetPackExtractionService extends Service {
    zzb zza;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.zza;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        zzd.zza(getApplicationContext()).zzb(this);
    }
}

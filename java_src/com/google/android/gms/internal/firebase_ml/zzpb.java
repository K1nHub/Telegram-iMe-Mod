package com.google.android.gms.internal.firebase_ml;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzpb extends BroadcastReceiver {
    private final long zzavs;
    private final TaskCompletionSource<Void> zzavt;
    private final /* synthetic */ zzoz zzavu;

    private zzpb(zzoz zzozVar, long j, TaskCompletionSource<Void> taskCompletionSource) {
        this.zzavu = zzozVar;
        this.zzavs = j;
        this.zzavt = taskCompletionSource;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        GmsLogger gmsLogger;
        Map map;
        Map map2;
        zzpa zzpaVar;
        zzor zzmk;
        zzpa zzpaVar2;
        zzor zzmk2;
        zzpa zzpaVar3;
        zzor zzmk3;
        FirebaseMLException zzb;
        FirebaseApp firebaseApp;
        long longExtra = intent.getLongExtra("extra_download_id", -1L);
        if (longExtra != this.zzavs) {
            return;
        }
        Integer zzmf = this.zzavu.zzmf();
        synchronized (this.zzavu) {
            try {
                firebaseApp = this.zzavu.firebaseApp;
                firebaseApp.getApplicationContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                gmsLogger = zzoz.zzass;
                gmsLogger.m776w("ModelDownloadManager", "Exception thrown while trying to unregister the broadcast receiver for the download", e);
            }
            map = this.zzavu.zzavl;
            map.remove(Long.valueOf(this.zzavs));
            map2 = this.zzavu.zzavm;
            map2.remove(Long.valueOf(this.zzavs));
        }
        if (zzmf != null) {
            if (zzmf.intValue() != 16) {
                if (zzmf.intValue() == 8) {
                    zzpaVar2 = this.zzavu.zzavp;
                    zzmc zzmcVar = zzmc.NO_ERROR;
                    zzmk2 = this.zzavu.zzmk();
                    zzpaVar2.zza(zzmcVar, false, zzmk2, zzlu.zzw.zza.SUCCEEDED);
                    this.zzavt.setResult(null);
                    return;
                }
            } else {
                zzpaVar3 = this.zzavu.zzavp;
                zzmk3 = this.zzavu.zzmk();
                zzpaVar3.zza(false, zzmk3, this.zzavu.zza(Long.valueOf(longExtra)));
                TaskCompletionSource<Void> taskCompletionSource = this.zzavt;
                zzb = this.zzavu.zzb(Long.valueOf(longExtra));
                taskCompletionSource.setException(zzb);
                return;
            }
        }
        zzpaVar = this.zzavu.zzavp;
        zzmk = this.zzavu.zzmk();
        zzpaVar.zza(false, zzmk, 0);
        this.zzavt.setException(new FirebaseMLException("Model downloading failed", 13));
    }
}

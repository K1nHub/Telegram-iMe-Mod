package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzil implements Runnable {
    final /* synthetic */ Uri zza;
    final /* synthetic */ BaseImplementation.ResultHolder zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ zzim zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzil(zzim zzimVar, Uri uri, BaseImplementation.ResultHolder resultHolder, String str, long j, long j2) {
        this.zzf = zzimVar;
        this.zza = uri;
        this.zzb = resultHolder;
        this.zzc = str;
        this.zzd = j;
        this.zze = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (Log.isLoggable("WearableClient", 2)) {
            Log.v("WearableClient", "Executing sendFileToChannelTask");
        }
        if (!"file".equals(this.zza.getScheme())) {
            Log.w("WearableClient", "Channel.sendFile used with non-file URI");
            this.zzb.setFailedResult(new Status(10, "Channel.sendFile used with non-file URI"));
            return;
        }
        File file = new File(this.zza.getPath());
        try {
            ParcelFileDescriptor open = ParcelFileDescriptor.open(file, 268435456);
            try {
                try {
                    ((zzfb) this.zzf.getService()).zzw(new zzie(this.zzb), this.zzc, open, this.zzd, this.zze);
                    try {
                        open.close();
                    } catch (IOException e) {
                        Log.w("WearableClient", "Failed to close sourceFd", e);
                    }
                } catch (Throwable th) {
                    try {
                        open.close();
                    } catch (IOException e2) {
                        Log.w("WearableClient", "Failed to close sourceFd", e2);
                    }
                    throw th;
                }
            } catch (RemoteException e3) {
                Log.w("WearableClient", "Channel.sendFile failed.", e3);
                this.zzb.setFailedResult(new Status(8));
                try {
                    open.close();
                } catch (IOException e4) {
                    Log.w("WearableClient", "Failed to close sourceFd", e4);
                }
            }
        } catch (FileNotFoundException unused) {
            Log.w("WearableClient", "File couldn't be opened for Channel.sendFile: ".concat(file.toString()));
            this.zzb.setFailedResult(new Status(13));
        }
    }
}

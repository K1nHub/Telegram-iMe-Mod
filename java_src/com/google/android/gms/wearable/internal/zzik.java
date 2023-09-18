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
import org.telegram.tgnet.ConnectionsManager;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes4.dex */
final class zzik implements Runnable {
    final /* synthetic */ Uri zza;
    final /* synthetic */ BaseImplementation.ResultHolder zzb;
    final /* synthetic */ boolean zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzim zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzik(zzim zzimVar, Uri uri, BaseImplementation.ResultHolder resultHolder, boolean z, String str) {
        this.zze = zzimVar;
        this.zza = uri;
        this.zzb = resultHolder;
        this.zzc = z;
        this.zzd = str;
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [android.os.ParcelFileDescriptor, java.lang.Object, java.io.File] */
    @Override // java.lang.Runnable
    public final void run() {
        if (Log.isLoggable("WearableClient", 2)) {
            Log.v("WearableClient", "Executing receiveFileFromChannelTask");
        }
        if (!"file".equals(this.zza.getScheme())) {
            Log.w("WearableClient", "Channel.receiveFile used with non-file URI");
            this.zzb.setFailedResult(new Status(10, "Channel.receiveFile used with non-file URI"));
            return;
        }
        ?? file = new File(this.zza.getPath());
        try {
            try {
                ParcelFileDescriptor open = ParcelFileDescriptor.open(file, (true != this.zzc ? 0 : ConnectionsManager.FileTypeVideo) | 671088640);
                try {
                    ((zzfb) this.zze.getService()).zzC(new zzii(this.zzb), this.zzd, open);
                    try {
                        open.close();
                    } catch (IOException e) {
                        Log.w("WearableClient", "Failed to close targetFd", e);
                    }
                } catch (RemoteException e2) {
                    Log.w("WearableClient", "Channel.receiveFile failed.", e2);
                    this.zzb.setFailedResult(new Status(8));
                    try {
                        open.close();
                    } catch (IOException e3) {
                        Log.w("WearableClient", "Failed to close targetFd", e3);
                    }
                }
            } catch (FileNotFoundException unused) {
                Log.w("WearableClient", "File couldn't be opened for Channel.receiveFile: ".concat(file.toString()));
                this.zzb.setFailedResult(new Status(13));
            }
        } catch (Throwable th) {
            try {
                file.close();
            } catch (IOException e4) {
                Log.w("WearableClient", "Failed to close targetFd", e4);
            }
            throw th;
        }
    }
}

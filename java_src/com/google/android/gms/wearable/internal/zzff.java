package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzff {
    private final Map zza = new HashMap();

    public final void zza(zzim zzimVar, BaseImplementation.ResultHolder resultHolder, Object obj, zzit zzitVar) throws RemoteException {
        synchronized (this.zza) {
            if (this.zza.get(obj) != null) {
                if (Log.isLoggable("WearableClient", 2)) {
                    String valueOf = String.valueOf(obj);
                    Log.v("WearableClient", "duplicate listener: " + valueOf);
                }
                resultHolder.setResult(new Status(4001));
                return;
            }
            if (Log.isLoggable("WearableClient", 2)) {
                String valueOf2 = String.valueOf(obj);
                Log.v("WearableClient", "new listener: " + valueOf2);
            }
            this.zza.put(obj, zzitVar);
            try {
                ((zzfb) zzimVar.getService()).zzd(new zzfd(this.zza, obj, resultHolder), new zzd(zzitVar));
            } catch (RemoteException e) {
                if (Log.isLoggable("WearableClient", 3)) {
                    String valueOf3 = String.valueOf(obj);
                    Log.d("WearableClient", "addListener failed, removing listener: " + valueOf3);
                }
                this.zza.remove(obj);
                throw e;
            }
        }
    }

    public final void zzc(zzim zzimVar, BaseImplementation.ResultHolder resultHolder, Object obj) throws RemoteException {
        synchronized (this.zza) {
            zzit zzitVar = (zzit) this.zza.remove(obj);
            if (zzitVar == null) {
                if (Log.isLoggable("WearableClient", 2)) {
                    String valueOf = String.valueOf(obj);
                    Log.v("WearableClient", "remove Listener unknown: " + valueOf);
                }
                resultHolder.setResult(new Status(4002));
                return;
            }
            zzitVar.zzs();
            if (Log.isLoggable("WearableClient", 2)) {
                String valueOf2 = String.valueOf(obj);
                Log.v("WearableClient", "service.removeListener: " + valueOf2);
            }
            ((zzfb) zzimVar.getService()).zzx(new zzfe(this.zza, obj, resultHolder), new zzgw(zzitVar));
        }
    }

    public final void zzb(IBinder iBinder) {
        zzfb zzfbVar;
        synchronized (this.zza) {
            if (iBinder == null) {
                zzfbVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
                zzfbVar = queryLocalInterface instanceof zzfb ? (zzfb) queryLocalInterface : new zzfb(iBinder);
            }
            zzib zzibVar = new zzib();
            for (Map.Entry entry : this.zza.entrySet()) {
                zzit zzitVar = (zzit) entry.getValue();
                try {
                    zzfbVar.zzd(zzibVar, new zzd(zzitVar));
                    if (Log.isLoggable("WearableClient", 3)) {
                        String valueOf = String.valueOf(entry.getKey());
                        String valueOf2 = String.valueOf(zzitVar);
                        Log.d("WearableClient", "onPostInitHandler: added: " + valueOf + "/" + valueOf2);
                    }
                } catch (RemoteException unused) {
                    String valueOf3 = String.valueOf(entry.getKey());
                    String valueOf4 = String.valueOf(zzitVar);
                    Log.w("WearableClient", "onPostInitHandler: Didn't add: " + valueOf3 + "/" + valueOf4);
                }
            }
        }
    }
}

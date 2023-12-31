package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzz extends zzk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzz(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
    }

    public final void zzc(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzm.zzb(zza, bundle);
        zzb(4, zza);
    }

    public final void zzd(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzm.zzb(zza, bundle);
        zzb(3, zza);
    }

    public final void zze(Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel zza = zza();
        zzm.zzb(zza, bundle);
        zzm.zzb(zza, bundle2);
        zzb(2, zza);
    }
}

package com.google.android.gms.internal.fido;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
/* loaded from: classes.dex */
public abstract class zzu extends zzb implements zzv {
    public zzu() {
        super("com.google.android.gms.fido.sourcedevice.internal.IStartDirectTransferCallbacks");
    }

    @Override // com.google.android.gms.internal.fido.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzc.zzc(parcel);
            zzb((Status) zzc.zza(parcel, Status.CREATOR), (PendingIntent) zzc.zza(parcel, PendingIntent.CREATOR));
            return true;
        }
        return false;
    }
}

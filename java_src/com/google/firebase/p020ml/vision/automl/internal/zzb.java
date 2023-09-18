package com.google.firebase.p020ml.vision.automl.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.firebase_ml.zzd;
/* renamed from: com.google.firebase.ml.vision.automl.internal.zzb */
/* loaded from: classes4.dex */
public final class zzb extends com.google.android.gms.internal.firebase_ml.zzb implements IOnDeviceAutoMLImageLabeler {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(IBinder iBinder) {
        super(iBinder, "com.google.firebase.ml.vision.automl.internal.IOnDeviceAutoMLImageLabeler");
    }

    @Override // com.google.firebase.p020ml.vision.automl.internal.IOnDeviceAutoMLImageLabeler
    public final zzf[] zza(IObjectWrapper iObjectWrapper, zzh zzhVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzd.zza(obtainAndWriteInterfaceToken, iObjectWrapper);
        zzd.zza(obtainAndWriteInterfaceToken, zzhVar);
        Parcel transactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken);
        zzf[] zzfVarArr = (zzf[]) transactAndReadException.createTypedArray(zzf.CREATOR);
        transactAndReadException.recycle();
        return zzfVarArr;
    }

    @Override // com.google.firebase.p020ml.vision.automl.internal.IOnDeviceAutoMLImageLabeler
    public final void zzln() throws RemoteException {
        transactAndReadExceptionReturnVoid(2, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.firebase.p020ml.vision.automl.internal.IOnDeviceAutoMLImageLabeler
    public final void close() throws RemoteException {
        transactAndReadExceptionReturnVoid(3, obtainAndWriteInterfaceToken());
    }

    @Override // com.google.firebase.p020ml.vision.automl.internal.IOnDeviceAutoMLImageLabeler
    public final boolean zzlw() throws RemoteException {
        Parcel transactAndReadException = transactAndReadException(4, obtainAndWriteInterfaceToken());
        boolean zza = zzd.zza(transactAndReadException);
        transactAndReadException.recycle();
        return zza;
    }
}

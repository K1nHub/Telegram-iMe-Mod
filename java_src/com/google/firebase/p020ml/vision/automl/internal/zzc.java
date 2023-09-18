package com.google.firebase.p020ml.vision.automl.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.firebase_ml.zzb;
import com.google.android.gms.internal.firebase_ml.zzd;
/* renamed from: com.google.firebase.ml.vision.automl.internal.zzc */
/* loaded from: classes4.dex */
public final class zzc extends zzb implements zza {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(IBinder iBinder) {
        super(iBinder, "com.google.firebase.ml.vision.automl.internal.IOnDeviceAutoMLImageLabelerCreator");
    }

    @Override // com.google.firebase.p020ml.vision.automl.internal.zza
    public final IOnDeviceAutoMLImageLabeler newOnDeviceAutoMLImageLabeler(IObjectWrapper iObjectWrapper, OnDeviceAutoMLImageLabelerOptionsParcel onDeviceAutoMLImageLabelerOptionsParcel) throws RemoteException {
        IOnDeviceAutoMLImageLabeler zzbVar;
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzd.zza(obtainAndWriteInterfaceToken, iObjectWrapper);
        zzd.zza(obtainAndWriteInterfaceToken, onDeviceAutoMLImageLabelerOptionsParcel);
        Parcel transactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken);
        IBinder readStrongBinder = transactAndReadException.readStrongBinder();
        if (readStrongBinder == null) {
            zzbVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.firebase.ml.vision.automl.internal.IOnDeviceAutoMLImageLabeler");
            if (queryLocalInterface instanceof IOnDeviceAutoMLImageLabeler) {
                zzbVar = (IOnDeviceAutoMLImageLabeler) queryLocalInterface;
            } else {
                zzbVar = new zzb(readStrongBinder);
            }
        }
        transactAndReadException.recycle();
        return zzbVar;
    }
}

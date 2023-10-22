package com.google.firebase.p020ml.vision.automl.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* renamed from: com.google.firebase.ml.vision.automl.internal.IOnDeviceAutoMLImageLabeler */
/* loaded from: classes3.dex */
public interface IOnDeviceAutoMLImageLabeler extends IInterface {
    void close() throws RemoteException;

    zzf[] zza(IObjectWrapper iObjectWrapper, zzh zzhVar) throws RemoteException;

    void zzln() throws RemoteException;

    boolean zzlw() throws RemoteException;
}

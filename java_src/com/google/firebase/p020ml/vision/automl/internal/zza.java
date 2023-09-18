package com.google.firebase.p020ml.vision.automl.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* renamed from: com.google.firebase.ml.vision.automl.internal.zza */
/* loaded from: classes4.dex */
public interface zza extends IInterface {
    IOnDeviceAutoMLImageLabeler newOnDeviceAutoMLImageLabeler(IObjectWrapper iObjectWrapper, OnDeviceAutoMLImageLabelerOptionsParcel onDeviceAutoMLImageLabelerOptionsParcel) throws RemoteException;
}

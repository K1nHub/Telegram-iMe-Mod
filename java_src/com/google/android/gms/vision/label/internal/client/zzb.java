package com.google.android.gms.vision.label.internal.client;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes3.dex */
public interface zzb extends IInterface {
    INativeImageLabeler newImageLabeler(IObjectWrapper iObjectWrapper, ImageLabelerOptions imageLabelerOptions) throws RemoteException;
}

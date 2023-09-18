package com.google.android.gms.vision.label.internal.client;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.vision.label.ImageLabeler$$ExternalSyntheticThrowNSME0;
/* loaded from: classes4.dex */
public final class zza extends com.google.android.gms.internal.vision.zza implements INativeImageLabeler {
    zza(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.label.internal.client.INativeImageLabeler");
    }

    @Override // com.google.android.gms.vision.label.internal.client.INativeImageLabeler
    public final zze[] zza(IObjectWrapper iObjectWrapper, LabelOptions labelOptions) throws RemoteException {
        obtainAndWriteInterfaceToken();
        throw ImageLabeler$$ExternalSyntheticThrowNSME0.m768m();
    }

    @Override // com.google.android.gms.vision.label.internal.client.INativeImageLabeler
    public final void zzs() throws RemoteException {
        zzb(2, obtainAndWriteInterfaceToken());
    }
}

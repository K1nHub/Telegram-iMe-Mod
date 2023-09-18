package com.google.android.gms.vision.label.internal.client;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.vision.label.ImageLabeler$$ExternalSyntheticThrowNSME0;
/* loaded from: classes4.dex */
public final class zzd extends com.google.android.gms.internal.vision.zza implements zzb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.label.internal.client.INativeImageLabelerCreator");
    }

    @Override // com.google.android.gms.vision.label.internal.client.zzb
    public final INativeImageLabeler newImageLabeler(IObjectWrapper iObjectWrapper, ImageLabelerOptions imageLabelerOptions) throws RemoteException {
        obtainAndWriteInterfaceToken();
        throw ImageLabeler$$ExternalSyntheticThrowNSME0.m768m();
    }
}

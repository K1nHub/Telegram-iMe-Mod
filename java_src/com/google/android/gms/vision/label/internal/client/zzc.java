package com.google.android.gms.vision.label.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.vision.label.ImageLabeler$$ExternalSyntheticThrowNSME0;
/* loaded from: classes3.dex */
public abstract class zzc extends com.google.android.gms.internal.vision.zzb implements zzb {
    public zzc() {
        super("com.google.android.gms.vision.label.internal.client.INativeImageLabelerCreator");
    }

    public static zzb asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.vision.label.internal.client.INativeImageLabelerCreator");
        if (queryLocalInterface instanceof zzb) {
            return (zzb) queryLocalInterface;
        }
        return new zzd(iBinder);
    }

    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        Parcelable.Creator<ImageLabelerOptions> creator = ImageLabelerOptions.CREATOR;
        throw ImageLabeler$$ExternalSyntheticThrowNSME0.m768m();
    }
}

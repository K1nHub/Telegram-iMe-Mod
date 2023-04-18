package com.google.android.gms.vision.label.internal.client;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.vision.label.ImageLabeler$$ExternalSyntheticThrowNSME0;
/* loaded from: classes3.dex */
public interface INativeImageLabeler extends IInterface {
    zze[] zza(IObjectWrapper iObjectWrapper, LabelOptions labelOptions) throws RemoteException;

    void zzs() throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class zza extends com.google.android.gms.internal.vision.zzb implements INativeImageLabeler {
        public zza() {
            super("com.google.android.gms.vision.label.internal.client.INativeImageLabeler");
        }

        protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                Parcelable.Creator<LabelOptions> creator = LabelOptions.CREATOR;
                throw ImageLabeler$$ExternalSyntheticThrowNSME0.m746m();
            } else if (i != 2) {
                return false;
            } else {
                zzs();
                parcel2.writeNoException();
                return true;
            }
        }
    }
}

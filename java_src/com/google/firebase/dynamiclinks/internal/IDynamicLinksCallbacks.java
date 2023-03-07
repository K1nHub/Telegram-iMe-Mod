package com.google.firebase.dynamiclinks.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes3.dex */
public interface IDynamicLinksCallbacks extends IInterface {
    void onCreateShortDynamicLink(Status status, ShortDynamicLinkImpl shortDynamicLinkImpl) throws RemoteException;

    void onGetDynamicLink(Status status, DynamicLinkData dynamicLinkData) throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IDynamicLinksCallbacks {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks");
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks");
                onGetDynamicLink(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? DynamicLinkData.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface("com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks");
                onCreateShortDynamicLink(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ShortDynamicLinkImpl.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i == 1598968902) {
                parcel2.writeString("com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks");
                return true;
            } else {
                return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }
}

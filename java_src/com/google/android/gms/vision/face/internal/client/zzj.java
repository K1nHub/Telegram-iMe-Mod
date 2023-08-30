package com.google.android.gms.vision.face.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.vision.zzs;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
/* loaded from: classes3.dex */
public final class zzj extends com.google.android.gms.internal.vision.zzb implements zzh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector");
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzh
    public final FaceParcel[] zza(IObjectWrapper iObjectWrapper, zzs zzsVar) throws RemoteException {
        Parcel m778a_ = m778a_();
        com.google.android.gms.internal.vision.zzd.zza(m778a_, iObjectWrapper);
        com.google.android.gms.internal.vision.zzd.zza(m778a_, zzsVar);
        Parcel zza = zza(1, m778a_);
        FaceParcel[] faceParcelArr = (FaceParcel[]) zza.createTypedArray(FaceParcel.CREATOR);
        zza.recycle();
        return faceParcelArr;
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzh
    public final FaceParcel[] zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, int i, int i2, int i3, int i4, int i5, int i6, zzs zzsVar) throws RemoteException {
        Parcel m778a_ = m778a_();
        com.google.android.gms.internal.vision.zzd.zza(m778a_, iObjectWrapper);
        com.google.android.gms.internal.vision.zzd.zza(m778a_, iObjectWrapper2);
        com.google.android.gms.internal.vision.zzd.zza(m778a_, iObjectWrapper3);
        m778a_.writeInt(i);
        m778a_.writeInt(i2);
        m778a_.writeInt(i3);
        m778a_.writeInt(i4);
        m778a_.writeInt(i5);
        m778a_.writeInt(i6);
        com.google.android.gms.internal.vision.zzd.zza(m778a_, zzsVar);
        Parcel zza = zza(4, m778a_);
        FaceParcel[] faceParcelArr = (FaceParcel[]) zza.createTypedArray(FaceParcel.CREATOR);
        zza.recycle();
        return faceParcelArr;
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzh
    public final boolean zza(int i) throws RemoteException {
        Parcel m778a_ = m778a_();
        m778a_.writeInt(i);
        Parcel zza = zza(2, m778a_);
        boolean zza2 = com.google.android.gms.internal.vision.zzd.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzh
    public final void zza() throws RemoteException {
        zzb(3, m778a_());
    }
}

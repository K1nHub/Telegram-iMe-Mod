package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.vision.barcode.Barcode;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
/* loaded from: classes3.dex */
public final class zzo extends zzb implements zzl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
    }

    @Override // com.google.android.gms.internal.vision.zzl
    public final Barcode[] zza(IObjectWrapper iObjectWrapper, zzs zzsVar) throws RemoteException {
        Parcel m1071a_ = m1071a_();
        zzd.zza(m1071a_, iObjectWrapper);
        zzd.zza(m1071a_, zzsVar);
        Parcel zza = zza(1, m1071a_);
        Barcode[] barcodeArr = (Barcode[]) zza.createTypedArray(Barcode.CREATOR);
        zza.recycle();
        return barcodeArr;
    }

    @Override // com.google.android.gms.internal.vision.zzl
    public final Barcode[] zzb(IObjectWrapper iObjectWrapper, zzs zzsVar) throws RemoteException {
        Parcel m1071a_ = m1071a_();
        zzd.zza(m1071a_, iObjectWrapper);
        zzd.zza(m1071a_, zzsVar);
        Parcel zza = zza(2, m1071a_);
        Barcode[] barcodeArr = (Barcode[]) zza.createTypedArray(Barcode.CREATOR);
        zza.recycle();
        return barcodeArr;
    }

    @Override // com.google.android.gms.internal.vision.zzl
    public final void zza() throws RemoteException {
        zzb(3, m1071a_());
    }
}

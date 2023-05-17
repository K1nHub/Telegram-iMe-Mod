package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
/* loaded from: classes3.dex */
public final class zzac extends zzb implements zzad {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
    }

    @Override // com.google.android.gms.internal.vision.zzad
    public final zzah[] zza(IObjectWrapper iObjectWrapper, zzs zzsVar, zzaj zzajVar) throws RemoteException {
        Parcel m760a_ = m760a_();
        zzd.zza(m760a_, iObjectWrapper);
        zzd.zza(m760a_, zzsVar);
        zzd.zza(m760a_, zzajVar);
        Parcel zza = zza(3, m760a_);
        zzah[] zzahVarArr = (zzah[]) zza.createTypedArray(zzah.CREATOR);
        zza.recycle();
        return zzahVarArr;
    }

    @Override // com.google.android.gms.internal.vision.zzad
    public final void zzb() throws RemoteException {
        zzb(2, m760a_());
    }
}

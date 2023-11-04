package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
/* loaded from: classes3.dex */
public final class zzae extends zzb implements zzaf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzae(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator");
    }

    @Override // com.google.android.gms.internal.vision.zzaf
    public final zzad zza(IObjectWrapper iObjectWrapper, zzam zzamVar) throws RemoteException {
        zzad zzacVar;
        Parcel m1071a_ = m1071a_();
        zzd.zza(m1071a_, iObjectWrapper);
        zzd.zza(m1071a_, zzamVar);
        Parcel zza = zza(1, m1071a_);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzacVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
            if (queryLocalInterface instanceof zzad) {
                zzacVar = (zzad) queryLocalInterface;
            } else {
                zzacVar = new zzac(readStrongBinder);
            }
        }
        zza.recycle();
        return zzacVar;
    }
}

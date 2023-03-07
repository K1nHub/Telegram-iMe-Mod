package com.google.firebase.p021ml.vision.automl.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.firebase_ml.zza;
/* renamed from: com.google.firebase.ml.vision.automl.internal.zzd */
/* loaded from: classes3.dex */
public abstract class zzd extends zza implements zza {
    public static zza asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.ml.vision.automl.internal.IOnDeviceAutoMLImageLabelerCreator");
        if (queryLocalInterface instanceof zza) {
            return (zza) queryLocalInterface;
        }
        return new zzc(iBinder);
    }
}

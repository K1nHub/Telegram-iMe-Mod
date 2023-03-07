package com.google.android.gms.internal.firebase_ml;

import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.common.FirebaseMLException;
/* loaded from: classes.dex */
public final class zzok {
    private zzom zzaud;

    public zzok(FirebaseApp firebaseApp) {
        this.zzaud = new zzom(firebaseApp);
    }

    public final void zza(String str, zzor zzorVar) throws FirebaseMLException {
        this.zzaud.zza(str, zzorVar);
    }

    public final boolean zza(zzpe zzpeVar) throws FirebaseMLException {
        return this.zzaud.zzb(zzpeVar.zzmn(), zzpeVar.zzmo());
    }

    public final boolean zzb(String str, zzor zzorVar) throws FirebaseMLException {
        return this.zzaud.zzb(str, zzorVar);
    }
}

package com.google.android.gms.internal.firebase_ml;

import com.google.firebase.p020ml.common.FirebaseMLException;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zznt implements Callable<T> {
    private final /* synthetic */ zznx zzatc;
    private final /* synthetic */ zzno zzatd;
    private final /* synthetic */ zzns zzate;
    private final /* synthetic */ zznr zzatf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zznt(zznr zznrVar, zznx zznxVar, zzno zznoVar, zzns zznsVar) {
        this.zzatf = zznrVar;
        this.zzatc = zznxVar;
        this.zzatd = zznoVar;
        this.zzate = zznsVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // java.util.concurrent.Callable
    public final T call() throws FirebaseMLException {
        zzoa zzoaVar;
        if (this.zzatc != null) {
            zzoaVar = this.zzatf.zzatb;
            zzoaVar.zzf(this.zzatc);
        }
        return this.zzatd.zza(this.zzate);
    }
}

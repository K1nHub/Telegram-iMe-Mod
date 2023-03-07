package com.google.android.gms.internal.firebase_ml;

import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class zznu implements Callable<TResult> {
    private final /* synthetic */ Callable val$callable;
    private final /* synthetic */ zznx zzatc;
    private final /* synthetic */ zznr zzatf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zznu(zznr zznrVar, zznx zznxVar, Callable callable) {
        this.zzatf = zznrVar;
        this.zzatc = zznxVar;
        this.val$callable = callable;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, TResult] */
    @Override // java.util.concurrent.Callable
    public final TResult call() throws Exception {
        zzoa zzoaVar;
        zzoaVar = this.zzatf.zzatb;
        zzoaVar.zzf(this.zzatc);
        return this.val$callable.call();
    }
}

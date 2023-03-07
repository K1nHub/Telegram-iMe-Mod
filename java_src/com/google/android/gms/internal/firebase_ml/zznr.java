package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class zznr {
    private static final GmsLogger zzasz = new GmsLogger("MLTaskManager", "");
    private static zznr zzata;
    private final zzoa zzatb;

    private zznr(FirebaseApp firebaseApp) {
        this.zzatb = zzoa.zzb(firebaseApp);
    }

    public static synchronized zznr zza(FirebaseApp firebaseApp) {
        zznr zznrVar;
        synchronized (zznr.class) {
            if (zzata == null) {
                zzata = new zznr(firebaseApp);
            }
            zznrVar = zzata;
        }
        return zznrVar;
    }

    public final <T, S extends zzns> void zza(zzno<T, S> zznoVar) {
        zznx zzll = zznoVar.zzll();
        if (zzll != null) {
            this.zzatb.zza(zzll);
        }
    }

    public final <T, S extends zzns> void zzb(zzno<T, S> zznoVar) {
        zznx zzll = zznoVar.zzll();
        if (zzll != null) {
            this.zzatb.zzd(zzll);
        }
    }

    public final synchronized <TResult> Task<TResult> zza(zznx zznxVar, Callable<TResult> callable) {
        Preconditions.checkNotNull(callable, "Operation can not be null");
        Preconditions.checkNotNull(zznxVar, "Model resource can not be null");
        zzasz.m799d("MLTaskManager", "Execute task");
        return zznn.zzlk().zza(new zznu(this, zznxVar, callable));
    }

    public final synchronized <T, S extends zzns> Task<T> zza(zzno<T, S> zznoVar, S s) {
        Preconditions.checkNotNull(zznoVar, "Operation can not be null");
        Preconditions.checkNotNull(s, "Input can not be null");
        zzasz.m799d("MLTaskManager", "Execute task");
        return zznn.zzlk().zza(new zznt(this, zznoVar.zzll(), zznoVar, s));
    }
}

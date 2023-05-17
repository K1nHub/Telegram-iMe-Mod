package com.google.android.gms.internal.firebase_ml;

import android.app.Application;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import p034j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public final class zzoa {
    private static final GmsLogger zzasz = new GmsLogger("ModelResourceManager", "");
    private static zzoa zzatz;
    private final zznn zzatu = zznn.zzlk();
    private final AtomicLong zzatv;
    private final Set<zznx> zzatw;
    private final Set<zznx> zzatx;
    private final ConcurrentHashMap<zznx, zzoc> zzaty;

    public static synchronized zzoa zzb(FirebaseApp firebaseApp) {
        zzoa zzoaVar;
        synchronized (zzoa.class) {
            if (zzatz == null) {
                zzatz = new zzoa(firebaseApp);
            }
            zzoaVar = zzatz;
        }
        return zzoaVar;
    }

    private zzoa(FirebaseApp firebaseApp) {
        AtomicLong atomicLong = new AtomicLong(300000L);
        this.zzatv = atomicLong;
        this.zzatw = new HashSet();
        this.zzatx = new HashSet();
        this.zzaty = new ConcurrentHashMap<>();
        if (firebaseApp.getApplicationContext() instanceof Application) {
            BackgroundDetector.initialize((Application) firebaseApp.getApplicationContext());
        } else {
            zzasz.m787e("ModelResourceManager", "No valid Application available and auto-manage cannot work");
        }
        BackgroundDetector.getInstance().addListener(new zznz(this));
        if (BackgroundDetector.getInstance().readCurrentStateIfPossible(true)) {
            atomicLong.set(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
    }

    public final synchronized void zza(zznx zznxVar) {
        Preconditions.checkNotNull(zznxVar, "Model source can not be null");
        GmsLogger gmsLogger = zzasz;
        gmsLogger.m789d("ModelResourceManager", "Add auto-managed model resource");
        if (this.zzatw.contains(zznxVar)) {
            gmsLogger.m785i("ModelResourceManager", "The model resource is already registered.");
            return;
        }
        this.zzatw.add(zznxVar);
        zzb(zznxVar);
    }

    private final synchronized void zzb(zznx zznxVar) {
        if (zznxVar == null) {
            return;
        }
        this.zzatu.zza(new zzoc(this, zznxVar, "OPERATION_LOAD"));
        if (this.zzatw.contains(zznxVar)) {
            zzc(zznxVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzlp() {
        for (zznx zznxVar : this.zzatw) {
            zzc(zznxVar);
        }
    }

    private final synchronized void zzc(zznx zznxVar) {
        zzoc zze = zze(zznxVar);
        this.zzatu.zzb(zze);
        long j = this.zzatv.get();
        GmsLogger gmsLogger = zzasz;
        StringBuilder sb = new StringBuilder(62);
        sb.append("Rescheduling modelResource release after: ");
        sb.append(j);
        gmsLogger.m783v("ModelResourceManager", sb.toString());
        this.zzatu.zza(zze, j);
    }

    public final synchronized void zzd(zznx zznxVar) {
        if (zznxVar == null) {
            return;
        }
        zzoc zze = zze(zznxVar);
        this.zzatu.zzb(zze);
        this.zzatu.zza(zze, 0L);
    }

    private final zzoc zze(zznx zznxVar) {
        this.zzaty.putIfAbsent(zznxVar, new zzoc(this, zznxVar, "OPERATION_RELEASE"));
        return this.zzaty.get(zznxVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzf(zznx zznxVar) throws FirebaseMLException {
        if (this.zzatx.contains(zznxVar)) {
            return;
        }
        try {
            zznxVar.zzln();
            this.zzatx.add(zznxVar);
        } catch (RuntimeException e) {
            throw new FirebaseMLException("The load task failed", 13, e);
        }
    }
}

package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.GmsLogger;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zznz implements BackgroundDetector.BackgroundStateChangeListener {
    private final /* synthetic */ zzoa zzatt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zznz(zzoa zzoaVar) {
        this.zzatt = zzoaVar;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void onBackgroundStateChanged(boolean z) {
        GmsLogger gmsLogger;
        AtomicLong atomicLong;
        gmsLogger = zzoa.zzasz;
        StringBuilder sb = new StringBuilder(34);
        sb.append("Background state changed to: ");
        sb.append(z);
        gmsLogger.m1094v("ModelResourceManager", sb.toString());
        atomicLong = this.zzatt.zzatv;
        atomicLong.set(z ? ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS : 300000L);
        this.zzatt.zzlp();
    }
}

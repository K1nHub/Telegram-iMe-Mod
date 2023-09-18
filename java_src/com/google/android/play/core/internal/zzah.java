package com.google.android.play.core.internal;

import com.google.android.play.core.tasks.zzi;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public abstract class zzah implements Runnable {
    private final zzi<?> zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzah() {
        this.zza = null;
    }

    public zzah(zzi<?> zziVar) {
        this.zza = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            zza();
        } catch (Exception e) {
            zzc(e);
        }
    }

    protected abstract void zza();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzi<?> zzb() {
        return this.zza;
    }

    public final void zzc(Exception exc) {
        zzi<?> zziVar = this.zza;
        if (zziVar != null) {
            zziVar.zzd(exc);
        }
    }
}

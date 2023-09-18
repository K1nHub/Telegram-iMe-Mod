package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
final class zzd<ResultT> implements zzg<ResultT> {
    private final Executor zza;
    private final Object zzb = new Object();
    private final OnFailureListener zzc;

    public zzd(Executor executor, OnFailureListener onFailureListener) {
        this.zza = executor;
        this.zzc = onFailureListener;
    }

    @Override // com.google.android.play.core.tasks.zzg
    public final void zzc(Task<ResultT> task) {
        if (task.isSuccessful()) {
            return;
        }
        synchronized (this.zzb) {
            if (this.zzc == null) {
                return;
            }
            this.zza.execute(new zzc(this, task));
        }
    }
}

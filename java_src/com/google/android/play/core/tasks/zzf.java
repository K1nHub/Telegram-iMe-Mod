package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzf<ResultT> implements zzg<ResultT> {
    private final Executor zza;
    private final Object zzb = new Object();
    private final OnSuccessListener<? super ResultT> zzc;

    public zzf(Executor executor, OnSuccessListener<? super ResultT> onSuccessListener) {
        this.zza = executor;
        this.zzc = onSuccessListener;
    }

    @Override // com.google.android.play.core.tasks.zzg
    public final void zzc(Task<ResultT> task) {
        if (task.isSuccessful()) {
            synchronized (this.zzb) {
                if (this.zzc == null) {
                    return;
                }
                this.zza.execute(new zze(this, task));
            }
        }
    }
}

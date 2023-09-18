package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
final class zzb<ResultT> implements zzg<ResultT> {
    private final Executor zza;
    private final Object zzb = new Object();
    private final OnCompleteListener<ResultT> zzc;

    public zzb(Executor executor, OnCompleteListener<ResultT> onCompleteListener) {
        this.zza = executor;
        this.zzc = onCompleteListener;
    }

    @Override // com.google.android.play.core.tasks.zzg
    public final void zzc(Task<ResultT> task) {
        synchronized (this.zzb) {
            if (this.zzc == null) {
                return;
            }
            this.zza.execute(new zza(this, task));
        }
    }
}

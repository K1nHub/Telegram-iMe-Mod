package com.google.android.play.core.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzh<ResultT> {
    private final Object zza = new Object();
    private Queue<zzg<ResultT>> zzb;
    private boolean zzc;

    public final void zza(zzg<ResultT> zzgVar) {
        synchronized (this.zza) {
            if (this.zzb == null) {
                this.zzb = new ArrayDeque();
            }
            this.zzb.add(zzgVar);
        }
    }

    public final void zzb(Task<ResultT> task) {
        zzg<ResultT> poll;
        synchronized (this.zza) {
            if (this.zzb != null && !this.zzc) {
                this.zzc = true;
                while (true) {
                    synchronized (this.zza) {
                        poll = this.zzb.poll();
                        if (poll == null) {
                            this.zzc = false;
                            return;
                        }
                    }
                    poll.zzc(task);
                }
            }
        }
    }
}

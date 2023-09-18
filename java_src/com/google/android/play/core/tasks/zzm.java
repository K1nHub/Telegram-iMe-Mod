package com.google.android.play.core.tasks;

import com.google.android.play.core.internal.zzci;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
final class zzm<ResultT> extends Task<ResultT> {
    private final Object zza = new Object();
    private final zzh<ResultT> zzb = new zzh<>();
    private boolean zzc;
    private ResultT zzd;
    private Exception zze;

    private final void zze() {
        zzci.zzb(this.zzc, "Task is not yet complete");
    }

    private final void zzf() {
        zzci.zzb(!this.zzc, "Task is already complete");
    }

    private final void zzg() {
        synchronized (this.zza) {
            if (this.zzc) {
                this.zzb.zzb(this);
            }
        }
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Task<ResultT> addOnCompleteListener(OnCompleteListener<ResultT> onCompleteListener) {
        this.zzb.zza(new zzb(TaskExecutors.MAIN_THREAD, onCompleteListener));
        zzg();
        return this;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Task<ResultT> addOnSuccessListener(OnSuccessListener<? super ResultT> onSuccessListener) {
        addOnSuccessListener(TaskExecutors.MAIN_THREAD, onSuccessListener);
        return this;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Exception getException() {
        Exception exc;
        synchronized (this.zza) {
            exc = this.zze;
        }
        return exc;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final ResultT getResult() {
        ResultT resultt;
        synchronized (this.zza) {
            zze();
            Exception exc = this.zze;
            if (exc == null) {
                resultt = this.zzd;
            } else {
                throw new RuntimeExecutionException(exc);
            }
        }
        return resultt;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final boolean isComplete() {
        boolean z;
        synchronized (this.zza) {
            z = this.zzc;
        }
        return z;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final boolean isSuccessful() {
        boolean z;
        synchronized (this.zza) {
            z = false;
            if (this.zzc && this.zze == null) {
                z = true;
            }
        }
        return z;
    }

    public final void zza(Exception exc) {
        synchronized (this.zza) {
            zzf();
            this.zzc = true;
            this.zze = exc;
        }
        this.zzb.zzb(this);
    }

    public final void zzb(ResultT resultt) {
        synchronized (this.zza) {
            zzf();
            this.zzc = true;
            this.zzd = resultt;
        }
        this.zzb.zzb(this);
    }

    public final boolean zzc(Exception exc) {
        synchronized (this.zza) {
            if (this.zzc) {
                return false;
            }
            this.zzc = true;
            this.zze = exc;
            this.zzb.zzb(this);
            return true;
        }
    }

    public final boolean zzd(ResultT resultt) {
        synchronized (this.zza) {
            if (this.zzc) {
                return false;
            }
            this.zzc = true;
            this.zzd = resultt;
            this.zzb.zzb(this);
            return true;
        }
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Task<ResultT> addOnFailureListener(Executor executor, OnFailureListener onFailureListener) {
        this.zzb.zza(new zzd(executor, onFailureListener));
        zzg();
        return this;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Task<ResultT> addOnSuccessListener(Executor executor, OnSuccessListener<? super ResultT> onSuccessListener) {
        this.zzb.zza(new zzf(executor, onSuccessListener));
        zzg();
        return this;
    }
}

package com.google.android.play.core.tasks;

import com.google.android.play.core.internal.zzci;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class Tasks {
    public static <ResultT> ResultT await(Task<ResultT> task) throws ExecutionException, InterruptedException {
        zzci.zza(task, "Task must not be null");
        if (task.isComplete()) {
            return (ResultT) zzc(task);
        }
        zzo zzoVar = new zzo(null);
        zzd(task, zzoVar);
        zzoVar.zza();
        return (ResultT) zzc(task);
    }

    public static <ResultT> Task<ResultT> zza(Exception exc) {
        zzm zzmVar = new zzm();
        zzmVar.zza(exc);
        return zzmVar;
    }

    public static <ResultT> Task<ResultT> zzb(ResultT resultt) {
        zzm zzmVar = new zzm();
        zzmVar.zzb(resultt);
        return zzmVar;
    }

    private static <ResultT> ResultT zzc(Task<ResultT> task) throws ExecutionException {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        throw new ExecutionException(task.getException());
    }

    private static void zzd(Task<?> task, zzp zzpVar) {
        Executor executor = TaskExecutors.zza;
        task.addOnSuccessListener(executor, zzpVar);
        task.addOnFailureListener(executor, zzpVar);
    }
}

package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzfq<V> extends FutureTask<V> implements Comparable<zzfq<V>> {
    final boolean zza;
    final /* synthetic */ zzfs zzb;
    private final long zzc;
    private final String zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfq(zzfs zzfsVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.zzb = zzfsVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzfs.zza;
        long andIncrement = atomicLong.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = str;
        this.zza = z;
        if (andIncrement == Long.MAX_VALUE) {
            zzfsVar.zzs.zzay().zzd().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzfq zzfqVar = (zzfq) obj;
        boolean z = this.zza;
        if (z != zzfqVar.zza) {
            return !z ? 1 : -1;
        }
        int i = (this.zzc > zzfqVar.zzc ? 1 : (this.zzc == zzfqVar.zzc ? 0 : -1));
        if (i < 0) {
            return -1;
        }
        if (i > 0) {
            return 1;
        }
        this.zzb.zzs.zzay().zzh().zzb("Two tasks share the same index. index", Long.valueOf(this.zzc));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.zzb.zzs.zzay().zzd().zzb(this.zzd, th);
        if ((th instanceof zzfo) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfq(zzfs zzfsVar, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.zzb = zzfsVar;
        Preconditions.checkNotNull("Task exception on worker thread");
        atomicLong = zzfs.zza;
        long andIncrement = atomicLong.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = "Task exception on worker thread";
        this.zza = z;
        if (andIncrement == Long.MAX_VALUE) {
            zzfsVar.zzs.zzay().zzd().zza("Tasks index overflow");
        }
    }
}

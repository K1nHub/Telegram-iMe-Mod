package com.google.android.gms.internal.mlkit_common;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zzq {
    final long zza;
    final long zzb;
    final boolean zzc;

    private zzq(long j, long j2, boolean z) {
        this.zza = j;
        this.zzb = j2;
        this.zzc = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzq zza(final FileDescriptor fileDescriptor) throws IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            StructStat structStat = (StructStat) zzc(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.zzl
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return Os.fstat(fileDescriptor);
                }
            });
            return new zzq(structStat.st_dev, structStat.st_ino, OsConstants.S_ISLNK(structStat.st_mode));
        }
        return zzo.zza(fileDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzq zzb(final String str) throws IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            StructStat structStat = (StructStat) zzc(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.zzk
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return Os.lstat(str);
                }
            });
            return new zzq(structStat.st_dev, structStat.st_ino, OsConstants.S_ISLNK(structStat.st_mode));
        }
        return zzo.zzd(str);
    }

    private static Object zzc(Callable callable) throws IOException {
        try {
            return callable.call();
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }
}

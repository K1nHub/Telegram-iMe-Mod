package com.google.android.gms.internal.mlkit_common;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public final class zzn {
    private static final Method zza;
    private static final Method zzb;
    private static final Method zzc;
    private static final Field zzd;
    private static final Field zze;
    private static final Field zzf;
    private static final Object zzg;
    private static final Throwable zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzj zza(final String str) throws IOException {
        return (zzj) zza((Callable<Object>) new Callable(str) { // from class: com.google.android.gms.internal.mlkit_common.zzm
            private final String zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = str;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzj zza2;
                zza2 = zzn.zza(zzn.zzb.invoke(zzn.zzg, this.zza));
                return zza2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzj zza(final FileDescriptor fileDescriptor) throws IOException {
        return (zzj) zza((Callable<Object>) new Callable(fileDescriptor) { // from class: com.google.android.gms.internal.mlkit_common.zzp
            private final FileDescriptor zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = fileDescriptor;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzj zza2;
                zza2 = zzn.zza(zzn.zzc.invoke(zzn.zzg, this.zza));
                return zza2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzj zza(Object obj) throws Exception {
        return new zzj(((Long) zzd.get(obj)).longValue(), ((Long) zze.get(obj)).longValue(), ((Boolean) zza.invoke(null, Integer.valueOf(((Integer) zzf.get(obj)).intValue()))).booleanValue());
    }

    private static <T> T zza(Callable<T> callable) throws IOException {
        try {
            Throwable th = zzh;
            if (th != null) {
                throw new IOException(th);
            }
            return callable.call();
        } catch (Throwable th2) {
            throw new IOException(th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Object obj;
        Field field;
        Method method;
        Method method2;
        Method method3;
        Field field2;
        Field field3;
        try {
            Class<?> cls = Class.forName("libcore.io.Libcore");
            Class<?> cls2 = Class.forName("libcore.io.StructStat");
            Class<?> cls3 = Class.forName("libcore.io.OsConstants");
            Class<?> cls4 = Class.forName("libcore.io.ForwardingOs");
            method = cls3.getDeclaredMethod("S_ISLNK", Integer.TYPE);
            try {
                method.setAccessible(true);
                method3 = cls4.getDeclaredMethod("lstat", String.class);
                try {
                    method2 = cls4.getDeclaredMethod("fstat", FileDescriptor.class);
                    try {
                        Field declaredField = cls.getDeclaredField("os");
                        declaredField.setAccessible(true);
                        obj = declaredField.get(cls);
                        try {
                            field2 = cls2.getField("st_dev");
                            try {
                                field3 = cls2.getField("st_ino");
                                try {
                                    field = cls2.getField("st_mode");
                                    try {
                                        field2.setAccessible(true);
                                        field3.setAccessible(true);
                                        field.setAccessible(true);
                                    } catch (Throwable th) {
                                        th = th;
                                        try {
                                            Log.d("StructStatHelper", "Reflection failed", th);
                                            zza = method;
                                            zzb = method3;
                                            zzc = method2;
                                            zzd = field2;
                                            zze = field3;
                                            zzf = field;
                                            zzg = obj;
                                            zzh = th;
                                        } finally {
                                            zza = method;
                                            zzb = method3;
                                            zzc = method2;
                                            zzd = field2;
                                            zze = field3;
                                            zzf = field;
                                            zzg = obj;
                                            zzh = null;
                                        }
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    field = null;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                field = null;
                                field3 = null;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            field = null;
                            field2 = field;
                            field3 = field2;
                            Log.d("StructStatHelper", "Reflection failed", th);
                            zza = method;
                            zzb = method3;
                            zzc = method2;
                            zzd = field2;
                            zze = field3;
                            zzf = field;
                            zzg = obj;
                            zzh = th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        obj = null;
                        field = null;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    obj = null;
                    field = null;
                    method2 = null;
                    field2 = 0;
                }
            } catch (Throwable th7) {
                th = th7;
                obj = null;
                field = null;
                method2 = null;
                method3 = method2;
                field2 = method3;
                field3 = field2;
                Log.d("StructStatHelper", "Reflection failed", th);
                zza = method;
                zzb = method3;
                zzc = method2;
                zzd = field2;
                zze = field3;
                zzf = field;
                zzg = obj;
                zzh = th;
            }
        } catch (Throwable th8) {
            th = th8;
            obj = null;
            field = null;
            method = null;
            method2 = null;
        }
    }
}

package com.google.android.gms.internal.firebase_ml;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public final class zzlc {
    @NullableDecl
    private static final Object zzacl;
    @NullableDecl
    private static final Method zzacm;
    @NullableDecl
    private static final Method zzacn;

    @Deprecated
    public static RuntimeException zza(Throwable th) {
        zzkv.checkNotNull(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
        throw new RuntimeException(th);
    }

    @NullableDecl
    private static Object zzhz() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    @NullableDecl
    private static Method zzia() {
        try {
            Method zza = zza("getStackTraceDepth", Throwable.class);
            if (zza == null) {
                return null;
            }
            zza.invoke(zzhz(), new Throwable());
            return zza;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    @NullableDecl
    private static Method zza(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    static {
        Object zzhz = zzhz();
        zzacl = zzhz;
        zzacm = zzhz == null ? null : zza("getStackTraceElement", Throwable.class, Integer.TYPE);
        zzacn = zzhz != null ? zzia() : null;
    }
}

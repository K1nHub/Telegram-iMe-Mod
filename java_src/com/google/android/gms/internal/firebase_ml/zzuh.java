package com.google.android.gms.internal.firebase_ml;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzuh {
    private static final Class<?> zzbpk = zzqp();

    private static Class<?> zzqp() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static zzuj zzqq() {
        Class<?> cls = zzbpk;
        if (cls != null) {
            try {
                return (zzuj) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
            }
        }
        return zzuj.zzbpo;
    }
}

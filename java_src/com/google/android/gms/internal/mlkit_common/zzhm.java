package com.google.android.gms.internal.mlkit_common;

import java.util.concurrent.ConcurrentMap;
import p033j$.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public final class zzhm {
    private static final zzhm zza = new zzhm();
    private final ConcurrentMap<Class<?>, zzhr<?>> zzc = new ConcurrentHashMap();
    private final zzhq zzb = new zzgo();

    public static zzhm zza() {
        return zza;
    }

    public final <T> zzhr<T> zza(Class<T> cls) {
        zzfs.zza(cls, "messageType");
        zzhr<T> zzhrVar = (zzhr<T>) this.zzc.get(cls);
        if (zzhrVar == null) {
            zzhr<T> zza2 = this.zzb.zza(cls);
            zzfs.zza(cls, "messageType");
            zzfs.zza(zza2, "schema");
            zzhr<T> zzhrVar2 = (zzhr<T>) this.zzc.putIfAbsent(cls, zza2);
            return zzhrVar2 != null ? zzhrVar2 : zza2;
        }
        return zzhrVar;
    }

    public final <T> zzhr<T> zza(T t) {
        return zza((Class) t.getClass());
    }

    private zzhm() {
    }
}

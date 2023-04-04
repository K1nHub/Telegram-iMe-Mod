package com.google.android.gms.internal.firebase_ml;

import java.util.concurrent.ConcurrentMap;
import p035j$.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzwt {
    private static final zzwt zzbvz = new zzwt();
    private final ConcurrentMap<Class<?>, zzwu<?>> zzbwb = new ConcurrentHashMap();
    private final zzwx zzbwa = new zzvv();

    public static zzwt zzsw() {
        return zzbvz;
    }

    public final <T> zzwu<T> zzk(Class<T> cls) {
        zzuw.zza(cls, "messageType");
        zzwu<T> zzwuVar = (zzwu<T>) this.zzbwb.get(cls);
        if (zzwuVar == null) {
            zzwu<T> zzj = this.zzbwa.zzj(cls);
            zzuw.zza(cls, "messageType");
            zzuw.zza(zzj, "schema");
            zzwu<T> zzwuVar2 = (zzwu<T>) this.zzbwb.putIfAbsent(cls, zzj);
            return zzwuVar2 != null ? zzwuVar2 : zzj;
        }
        return zzwuVar;
    }

    public final <T> zzwu<T> zzad(T t) {
        return zzk(t.getClass());
    }

    private zzwt() {
    }
}

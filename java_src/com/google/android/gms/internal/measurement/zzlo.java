package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentMap;
import p035j$.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzlo {
    private static final zzlo zza = new zzlo();
    private final ConcurrentMap<Class<?>, zzlr<?>> zzc = new ConcurrentHashMap();
    private final zzls zzb = new zzky();

    private zzlo() {
    }

    public static zzlo zza() {
        return zza;
    }

    public final <T> zzlr<T> zzb(Class<T> cls) {
        zzkh.zzf(cls, "messageType");
        zzlr<T> zzlrVar = (zzlr<T>) this.zzc.get(cls);
        if (zzlrVar == null) {
            zzlrVar = this.zzb.zza(cls);
            zzkh.zzf(cls, "messageType");
            zzkh.zzf(zzlrVar, "schema");
            zzlr putIfAbsent = this.zzc.putIfAbsent(cls, zzlrVar);
            if (putIfAbsent != null) {
                return putIfAbsent;
            }
        }
        return zzlrVar;
    }
}

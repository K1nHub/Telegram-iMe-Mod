package com.google.android.play.core.internal;

import java.util.Objects;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzcq<T> implements zzcs, zzco {
    private static final Object zza = new Object();
    private volatile zzcs<T> zzb;
    private volatile Object zzc = zza;

    private zzcq(zzcs<T> zzcsVar) {
        this.zzb = zzcsVar;
    }

    public static <P extends zzcs<T>, T> zzco<T> zzb(P p) {
        if (p instanceof zzco) {
            return (zzco) p;
        }
        Objects.requireNonNull(p);
        return new zzcq(p);
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final T zza() {
        T t = (T) this.zzc;
        Object obj = zza;
        if (t == obj) {
            synchronized (this) {
                t = this.zzc;
                if (t == obj) {
                    t = this.zzb.zza();
                    Object obj2 = this.zzc;
                    if (obj2 != obj && obj2 != t) {
                        String valueOf = String.valueOf(obj2);
                        String valueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 118 + valueOf2.length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.zzc = t;
                    this.zzb = null;
                }
            }
        }
        return t;
    }

    public static <P extends zzcs<T>, T> zzcs<T> zzc(P p) {
        Objects.requireNonNull(p);
        return p instanceof zzcq ? p : new zzcq(p);
    }
}

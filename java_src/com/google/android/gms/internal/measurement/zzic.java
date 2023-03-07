package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
final class zzic<T> implements Serializable, zzib {
    final zzib<T> zza;
    volatile transient boolean zzb;
    transient T zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzic(zzib<T> zzibVar) {
        Objects.requireNonNull(zzibVar);
        this.zza = zzibVar;
    }

    public final String toString() {
        Object obj;
        if (this.zzb) {
            String valueOf = String.valueOf(this.zzc);
            StringBuilder sb = new StringBuilder(valueOf.length() + 25);
            sb.append("<supplier that returned ");
            sb.append(valueOf);
            sb.append(">");
            obj = sb.toString();
        } else {
            obj = this.zza;
        }
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final T zza() {
        if (!this.zzb) {
            synchronized (this) {
                if (!this.zzb) {
                    T zza = this.zza.zza();
                    this.zzc = zza;
                    this.zzb = true;
                    return zza;
                }
            }
        }
        return this.zzc;
    }
}

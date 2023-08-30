package com.google.android.gms.internal.firebase_ml;

import java.util.Objects;
/* loaded from: classes.dex */
public final class zznw<T> {
    private final String zzatr;
    private final T zzats;

    public static <T> zznw<T> zzj(String str, T t) {
        return new zznw<>(str, t);
    }

    private zznw(String str, T t) {
        Objects.requireNonNull(str, "Null firebasePersistentKey");
        this.zzatr = str;
        Objects.requireNonNull(t, "Null options");
        this.zzats = t;
    }

    public final String toString() {
        String str = this.zzatr;
        String valueOf = String.valueOf(this.zzats);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 58 + valueOf.length());
        sb.append("MlModelDriverInstanceKey{firebasePersistentKey=");
        sb.append(str);
        sb.append(", options=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zznw) {
            zznw zznwVar = (zznw) obj;
            if (this.zzatr.equals(zznwVar.zzatr) && this.zzats.equals(zznwVar.zzats)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.Objects.hashCode(this.zzatr, this.zzats);
    }
}

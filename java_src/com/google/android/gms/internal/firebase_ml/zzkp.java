package com.google.android.gms.internal.firebase_ml;

import java.io.Serializable;
/* loaded from: classes.dex */
public abstract class zzkp<T> implements Serializable {
    public static <T> zzkp<T> zzhy() {
        return zzkc.zzaan;
    }

    public abstract T get();

    public abstract boolean isPresent();

    public static <T> zzkp<T> zzj(T t) {
        return new zzku(zzkv.checkNotNull(t));
    }
}

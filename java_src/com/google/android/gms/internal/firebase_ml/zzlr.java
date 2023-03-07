package com.google.android.gms.internal.firebase_ml;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzlr extends WeakReference<Throwable> {
    private final int zzada;

    public zzlr(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.zzada = System.identityHashCode(th);
    }

    public final int hashCode() {
        return this.zzada;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzlr.class) {
            if (this == obj) {
                return true;
            }
            zzlr zzlrVar = (zzlr) obj;
            if (this.zzada == zzlrVar.zzada && get() == zzlrVar.get()) {
                return true;
            }
        }
        return false;
    }
}

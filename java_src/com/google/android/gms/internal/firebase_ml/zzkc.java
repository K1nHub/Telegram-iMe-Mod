package com.google.android.gms.internal.firebase_ml;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
final class zzkc<T> extends zzkp<T> {
    static final zzkc<Object> zzaan = new zzkc<>();

    private zzkc() {
    }

    public final boolean equals(@NullableDecl Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzkp
    public final boolean isPresent() {
        return false;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzkp
    public final T get() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }
}

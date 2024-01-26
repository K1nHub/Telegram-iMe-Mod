package com.google.android.gms.internal.firebase_ml;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
final class zzku<T> extends zzkp<T> {
    private final T zzabb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzku(T t) {
        this.zzabb = t;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzkp
    public final boolean isPresent() {
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzkp
    public final T get() {
        return this.zzabb;
    }

    public final boolean equals(@NullableDecl Object obj) {
        if (obj instanceof zzku) {
            return this.zzabb.equals(((zzku) obj).zzabb);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzabb.hashCode() + 1502476572;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzabb);
        StringBuilder sb = new StringBuilder(valueOf.length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}

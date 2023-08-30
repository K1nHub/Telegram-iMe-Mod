package com.google.android.gms.internal.firebase_ml;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* loaded from: classes.dex */
abstract class zzkb<T> implements Iterator<T>, p033j$.util.Iterator {
    private int zzaal = zzkd.zzaap;
    @NullableDecl
    private T zzaam;

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    protected abstract T zzhv();

    /* JADX INFO: Access modifiers changed from: protected */
    @NullableDecl
    public final T zzhw() {
        this.zzaal = zzkd.zzaaq;
        return null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        int i = this.zzaal;
        int i2 = zzkd.zzaar;
        zzkv.checkState(i != i2);
        int i3 = zzke.zzaat[this.zzaal - 1];
        if (i3 != 1) {
            if (i3 != 2) {
                this.zzaal = i2;
                this.zzaam = zzhv();
                if (this.zzaal != zzkd.zzaaq) {
                    this.zzaal = zzkd.zzaao;
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.zzaal = zzkd.zzaap;
        T t = this.zzaam;
        this.zzaam = null;
        return t;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Iterator;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* loaded from: classes3.dex */
abstract class TransformedIterator<F, T> implements Iterator<T>, p034j$.util.Iterator {
    final Iterator<? extends F> backingIterator;

    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    abstract T transform(F f);

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransformedIterator(java.util.Iterator<? extends F> it) {
        this.backingIterator = (java.util.Iterator) Preconditions.checkNotNull(it);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final boolean hasNext() {
        return this.backingIterator.hasNext();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final T next() {
        return transform(this.backingIterator.next());
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final void remove() {
        this.backingIterator.remove();
    }
}

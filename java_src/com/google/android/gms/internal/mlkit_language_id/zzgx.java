package com.google.android.gms.internal.mlkit_language_id;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: com.google.mlkit:language-id@@16.1.1 */
/* loaded from: classes3.dex */
final class zzgx implements Iterator<Object>, p033j$.util.Iterator {
    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

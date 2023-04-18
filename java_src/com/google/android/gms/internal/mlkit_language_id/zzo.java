package com.google.android.gms.internal.mlkit_language_id;

import java.util.Iterator;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* compiled from: com.google.mlkit:language-id@@16.1.1 */
/* loaded from: classes.dex */
public abstract class zzo<E> implements Iterator<E>, p034j$.util.Iterator {
    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

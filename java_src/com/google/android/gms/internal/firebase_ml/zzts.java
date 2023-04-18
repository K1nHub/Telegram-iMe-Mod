package com.google.android.gms.internal.firebase_ml;

import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* loaded from: classes.dex */
abstract class zzts implements zztw, Iterator {
    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* synthetic */ Object next() {
        return Byte.valueOf(nextByte());
    }
}

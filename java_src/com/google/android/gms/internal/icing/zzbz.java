package com.google.android.gms.internal.icing;

import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
abstract class zzbz implements zzcb, Iterator {
    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Byte.valueOf(zza());
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

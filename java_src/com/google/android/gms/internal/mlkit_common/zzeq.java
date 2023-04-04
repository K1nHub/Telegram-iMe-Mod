package com.google.android.gms.internal.mlkit_common;

import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public abstract class zzeq implements zzeu, Iterator {
    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public /* synthetic */ Object next() {
        return Byte.valueOf(zza());
    }
}

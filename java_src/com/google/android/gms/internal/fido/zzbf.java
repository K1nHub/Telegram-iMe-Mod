package com.google.android.gms.internal.fido;

import java.util.Iterator;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
/* loaded from: classes.dex */
public abstract class zzbf implements Iterator, p035j$.util.Iterator {
    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

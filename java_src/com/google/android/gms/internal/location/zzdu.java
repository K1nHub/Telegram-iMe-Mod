package com.google.android.gms.internal.location;

import java.util.Iterator;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: com.google.android.gms:play-services-location@@21.0.1 */
/* loaded from: classes.dex */
public abstract class zzdu implements Iterator, p033j$.util.Iterator {
    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

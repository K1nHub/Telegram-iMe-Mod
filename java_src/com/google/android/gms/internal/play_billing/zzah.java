package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* compiled from: com.android.billingclient:billing@@5.1.0 */
/* loaded from: classes.dex */
public abstract class zzah implements Iterator, p034j$.util.Iterator {
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

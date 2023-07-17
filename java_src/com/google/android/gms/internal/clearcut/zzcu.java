package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.Map;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* loaded from: classes.dex */
final class zzcu<K> implements Iterator<Map.Entry<K, Object>>, p033j$.util.Iterator {
    private Iterator<Map.Entry<K, Object>> zzlm;

    public zzcu(Iterator<Map.Entry<K, Object>> it) {
        this.zzlm = it;
    }

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        return this.zzlm.hasNext();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzlm.next();
        return next.getValue() instanceof zzcr ? new zzct(next) : next;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        this.zzlm.remove();
    }
}

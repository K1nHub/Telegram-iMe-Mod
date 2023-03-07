package com.google.android.gms.internal.firebase_ml;

import java.util.Iterator;
import java.util.Map;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzvk<K> implements Iterator<Map.Entry<K, Object>>, p034j$.util.Iterator {
    private Iterator<Map.Entry<K, Object>> zzbue;

    public zzvk(Iterator<Map.Entry<K, Object>> it) {
        this.zzbue = it;
    }

    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final boolean hasNext() {
        return this.zzbue.hasNext();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final void remove() {
        this.zzbue.remove();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzbue.next();
        return next.getValue() instanceof zzvj ? new zzvl(next) : next;
    }
}

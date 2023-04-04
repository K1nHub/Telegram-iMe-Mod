package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import java.util.Map;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public final class zzgh<K> implements Iterator<Map.Entry<K, Object>>, p035j$.util.Iterator {
    private Iterator<Map.Entry<K, Object>> zza;

    public zzgh(Iterator<Map.Entry<K, Object>> it) {
        this.zza = it;
    }

    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final void remove() {
        this.zza.remove();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zza.next();
        return next.getValue() instanceof zzgc ? new zzge(next) : next;
    }
}

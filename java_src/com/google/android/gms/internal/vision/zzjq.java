package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* loaded from: classes3.dex */
final class zzjq<K> implements Iterator<Map.Entry<K, Object>>, p034j$.util.Iterator {
    private Iterator<Map.Entry<K, Object>> zza;

    public zzjq(Iterator<Map.Entry<K, Object>> it) {
        this.zza = it;
    }

    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final void remove() {
        this.zza.remove();
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zza.next();
        return next.getValue() instanceof zzjp ? new zzjr(next) : next;
    }
}

package com.google.android.gms.internal.mlkit_language_id;

import java.util.Iterator;
import java.util.Map;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:language-id@@16.1.1 */
/* loaded from: classes3.dex */
public final class zzff<K> implements Iterator<Map.Entry<K, Object>>, p033j$.util.Iterator {
    private Iterator<Map.Entry<K, Object>> zza;

    public zzff(Iterator<Map.Entry<K, Object>> it) {
        this.zza = it;
    }

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        this.zza.remove();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zza.next();
        return next.getValue() instanceof zzfa ? new zzfc(next) : next;
    }
}

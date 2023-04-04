package com.google.android.gms.internal.firebase_ml;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* loaded from: classes.dex */
final class zzxb implements Iterator<Map.Entry<K, V>>, p035j$.util.Iterator {
    private int pos;
    private final /* synthetic */ zzwz zzbwm;
    private Iterator<Map.Entry<K, V>> zzbwn;

    private zzxb(zzwz zzwzVar) {
        List list;
        this.zzbwm = zzwzVar;
        list = zzwzVar.zzbwh;
        this.pos = list.size();
    }

    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.pos;
        if (i > 0) {
            list = this.zzbwm.zzbwh;
            if (i <= list.size()) {
                return true;
            }
        }
        return zztj().hasNext();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    private final java.util.Iterator<Map.Entry<K, V>> zztj() {
        Map map;
        if (this.zzbwn == null) {
            map = this.zzbwm.zzbwk;
            this.zzbwn = map.entrySet().iterator();
        }
        return this.zzbwn;
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (zztj().hasNext()) {
            return (Map.Entry) zztj().next();
        }
        list = this.zzbwm.zzbwh;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzxb(zzwz zzwzVar, zzwy zzwyVar) {
        this(zzwzVar);
    }
}

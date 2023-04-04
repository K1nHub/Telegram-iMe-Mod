package com.google.android.gms.internal.firebase_ml;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* loaded from: classes.dex */
final class zzxh implements Iterator<Map.Entry<K, V>>, p035j$.util.Iterator {
    private int pos;
    private final /* synthetic */ zzwz zzbwm;
    private Iterator<Map.Entry<K, V>> zzbwn;
    private boolean zzbwr;

    private zzxh(zzwz zzwzVar) {
        this.zzbwm = zzwzVar;
        this.pos = -1;
    }

    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.pos + 1;
        list = this.zzbwm.zzbwh;
        if (i >= list.size()) {
            map = this.zzbwm.zzbwi;
            if (map.isEmpty() || !zztj().hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final void remove() {
        List list;
        if (!this.zzbwr) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzbwr = false;
        this.zzbwm.zzth();
        int i = this.pos;
        list = this.zzbwm.zzbwh;
        if (i < list.size()) {
            zzwz zzwzVar = this.zzbwm;
            int i2 = this.pos;
            this.pos = i2 - 1;
            zzwzVar.zzdr(i2);
            return;
        }
        zztj().remove();
    }

    private final java.util.Iterator<Map.Entry<K, V>> zztj() {
        Map map;
        if (this.zzbwn == null) {
            map = this.zzbwm.zzbwi;
            this.zzbwn = map.entrySet().iterator();
        }
        return this.zzbwn;
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.zzbwr = true;
        int i = this.pos + 1;
        this.pos = i;
        list = this.zzbwm.zzbwh;
        if (i >= list.size()) {
            return (Map.Entry) zztj().next();
        }
        list2 = this.zzbwm.zzbwh;
        return (Map.Entry) list2.get(this.pos);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzxh(zzwz zzwzVar, zzwy zzwyVar) {
        this(zzwzVar);
    }
}
